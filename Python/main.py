import tkinter as tk
from tkinter import ttk, scrolledtext, messagebox
import random
import re

class MiaoMiaoApp:
    def __init__(self, root):
        self.root = root
        self.root.title("喵喵助手非官方Windows版")
        self.root.geometry("900x650")
        
        # 尝试加载图标（请将第三张图片保存为 icon.ico 放在同目录下）
        try:
            self.root.iconbitmap("icon.ico")
        except Exception as e:
            print("未找到图标文件 icon.ico，将使用默认图标。")

        # 变量绑定
        self.topmost_var = tk.BooleanVar(value=False)
        self.use_tail_var = tk.BooleanVar(value=True)  # 小尾巴开关
        self.use_emoji_var = tk.BooleanVar(value=True) # 颜文字开关

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

    def setup_ui(self):
        # 1. 顶部置顶区域
        top_frame = tk.Frame(self.root)
        top_frame.pack(fill=tk.X, padx=10, pady=5)
        tk.Checkbutton(top_frame, text="窗口置顶", variable=self.topmost_var, 
                       command=self.toggle_topmost).pack(side=tk.LEFT)

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
        tk.Button(btn_frame, text="转换", command=self.convert_text, 
                  bg="lightblue", font=("微软雅黑", 10, "bold"), width=15).pack(side=tk.LEFT, padx=5)
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
        tk.Checkbutton(tab2, text="启用句尾小尾巴", variable=self.use_tail_var).pack(anchor=tk.W, padx=5, pady=2)
        tk.Label(tab2, text="尾巴仓库（一行一个，留空则不挂尾巴）", fg="gray").pack(anchor=tk.W, padx=5)
        self.tails_text = scrolledtext.ScrolledText(tab2, height=4, font=("微软雅黑", 9))
        self.tails_text.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.tails_text.insert(tk.END, self.default_tails)

        # 选项卡3：自定义猫猫表情
        tab3 = tk.Frame(settings_notebook)
        settings_notebook.add(tab3, text="自定义猫猫表情")
        tk.Checkbutton(tab3, text="在话语末尾随机添加上猫猫表情", variable=self.use_emoji_var).pack(anchor=tk.W, padx=5, pady=2)
        tk.Label(tab3, text="表情仓库（一行一个）", fg="gray").pack(anchor=tk.W, padx=5)
        self.emojis_text = scrolledtext.ScrolledText(tab3, height=4, font=("微软雅黑", 9))
        self.emojis_text.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        self.emojis_text.insert(tk.END, self.default_emojis)

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
        text = self.input_text.get("1.0", tk.END).strip()
        if not text:
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
        self.output_text.delete("1.0", tk.END)
        self.output_text.insert(tk.END, text)

    def copy_output(self):
        """复制输出框的内容到剪贴板"""
        text = self.output_text.get("1.0", tk.END).strip()
        if text:
            # 复制成功
            self.root.clipboard_clear()
            self.root.clipboard_append(text)
            
            # 显示成功提示，2秒后自动清除
            self.copy_status_label.config(text="已复制到剪贴板", fg="green")
            self.root.after(2000, lambda: self.copy_status_label.config(text=""))
        else:
            # 复制失败（内容为空），弹出系统警告
            messagebox.showwarning("提示", "输出框为空，没有可复制的内容。")

if __name__ == "__main__":
    root = tk.Tk()
    app = MiaoMiaoApp(root)
    root.mainloop()

# 关注system-bootmgr-L谢谢喵
# 感谢LaiNova_