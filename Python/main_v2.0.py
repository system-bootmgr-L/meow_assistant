import tkinter as tk
from tkinter import ttk, scrolledtext, messagebox
import random
import re
import ctypes
import json
import os
from pathlib import Path
import queue
import sys
import threading
import time


APP_USER_MODEL_ID = "MiaoMiao.Desktop.Assistant"
HOTKEY_DEFAULTS_VERSION = 2


def configure_windows_app_id():
    """须在创建 Tk 窗口前调用，避免任务栏按 Python 宿主归组。"""
    if sys.platform != "win32":
        return
    try:
        set_app_id = ctypes.WinDLL("shell32").SetCurrentProcessExplicitAppUserModelID
        set_app_id.argtypes = [ctypes.c_wchar_p]
        set_app_id.restype = ctypes.c_long
        result = set_app_id(APP_USER_MODEL_ID)
        if result < 0:
            raise OSError("HRESULT=0x{:08X}".format(result & 0xFFFFFFFF))
    except OSError as error:
        print("无法设置 Windows 任务栏应用标识：{}".format(error))


def application_icon_path():
    """不依赖启动时的工作目录；优先使用 exe 旁的外置图标。"""
    script_dir = Path(__file__).resolve().parent
    if getattr(sys, "frozen", False):
        candidates = [Path(sys.executable).resolve().parent / "icon.ico",
                      Path(getattr(sys, "_MEIPASS", script_dir)) / "icon.ico"]
    else:
        candidates = [script_dir / "icon.ico"]
    return next((path for path in candidates if path.is_file()), candidates[0])


def configure_window_icon(root):
    if sys.platform != "win32":
        return
    icon_path = application_icon_path()
    try:
        # 分别设置当前主窗口，以及后续对话框默认使用的图标。
        root.iconbitmap(str(icon_path))
        root.iconbitmap(default=str(icon_path))
    except tk.TclError as error:
        print("无法加载图标 {}：{}".format(icon_path, error))


def parse_hotkey(value, platform=None):
    """统一热键写法；支持修饰键加字母、数字或 F1～F11。"""
    platform = platform or sys.platform
    aliases = {"control": "Ctrl", "ctrl": "Ctrl", "alt": "Alt",
               "option": "Alt", "shift": "Shift", "cmd": "Cmd",
               "command": "Cmd", "win": "Win", "windows": "Win"}
    parts = [part.strip().lower() for part in value.split("+")]
    if len(parts) < 2 or not all(parts):
        raise ValueError("请输入修饰键加字母、数字或 F1～F11，例如 Alt+C。")
    modifiers = [aliases.get(part) for part in parts[:-1]]
    if None in modifiers or len(set(modifiers)) != len(modifiers):
        raise ValueError("修饰键无效或重复，可使用 Ctrl、Alt、Shift、Win/Command。")
    if platform == "darwin" and "Win" in modifiers:
        raise ValueError("macOS 请使用 Command，不能使用 Win。")
    if platform != "darwin" and "Cmd" in modifiers:
        raise ValueError("Windows 请使用 Win，不能使用 Command。")
    if not set(modifiers) - {"Shift"}:
        raise ValueError("请至少包含 Ctrl、Alt、Win 或 Command 中的一个。")
    key = parts[-1].upper()
    if not re.fullmatch(r"[A-Z0-9]|F(?:[1-9]|10|11)", key):
        raise ValueError("主键仅支持字母、数字或 F1～F11。")
    order = ("Ctrl", "Alt", "Shift", "Win", "Cmd")
    modifiers = tuple(modifier for modifier in order if modifier in modifiers)
    # 避免模拟粘贴的按键再次触发本程序。
    paste_modifier = "Cmd" if platform == "darwin" else "Ctrl"
    if modifiers == (paste_modifier,) and key == "V":
        raise ValueError("请勿将系统粘贴快捷键设为本程序热键。")
    return "+".join((*modifiers, key)), modifiers, key


class WindowsHotkey:
    """在独立线程注册系统热键；所有 Tk 操作仍由主线程处理。"""
    def __init__(self, events):
        from ctypes import wintypes
        self.wintypes = wintypes
        self.events = events
        self.commands = queue.Queue()
        self.stopped = threading.Event()
        self.api = ctypes.WinDLL("user32", use_last_error=True)
        self.api.RegisterHotKey.argtypes = [wintypes.HWND, ctypes.c_int,
                                            wintypes.UINT, wintypes.UINT]
        self.api.RegisterHotKey.restype = wintypes.BOOL
        self.api.UnregisterHotKey.argtypes = [wintypes.HWND, ctypes.c_int]
        self.api.PeekMessageW.argtypes = [ctypes.POINTER(wintypes.MSG),
                                          wintypes.HWND, wintypes.UINT,
                                          wintypes.UINT, wintypes.UINT]
        self.api.GetForegroundWindow.restype = wintypes.HWND
        self.api.GetWindowThreadProcessId.argtypes = [
            wintypes.HWND, ctypes.POINTER(wintypes.DWORD)]
        self.api.GetAsyncKeyState.argtypes = [ctypes.c_int]
        self.api.GetAsyncKeyState.restype = ctypes.c_short
        self.thread = threading.Thread(target=self._run, daemon=True)
        self.thread.start()

    def set_hotkey(self, value):
        reply = queue.Queue(maxsize=1)
        self.commands.put((parse_hotkey(value, "win32"), reply))
        try:
            error = reply.get(timeout=2)
        except queue.Empty:
            raise RuntimeError("热键服务没有响应，请重新启动程序。")
        if error:
            raise ValueError(error)

    def _run(self):
        current_id, current = 0, None
        message = self.wintypes.MSG()
        try:
            while not self.stopped.is_set():
                try:
                    parsed, reply = self.commands.get(timeout=0.01)
                except queue.Empty:
                    parsed = None
                if parsed is not None:
                    name, modifiers, key = parsed
                    if name == current:
                        reply.put(None)
                    else:
                        flags = sum({"Alt": 1, "Ctrl": 2, "Shift": 4,
                                     "Win": 8}[item] for item in modifiers)
                        vk = 0x70 + int(key[1:]) - 1 if key.startswith("F") and len(key) > 1 else ord(key)
                        new_id = 2 if current_id == 1 else 1
                        if self.api.RegisterHotKey(None, new_id, flags | 0x4000, vk):
                            if current_id:
                                self.api.UnregisterHotKey(None, current_id)
                            current_id, current = new_id, name
                            reply.put(None)
                        else:
                            reply.put("热键注册失败，可能已被其他程序占用，请换一个组合。")
                while self.api.PeekMessageW(ctypes.byref(message), None,
                                            0x0312, 0x0312, 1):
                    if message.wParam == current_id:
                        self.events.put((current, self.target()))
        finally:
            if current_id:
                self.api.UnregisterHotKey(None, current_id)

    def target(self):
        return self.api.GetForegroundWindow()

    def own_target(self, target):
        pid = self.wintypes.DWORD()
        self.api.GetWindowThreadProcessId(target, ctypes.byref(pid))
        return pid.value == os.getpid()

    def keys_released(self):
        # 等待所有修饰键和主键松开；避免长按热键时重复粘贴。
        keys = [0x10, 0x11, 0x12, 0x5B, 0x5C]
        keys += list(range(0x30, 0x5B)) + list(range(0x70, 0x7B))
        return not any(self.api.GetAsyncKeyState(key) & 0x8000 for key in keys)

    def paste(self):
        from ctypes import wintypes
        class KeyboardInput(ctypes.Structure):
            _fields_ = [("vk", wintypes.WORD), ("scan", wintypes.WORD),
                        ("flags", wintypes.DWORD), ("time", wintypes.DWORD),
                        ("extra", ctypes.c_size_t)]
        class MouseInput(ctypes.Structure):
            _fields_ = [("dx", wintypes.LONG), ("dy", wintypes.LONG),
                        ("data", wintypes.DWORD), ("flags", wintypes.DWORD),
                        ("time", wintypes.DWORD), ("extra", ctypes.c_size_t)]
        class InputData(ctypes.Union):
            _fields_ = [("keyboard", KeyboardInput), ("mouse", MouseInput)]
        class Input(ctypes.Structure):
            _fields_ = [("type", wintypes.DWORD), ("data", InputData)]
        inputs = (Input * 4)()
        for item, (vk, flags) in zip(inputs, ((0x11, 0), (0x56, 0),
                                             (0x56, 2), (0x11, 2))):
            item.type = 1
            item.data.keyboard = KeyboardInput(vk, 0, flags, 0, 0)
        self.api.SendInput.argtypes = [wintypes.UINT, ctypes.POINTER(Input), ctypes.c_int]
        self.api.SendInput.restype = wintypes.UINT
        if self.api.SendInput(4, inputs, ctypes.sizeof(Input)) != 4:
            # 即使部分按键注入成功，也要尝试释放，防止 Ctrl 卡住。
            release = (Input * 2)(inputs[2], inputs[3])
            self.api.SendInput(2, release, ctypes.sizeof(Input))
            raise RuntimeError("自动粘贴未完成，请检查目标程序权限，或手动粘贴。")

    def close(self):
        self.stopped.set()
        self.thread.join(timeout=0.5)


class MacHotkey:
    """macOS 使用 pynput 监听，并用 Command+V 粘贴。"""
    def __init__(self, events):
        try:
            from pynput import keyboard
            import Quartz
            from AppKit import NSWorkspace
            from HIServices import AXIsProcessTrusted
        except ImportError:
            raise RuntimeError("macOS 热键需要 pynput，请先运行：python3 -m pip install pynput")
        self.keyboard, self.quartz, self.workspace = keyboard, Quartz, NSWorkspace
        if not AXIsProcessTrusted():
            raise RuntimeError("请在系统设置→隐私与安全性→辅助功能中允许 Python 或启动程序的终端，然后重新启动本程序。")
        self.events = events
        self.lock = threading.RLock()
        self.current, self.hotkey = None, None
        self.activated = False
        self.suppressed_key = None
        self.listener = keyboard.Listener(on_press=self._press, on_release=self._release,
                                          darwin_intercept=self._intercept)
        self.listener.start()
        self.listener.wait()
        if not self.listener.is_alive():
            raise RuntimeError("无法监听键盘，请检查辅助功能与输入监控权限后重新启动程序。")
        self.controller = keyboard.Controller()

    def set_hotkey(self, value):
        name, modifiers, key = parse_hotkey(value, "darwin")
        mapping = {"Ctrl": "<ctrl>", "Alt": "<alt>",
                   "Shift": "<shift>", "Cmd": "<cmd>"}
        main_key = "<{}>".format(key.lower()) if len(key) > 1 else key.lower()
        keys = self.keyboard.HotKey.parse("+".join(
            [mapping[item] for item in modifiers] + [main_key]))
        with self.lock:
            self.hotkey = self.keyboard.HotKey(keys, self._activate)
            self.current = name

    def _activate(self):
        self.activated = True
        self.events.put((self.current, self.target()))

    def _press(self, key):
        with self.lock:
            if self.hotkey is not None:
                self.hotkey.press(self.listener.canonical(key))

    def _release(self, key):
        with self.lock:
            if self.hotkey is not None:
                self.hotkey.release(self.listener.canonical(key))

    def _intercept(self, event_type, event):
        # 拦截热键本身，避免 Control+C 继续传给目标应用。
        q = self.quartz
        code = q.CGEventGetIntegerValueField(event, q.kCGKeyboardEventKeycode)
        with self.lock:
            if self.activated:
                self.activated = False
                if event_type == q.kCGEventKeyDown:
                    self.suppressed_key = code
            if self.suppressed_key == code and event_type in (q.kCGEventKeyDown, q.kCGEventKeyUp):
                if event_type == q.kCGEventKeyUp:
                    self.suppressed_key = None
                return None
        return event

    def target(self):
        app = self.workspace.sharedWorkspace().frontmostApplication()
        return app.processIdentifier() if app else None

    def own_target(self, target):
        return target == os.getpid()

    def keys_released(self):
        q = self.quartz
        mask = (q.kCGEventFlagMaskControl | q.kCGEventFlagMaskAlternate |
                q.kCGEventFlagMaskShift | q.kCGEventFlagMaskCommand)
        with self.lock:
            key = self.suppressed_key
        return not (q.CGEventSourceFlagsState(q.kCGEventSourceStateCombinedSessionState) & mask
                    or key is not None)

    def paste(self):
        # macOS 的粘贴组合是 Command+V，而触发组合默认是 Control+C。
        with self.controller.pressed(self.keyboard.Key.cmd):
            self.controller.press("v")
            self.controller.release("v")

    def close(self):
        self.listener.stop()
        self.listener.join(timeout=0.5)

class MiaoMiaoApp:
    def __init__(self, root):
        self.root = root
        self.root.title("喵喵助手非官方版")
        self.root.geometry("900x650")
        
        configure_window_icon(self.root)

        # 变量绑定
        self.topmost_var = tk.BooleanVar(value=False)
        self.use_tail_var = tk.BooleanVar(value=True)  # 小尾巴开关
        self.use_emoji_var = tk.BooleanVar(value=True) # 颜文字开关
        self.lock_input_var = tk.BooleanVar(value=False)
        self._updating_output = False
        self.default_hotkey = "Ctrl+V" if sys.platform == "darwin" else "Alt+V"
        self.settings_path = self.get_settings_path()
        self.hotkey_var = tk.StringVar(value=self.load_hotkey())
        self.hotkey_events = queue.Queue()
        self.hotkey_backend = None
        self.current_hotkey = None
        self._paste_pending = False
        self._closed = False
        self._poll_id = None
        self._paste_id = None
        self._status_id = None

        # 默认配置文本
        self.default_spells = """我=咱
我=本喵-我们
你=主人
您=主人
了=惹
人=两脚兽
好的=好哒
是的=是哒"""

        self.default_tails = """喵
喵～"""

        self.default_emojis = """(=^･ω･^=)
ฅ^•ﻌ•^ฅ"""

        self.setup_ui()
        self.bind_auto_conversion()
        self.root.protocol("WM_DELETE_WINDOW", self.close)
        self.apply_hotkey(save=False)
        self._poll_id = self.root.after(30, self.poll_hotkey)

    def setup_ui(self):
        # 1. 顶部置顶区域
        top_frame = tk.Frame(self.root)
        top_frame.pack(fill=tk.X, padx=10, pady=5)
        tk.Checkbutton(top_frame, text="窗口置顶", variable=self.topmost_var, 
                       command=self.toggle_topmost).pack(side=tk.LEFT)
        tk.Label(top_frame, text="复制并粘贴热键：").pack(side=tk.LEFT, padx=(15, 0))
        self.hotkey_entry = tk.Entry(top_frame, textvariable=self.hotkey_var, width=20)
        self.hotkey_entry.pack(side=tk.LEFT, padx=5)
        tk.Button(top_frame, text="应用热键", command=self.apply_hotkey).pack(side=tk.LEFT, padx=5)
        tk.Button(top_frame, text="恢复默认", command=self.reset_hotkey).pack(side=tk.LEFT, padx=5)
        self.hotkey_status_label = tk.Label(self.root, text="", fg="gray", anchor=tk.W,
                                           justify=tk.LEFT, wraplength=840)
        self.hotkey_status_label.pack(fill=tk.X, padx=15)

        # 2. 输入输出区域 (使用Grid布局设置6:4比例)
        io_frame = tk.Frame(self.root)
        io_frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)
        
        # 设置列权重，输入占6，输出占4
        io_frame.columnconfigure(0, weight=6)
        io_frame.columnconfigure(1, weight=4)
        io_frame.rowconfigure(0, weight=1)
        
        # 输入框
        input_frame = tk.LabelFrame(io_frame, text="输入内容")
        input_frame.grid(row=0, column=0, sticky="nsew", padx=(0, 5))
        self.input_text = scrolledtext.ScrolledText(input_frame, wrap=tk.WORD, font=("微软雅黑", 10), height=10)
        self.input_text.pack(fill=tk.BOTH, expand=True)

        # 输出框（可编辑）
        output_frame = tk.LabelFrame(io_frame, text="输出内容（可手动编辑）")
        output_frame.grid(row=0, column=1, sticky="nsew", padx=(5, 0))
        self.output_text = scrolledtext.ScrolledText(output_frame, wrap=tk.WORD, font=("微软雅黑", 10), height=10)
        self.output_text.pack(fill=tk.BOTH, expand=True)

        # 3. 操作按钮
        btn_frame = tk.Frame(self.root)
        btn_frame.pack(fill=tk.X, padx=10, pady=5)
        tk.Checkbutton(btn_frame, text="锁定输入框", variable=self.lock_input_var,
                       command=self.toggle_input_lock).pack(side=tk.LEFT, padx=5)
        tk.Button(btn_frame, text="复制结果", command=self.copy_output, 
                  font=("微软雅黑", 10), width=15).pack(side=tk.LEFT, padx=5)
        
        # 新增：复制成功的状态提示文字（在复制按钮右侧）
        self.copy_status_label = tk.Label(btn_frame, text="", fg="green", font=("微软雅黑", 10))
        self.copy_status_label.pack(side=tk.LEFT, padx=10)

        # 4. 设置面板（固定在底部，不抢占上方空间）
        settings_notebook = ttk.Notebook(self.root)
        settings_notebook.pack(fill=tk.X, side=tk.BOTTOM, padx=10, pady=5)

        # 选项卡1：自定义变身咒语
        tab1 = tk.Frame(settings_notebook)
        settings_notebook.add(tab1, text="自定义变身咒语")
        tk.Label(tab1, text="规则：原文=喵语 (一行一条，多个替换词用 '-' 隔开，如：我=本喵-我们)", fg="gray").pack(anchor=tk.W, padx=5)
        self.spells_text = scrolledtext.ScrolledText(tab1, height=5, font=("微软雅黑", 9))
        self.spells_text.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.spells_text.insert(tk.END, self.default_spells)

        # 选项卡2：句尾小尾巴
        tab2 = tk.Frame(settings_notebook)
        settings_notebook.add(tab2, text="句尾小尾巴")
        tk.Checkbutton(tab2, text="启用句尾小尾巴", variable=self.use_tail_var,
                       command=self.convert_text).pack(anchor=tk.W, padx=5, pady=2)
        tk.Label(tab2, text="尾巴仓库（一行一个，留空则不挂尾巴）", fg="gray").pack(anchor=tk.W, padx=5)
        self.tails_text = scrolledtext.ScrolledText(tab2, height=4, font=("微软雅黑", 9))
        self.tails_text.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.tails_text.insert(tk.END, self.default_tails)

        # 选项卡3：自定义猫猫表情
        tab3 = tk.Frame(settings_notebook)
        settings_notebook.add(tab3, text="自定义猫猫表情")
        tk.Checkbutton(tab3, text="在话语末尾随机添加上猫猫表情", variable=self.use_emoji_var,
                       command=self.convert_text).pack(anchor=tk.W, padx=5, pady=2)
        tk.Label(tab3, text="表情仓库（一行一个）", fg="gray").pack(anchor=tk.W, padx=5)
        self.emojis_text = scrolledtext.ScrolledText(tab3, height=4, font=("微软雅黑", 9))
        self.emojis_text.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.emojis_text.insert(tk.END, self.default_emojis)

    def get_settings_path(self):
        if sys.platform == "darwin":
            folder = Path.home() / "Library" / "Application Support" / "MiaoMiao"
        else:
            folder = Path(os.environ.get("APPDATA", str(Path.home()))) / "MiaoMiao"
        return folder / "hotkeys.json"

    def load_hotkey(self):
        try:
            data = json.loads(self.settings_path.read_text(encoding="utf-8"))
            name = parse_hotkey(data[sys.platform])[0]
            versions = data.get("_defaults_version", {})
            version = versions.get(sys.platform, 0) if isinstance(versions, dict) else 0
            if not isinstance(version, int):
                version = 0
            # 旧版保存的示例组合会覆盖代码默认值；升级时改用新默认。
            # 在新版中主动设置回旧组合，则会保存版本号，后续不再迁移。
            if version < HOTKEY_DEFAULTS_VERSION and name in {"Alt+C", "Ctrl+C"}:
                return self.default_hotkey
            return name
        except (OSError, ValueError, KeyError, TypeError, AttributeError):
            return self.default_hotkey

    def apply_hotkey(self, save=True):
        try:
            name = parse_hotkey(self.hotkey_var.get())[0]
            if self.hotkey_backend is None:
                if sys.platform == "win32":
                    self.hotkey_backend = WindowsHotkey(self.hotkey_events)
                elif sys.platform == "darwin":
                    self.hotkey_backend = MacHotkey(self.hotkey_events)
                else:
                    raise RuntimeError("全局热键目前支持 Windows 和 macOS。")
            self.hotkey_backend.set_hotkey(name)
        except (ValueError, RuntimeError, OSError) as error:
            suffix = "；原热键 {} 仍然有效".format(self.current_hotkey) if self.current_hotkey else ""
            self.hotkey_status_label.config(text=str(error) + suffix, fg="red")
            return
        self.current_hotkey = name
        self.hotkey_var.set(name)
        self.hotkey_status_label.config(
            text="{}：复制当前输出并粘贴到当前输入框（松开按键后执行）".format(name), fg="green")
        if save:
            try:
                try:
                    data = json.loads(self.settings_path.read_text(encoding="utf-8"))
                    if not isinstance(data, dict):
                        data = {}
                except (OSError, ValueError):
                    data = {}
                data[sys.platform] = name
                versions = data.get("_defaults_version", {})
                if not isinstance(versions, dict):
                    versions = {}
                versions[sys.platform] = HOTKEY_DEFAULTS_VERSION
                data["_defaults_version"] = versions
                self.settings_path.parent.mkdir(parents=True, exist_ok=True)
                temporary = self.settings_path.with_suffix(".tmp")
                temporary.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
                temporary.replace(self.settings_path)
            except OSError:
                self.hotkey_status_label.config(
                    text="{} 已生效，但无法保存设置，下次启动需要重新设置。".format(name), fg="darkorange")

    def reset_hotkey(self):
        self.hotkey_var.set(self.default_hotkey)
        self.apply_hotkey()

    def show_copy_status(self, text, color="green"):
        if self._status_id is not None:
            self.root.after_cancel(self._status_id)
        self.copy_status_label.config(text=text, fg=color)
        self._status_id = self.root.after(3000, self.clear_copy_status)

    def clear_copy_status(self):
        self._status_id = None
        self.copy_status_label.config(text="")

    def poll_hotkey(self):
        self._poll_id = None
        if self._closed:
            return
        try:
            while True:
                name, target = self.hotkey_events.get_nowait()
                if name == self.current_hotkey and not self._paste_pending:
                    self.start_hotkey_paste(target)
        except queue.Empty:
            pass
        self._poll_id = self.root.after(30, self.poll_hotkey)

    def start_hotkey_paste(self, target):
        backend = self.hotkey_backend
        if backend is None or not target:
            return
        if backend.own_target(target):
            self.show_copy_status("请切换到聊天输入框后使用热键", "darkorange")
            return
        # end-1c 仅去除 Tk 自动追加的换行，保留用户自己的空格和换行。
        text = self.output_text.get("1.0", "end-1c")
        if not text.strip():
            self.show_copy_status("输出框为空，没有可粘贴的内容", "darkorange")
            return
        self._paste_pending = True
        self.finish_hotkey_paste(target, text, time.monotonic() + 5)

    def finish_hotkey_paste(self, target, text, deadline):
        self._paste_id = None
        if self._closed:
            return
        backend = self.hotkey_backend
        if backend.target() != target:
            self._paste_pending = False
            self.show_copy_status("当前窗口已切换，本次粘贴已取消", "darkorange")
            return
        if not backend.keys_released():
            if time.monotonic() >= deadline:
                self._paste_pending = False
                self.show_copy_status("按键长时间未松开，本次粘贴已取消", "darkorange")
                return
            self._paste_id = self.root.after(20, self.finish_hotkey_paste, target, text, deadline)
            return
        try:
            self.root.clipboard_clear()
            self.root.clipboard_append(text)
            self.root.update_idletasks()
            # 写入剪贴板后再次确认目标，始终不抢占聊天窗口焦点。
            if backend.target() != target:
                self.show_copy_status("已复制；窗口已切换，取消自动粘贴", "darkorange")
            else:
                backend.paste()
                self.show_copy_status("已复制并执行粘贴")
        except (tk.TclError, OSError, RuntimeError) as error:
            self.show_copy_status("粘贴失败：{}".format(error), "red")
        finally:
            self._paste_pending = False

    def close(self):
        self._closed = True
        for timer in (self._poll_id, self._paste_id, self._status_id):
            if timer is not None:
                self.root.after_cancel(timer)
        if self.hotkey_backend is not None:
            self.hotkey_backend.close()
        self.root.destroy()

    def bind_auto_conversion(self):
        """监听实际内容变更，支持输入、粘贴、删除和输入法提交。"""
        for widget in (self.input_text, self.spells_text,
                       self.tails_text, self.emojis_text):
            widget.edit_modified(False)
            widget.bind("<<Modified>>", self.on_source_modified)
        self.output_text.edit_modified(False)
        self.output_text.bind("<<Modified>>", self.on_output_modified)

    def on_source_modified(self, event):
        widget = event.widget
        if not widget.edit_modified():
            return
        # 清除标记也会触发事件，因此先检查标记，避免重复转换。
        widget.edit_modified(False)
        self.convert_text()

    def on_output_modified(self, event):
        if not self.output_text.edit_modified():
            return
        self.output_text.edit_modified(False)
        if self._updating_output:
            return
        # 手动编辑输出后，保留编辑结果并暂停自动转换。
        self.lock_input_var.set(True)
        self.toggle_input_lock()

    def toggle_input_lock(self):
        locked = self.lock_input_var.get()
        self.input_text.config(state=tk.DISABLED if locked else tk.NORMAL)
        if not locked:
            # 解除锁定时，立即按当前输入和设置恢复自动转换。
            self.convert_text()

    def set_output_text(self, text):
        """更新转换结果，但不把程序更新误判为用户手动编辑。"""
        self._updating_output = True
        try:
            self.output_text.delete("1.0", tk.END)
            self.output_text.insert("1.0", text)
        finally:
            # Tk 的修改事件可能排队延后执行，须同时清除修改标记。
            self.output_text.edit_modified(False)
            self._updating_output = False

    def toggle_topmost(self):
        """切换窗口置顶状态"""
        self.root.attributes('-topmost', self.topmost_var.get())

    def parse_spells(self, text):
        """解析自定义咒语规则"""
        spells = {}
        for line in text.strip().split('\n'):
            line = line.strip()
            if not line or '=' not in line:
                continue
            parts = line.split('=', 1)
            key = parts[0].strip()
            # 支持用 '-' 分割多个替换词
            values = [v.strip() for v in parts[1].split('-') if v.strip()]
            if values:
                spells[key] = values
        return spells

    def convert_text(self):
        """转换逻辑"""
        if self.lock_input_var.get():
            return
        text = self.input_text.get("1.0", tk.END).strip()
        if not text:
            self.set_output_text("")
            return

        # 1. 应用自定义变身咒语 (使用正则表达式避免级联替换)
        spells = self.parse_spells(self.spells_text.get("1.0", tk.END))
        if spells:
            # 按键的长度降序排序，确保长词优先匹配
            sorted_keys = sorted(spells.keys(), key=len, reverse=True)
            # 构建正则表达式，例如：(你|主人|我|本喵|我们|人|两脚兽|了|惹)
            pattern_str = '|'.join(re.escape(k) for k in sorted_keys)
            pattern = re.compile(pattern_str)
            
            def replace_match(match):
                key = match.group(0)
                return random.choice(spells[key])
            
            # 一次性替换，避免重复触发
            text = pattern.sub(replace_match, text)

        # 2. 添加句尾小尾巴 (需在颜文字之前)
        if self.use_tail_var.get():
            tails = [t.strip() for t in self.tails_text.get("1.0", tk.END).strip().split('\n') if t.strip()]
            if tails:
                tail = random.choice(tails)
                # 在句号、叹号、问号等标点后添加尾巴
                text = re.sub(r'([。！？!?])', r'\1' + tail, text)
                # 如果末尾没有标点，也挂上尾巴
                if not re.search(r'[。！？!?]$', text):
                    text += tail

        # 3. 添加随机猫猫表情 (放在最后)
        if self.use_emoji_var.get():
            emojis = [e.strip() for e in self.emojis_text.get("1.0", tk.END).strip().split('\n') if e.strip()]
            if emojis:
                text += " " + random.choice(emojis)

        # 输出到结果框
        self.set_output_text(text)

    def copy_output(self):
        """复制输出框的内容到剪贴板"""
        text = self.output_text.get("1.0", "end-1c")
        if text.strip():
            # 复制成功
            self.root.clipboard_clear()
            self.root.clipboard_append(text)
            
            # 显示成功提示，2秒后自动清除
            self.show_copy_status("已复制到剪贴板")
        else:
            # 复制失败（内容为空），弹出系统警告
            messagebox.showwarning("提示", "输出框为空，没有可复制的内容。")

if __name__ == "__main__":
    configure_windows_app_id()
    root = tk.Tk()
    app = MiaoMiaoApp(root)
    root.mainloop()

# 关注system-bootmgr-L谢谢喵
# 感谢LaiNova_
