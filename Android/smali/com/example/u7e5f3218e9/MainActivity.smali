.class public Lcom/example/u7e5f3218e9/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;
    }
.end annotation


# instance fields
.field private cbEmoticon:Landroid/widget/CheckBox;

.field private cbMeow:Landroid/widget/CheckBox;

.field private cbNiToZhuren:Landroid/widget/CheckBox;

.field private cbWoToBenmiao:Landroid/widget/CheckBox;

.field private config:Lcom/example/u7e5f3218e9/CatConfig;

.field private etCustomEmoticons:Landroid/widget/EditText;

.field private etCustomRules:Landroid/widget/EditText;

.field private etMeowText:Landroid/widget/EditText;

.field private floatStatus:Landroid/widget/TextView;

.field private floatToggleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/example/u7e5f3218e9/MainActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->onFloatToggleClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/u7e5f3218e9/MainActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->saveConfig()V

    return-void
.end method

.method static synthetic access$200(Lcom/example/u7e5f3218e9/MainActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->showTestDialog()V

    return-void
.end method

.method private addCheckbox(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;
    .locals 5

    .line 464
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x8

    .line 466
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x10

    .line 467
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 469
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 470
    invoke-virtual {v2, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    new-instance p4, Landroid/widget/LinearLayout;

    invoke-direct {p4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 476
    invoke-virtual {p4, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0xc

    .line 477
    invoke-virtual {p4, v4, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 479
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    .line 481
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p2, 0x33

    .line 482
    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 484
    invoke-virtual {p4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p3, 0x41400000    # 12.0f

    .line 488
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p3, 0x88

    .line 489
    invoke-static {p3, p3, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    invoke-virtual {p4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 492
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private divider()Landroid/view/View;
    .locals 5

    .line 502
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xdd

    .line 503
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 504
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x18

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 506
    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private isFloatServiceRunning()Z
    .locals 5

    const/4 v0, 0x0

    .line 408
    :try_start_0
    invoke-static {}, Lcom/example/u7e5f3218e9/CatFloatServiceHolder;->isRunning()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "activity"

    .line 412
    invoke-virtual {p0, v1}, Lcom/example/u7e5f3218e9/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_2

    const/16 v3, 0x64

    .line 414
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v3, :cond_1

    .line 415
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    const-class v4, Lcom/example/u7e5f3218e9/CatFloatService;

    .line 416
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return v2

    :catch_0
    :cond_2
    return v0
.end method

.method private onFloatToggleClick()V
    .locals 3

    .line 428
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->requestOverlayPermission()V

    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->isFloatServiceRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/example/u7e5f3218e9/MainActivity;->stopService(Landroid/content/Intent;)Z

    const-string v0, "\u5de1\u903b\u55b5\u7403\u5df2\u7ecf\u4e56\u4e56\u56de\u732b\u7a9d\u5566"

    .line 434
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 436
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    invoke-virtual {p0, v0}, Lcom/example/u7e5f3218e9/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "\u5de1\u903b\u55b5\u7403\u51fa\u53d1\uff01\u70b9\u5b83\u5c31\u80fd\u5f00\u59cb\u53d8\u8eab\u55b5"

    .line 442
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    :goto_0
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->updateFloatStatus()V

    return-void
.end method

.method private openRulesFile()V
    .locals 2

    .line 303
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3ea

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/example/u7e5f3218e9/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u545c\u55b5\uff0c\u7cfb\u7edf\u91cc\u6ca1\u6709\u80fd\u6311\u6587\u4ef6\u7684\u5c0f\u52a9\u624b"

    const/4 v1, 0x0

    .line 308
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private parseImportedConfig(Ljava/lang/String;)Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;
    .locals 12

    .line 349
    new-instance v0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;-><init>(Lcom/example/u7e5f3218e9/MainActivity$1;)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\n"

    const-string v4, "\n"

    .line 353
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0xd

    const/16 v5, 0xa

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    .line 354
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const-string v4, "rules"

    const/4 v6, 0x0

    move-object v7, v4

    :goto_0
    if-ge v6, v3, :cond_6

    aget-object v8, p1, v6

    .line 355
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[\u65ad\u53e5\u8ffd\u52a0\u6587\u672c]"

    .line 356
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "meow"

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    .line 358
    iput-boolean v7, v0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->hasMeowSection:Z

    move-object v7, v11

    goto :goto_1

    :cond_0
    const-string v10, "[\u66ff\u6362\u89c4\u5219]"

    .line 359
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v7, v4

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 362
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 371
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->meowTexts:Ljava/lang/String;

    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->rules:Ljava/lang/String;

    return-object v0
.end method

.method private requestOverlayPermission()V
    .locals 4

    const-string v0, "package:"

    .line 450
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/example/u7e5f3218e9/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/example/u7e5f3218e9/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u6ca1\u80fd\u6253\u5f00\u6743\u9650\u5c0f\u95e8\uff0c\u8bf7\u624b\u52a8\u627e\u627e\u201c\u5728\u5176\u4ed6\u5e94\u7528\u4e0a\u5c42\u663e\u793a\u201d\u55b5"

    const/4 v1, 0x0

    .line 457
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private saveConfig()V
    .locals 7

    const/4 v0, 0x0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/MainActivity;->cbMeow:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    .line 516
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iput-boolean v0, v1, Lcom/example/u7e5f3218e9/CatConfig;->enableWoToBenmiao:Z

    .line 517
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iput-boolean v0, v1, Lcom/example/u7e5f3218e9/CatConfig;->enableNiToZhuren:Z

    .line 518
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/MainActivity;->cbEmoticon:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    .line 519
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "\u55b5"

    :goto_0
    iput-object v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    iput-object v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    .line 521
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    iput-object v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\n"

    .line 525
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    array-length v3, v1

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 528
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 529
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 531
    :cond_3
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    goto :goto_3

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    .line 536
    :goto_3
    iget-object v1, p0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    invoke-virtual {v1, p0}, Lcom/example/u7e5f3218e9/CatConfig;->save(Landroid/content/Context;)V

    const-string v1, "\u5c0f\u672c\u672c\u5df2\u7ecf\u4fdd\u5b58\u597d\u5566\u55b5\uff01"

    .line 537
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u545c\u55b5\uff0c\u4fdd\u5b58\u6ca1\u6210\u529f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method

.method private showTestDialog()V
    .locals 7

    const-string v0, "\u53e5\u5c3e\u5c0f\u5c3e\u5df4\uff1a"

    .line 545
    :try_start_0
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->saveConfig()V

    .line 546
    invoke-static {p0}, Lcom/example/u7e5f3218e9/CatConfig;->load(Landroid/content/Context;)Lcom/example/u7e5f3218e9/CatConfig;

    move-result-object v1

    .line 547
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-string v2, "2026\u5e745\u670825\u53f7\u9001\u7ed9\u672c\u55b5\u81ea\u5df1\u7684\u751f\u65e5\u793c\u7269\uff0c\u91cd\u65b0\u5305\u597d\u9001\u7ed9\u5927\u5bb6\u55b5"

    goto :goto_0

    :cond_0
    const-string v2, "\u4eca\u5929\u672c\u55b5\u5fc3\u60c5\u8d85\u597d\uff0c\u4f60\u51c6\u5907\u597d\u4e86\u5417\uff1f\u6211\u4eec\u53bb\u516c\u56ed\u73a9\u55b5\uff01"

    .line 550
    :goto_0
    invoke-static {v2, v1}, Lcom/example/u7e5f3218e9/TextProcessor;->process(Ljava/lang/String;Lcom/example/u7e5f3218e9/CatConfig;)Ljava/lang/String;

    move-result-object v3

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    invoke-direct {p0, v0}, Lcom/example/u7e5f3218e9/MainActivity;->yn(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff08\u5c3e\u5df4\u5185\u5bb9\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    iget-object v4, v1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    const-string v5, "\n"

    const-string v6, " / "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "\u7a7a\u7a7a\u7684"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff09\n\u53d8\u8eab\u5492\u8bed\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    invoke-virtual {v1}, Lcom/example/u7e5f3218e9/CatConfig;->getCustomReplaceRules()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/example/u7e5f3218e9/CatConfig;->getCustomReplaceRules()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6761"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string v4, "\u6682\u65f6\u4e0d\u7528\u55b5"

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\u732b\u732b\u8868\u60c5\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, v1, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    .line 555
    invoke-direct {p0, v4}, Lcom/example/u7e5f3218e9/MainActivity;->yn(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\u81ea\u5b9a\u4e49\u8868\u60c5\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    iget-object v4, v1, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u4e2a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, "\u4f7f\u7528\u672c\u55b5\u5185\u7f6e"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\u53d8\u8eab\u524d\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\u53d8\u8eab\u540e\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0e05 \u55b5\u8bed\u8bd5\u7a7f\u95f4 \u0e05"

    .line 561
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 562
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u597d\u54d2\u55b5"

    const/4 v2, 0x0

    .line 563
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u545c\u55b5\uff0c\u8bd5\u7a7f\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method

.method private updateFloatStatus()V
    .locals 9

    .line 379
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 380
    :cond_0
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    .line 381
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->isFloatServiceRunning()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 383
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const-string v1, "\u55b5\u7403\u51fa\u95e8\u6743\u9650\uff1a\u5df2\u5f00\u542f\n\u60ac\u6d6e\u7a97\u72b6\u6001\uff1a\u6b63\u5728\u5de1\u903b\u55b5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const/16 v1, 0x2e

    const/16 v3, 0x7d

    const/16 v4, 0x32

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    const-string v5, "\u6536\u8d77\u5de1\u903b\u55b5\u7403"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    const/16 v2, 0xd6

    const/16 v5, 0xa7

    const/16 v6, 0xa5

    invoke-static {v6, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 388
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x6f

    const/16 v5, 0xff

    const/16 v6, 0xc6

    const/16 v7, 0x28

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const-string v8, "\u55b5\u7403\u51fa\u95e8\u6743\u9650\uff1a\u5df2\u5f00\u542f\n\u60ac\u6d6e\u7a97\u72b6\u6001\uff1a\u8fd8\u5728\u732b\u7a9d\u91cc"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    invoke-static {v6, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    const-string v6, "\u653e\u51fa\u5de1\u903b\u55b5\u7403"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-static {v5, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 395
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const-string v8, "\u55b5\u7403\u51fa\u95e8\u6743\u9650\uff1a\u8fd8\u6ca1\u5f00\u542f\u55b5"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    invoke-static {v6, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    const-string v6, "\u53bb\u7ed9\u55b5\u7403\u5f00\u51fa\u95e8\u6743\u9650"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-static {v5, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 402
    iget-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private yn(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u5f00\u542f\u55b5"

    goto :goto_0

    :cond_0
    const-string p1, "\u4f11\u606f\u4e2d\u55b5"

    :goto_0
    return-object p1
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-example-u7e5f3218e9-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->openRulesFile()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 314
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_7

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_7

    .line 315
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p2, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/example/u7e5f3218e9/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 319
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 322
    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-virtual {v0, v1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 324
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p3, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, "\u8fd9\u4efd\u5492\u8bed\u6587\u4ef6\u7a7a\u7a7a\u7684\uff0c\u5c0f\u722a\u6ca1\u6709\u62ff\u5230\u5185\u5bb9\u55b5"

    .line 326
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 329
    :cond_2
    invoke-direct {p0, p1}, Lcom/example/u7e5f3218e9/MainActivity;->parseImportedConfig(Ljava/lang/String;)Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;

    move-result-object p1

    .line 330
    iget-object p3, p0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    iget-object v0, p1, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->rules:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-boolean p3, p1, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->hasMeowSection:Z

    if-eqz p3, :cond_4

    .line 332
    iget-object p3, p0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    iget-object v0, p1, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->meowTexts:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u55b5"

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->meowTexts:Ljava/lang/String;

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_4
    iget-boolean p1, p1, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->hasMeowSection:Z

    if-eqz p1, :cond_5

    const-string p1, "\u5c0f\u722a\u5df2\u7ecf\u62ff\u5230\u5c0f\u5c3e\u5df4\u548c\u53d8\u8eab\u5492\u8bed\u5566\uff0c\u70b9\u4fdd\u5b58\u5c31\u8bb0\u4f4f\u55b5\uff01"

    goto :goto_2

    :cond_5
    const-string p1, "\u5c0f\u722a\u5df2\u7ecf\u62ff\u5230\u53d8\u8eab\u5492\u8bed\u5e76\u8986\u76d6\u539f\u6765\u7684\u5185\u5bb9\u5566\uff0c\u70b9\u4fdd\u5b58\u5c31\u597d\u55b5\uff01"

    :goto_2
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 318
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p3, "\u5c0f\u722a\u6ca1\u80fd\u8bfb\u5230\u8fd9\u4e2a\u6587\u4ef6"

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "\u5c0f\u722a\u5bfc\u5165\u5931\u8d25\u5566\uff0c\u8bf7\u786e\u8ba4\u8fd9\u662f UTF-8 \u7684\u5492\u8bed\u6587\u672c\u55b5"

    .line 338
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    .line 48
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/example/u7e5f3218e9/CatConfig;->load(Landroid/content/Context;)Lcom/example/u7e5f3218e9/CatConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    new-instance v1, Lcom/example/u7e5f3218e9/CatConfig;

    invoke-direct {v1}, Lcom/example/u7e5f3218e9/CatConfig;-><init>()V

    iput-object v1, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    .line 57
    :goto_0
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 63
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x50

    const/16 v6, 0x28

    .line 64
    invoke-virtual {v2, v6, v6, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v5, "#FFF8E1"

    .line 65
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 66
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v3, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u55b5\u55b5\u52a9\u624b \u0e05^\u2022\u03c9\u2022^\u0e05"

    .line 72
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41c00000    # 24.0f

    .line 73
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v8, 0xe6

    const/16 v9, 0x51

    const/4 v10, 0x0

    .line 74
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x11

    .line 76
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v9, 0x8

    .line 77
    invoke-virtual {v5, v10, v6, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v11, "\u732b\u5a18\u8bed\u6c14\u5de5\u574a \u00b7 \u60ac\u6d6e\u7a97\u5c0f\u5de5\u5177\u55b5"

    .line 81
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 82
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v12, 0x8d

    const/16 v13, 0x6e

    const/16 v14, 0x63

    .line 83
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v15, 0x18

    .line 85
    invoke-virtual {v5, v10, v10, v10, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const/high16 v6, 0x41800000    # 16.0f

    .line 90
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const/16 v8, 0x12

    const/16 v11, 0x12

    invoke-virtual {v5, v15, v8, v15, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 94
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    const/16 v8, 0x33

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    .line 99
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 100
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 101
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    const/16 v8, 0x20

    const/16 v11, 0x20

    const/16 v15, 0x10

    invoke-virtual {v5, v8, v15, v11, v15}, Landroid/widget/Button;->setPadding(IIII)V

    .line 102
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v5, v10, v15, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 106
    iget-object v8, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v8, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    new-instance v8, Lcom/example/u7e5f3218e9/MainActivity$1;

    invoke-direct {v8, v0}, Lcom/example/u7e5f3218e9/MainActivity$1;-><init>(Lcom/example/u7e5f3218e9/MainActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->floatToggleButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u4f7f\u7528\u5c0f\u722a\u6307\u5357\uff1a\u70b9\u4e0a\u65b9\u6309\u94ae\u653e\u51fa\u5de1\u903b\u55b5\u7403\uff08\u9996\u6b21\u6309\u63d0\u793a\u5f00\u542f\u51fa\u95e8\u6743\u9650\uff09\u2192 \u70b9\u5f00\u55b5\u7403 \u2192 \u5199\u4e0b\u60f3\u8bf4\u7684\u8bdd\n\u2192 \u70b9\u201c\u0e05 \u5f00\u59cb\u55b5\u8bed\u53d8\u8eab \u0e05\u201d \u2192 \u70b9\u201c\u7528\u5c0f\u722a\u590d\u5236\u55b5\u8bed\u201d \u2192 \u5728\u804a\u5929\u6846\u957f\u6309\u7c98\u8d34\uff0c\u5c31\u80fd\u53d1\u51fa\u53bb\u55b5\uff01\n\u653e\u5fc3\u5427\uff0c\u672c\u55b5\u4e0d\u4f1a\u5077\u770b\u6216\u6539\u52a8\u4efb\u4f55\u804a\u5929\u5185\u5bb9\u55b5\u3002"

    .line 117
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41400000    # 12.0f

    .line 120
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v11, 0x88

    const/16 v7, 0x7f

    const/16 v6, 0xa1

    .line 121
    invoke-static {v6, v11, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0xc

    .line 122
    invoke-virtual {v5, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/example/u7e5f3218e9/MainActivity;->divider()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u55b5\u8bed\u53d8\u8eab\u89c4\u5219"

    .line 130
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41900000    # 18.0f

    .line 131
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x5d

    const/16 v11, 0x40

    const/16 v6, 0x37

    .line 132
    invoke-static {v7, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    invoke-virtual {v5, v10, v15, v10, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-boolean v3, v3, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    const-string v5, "\u53e5\u5c3e\u5c0f\u5c3e\u5df4"

    const-string v6, "\u5728\u53e5\u53f7\u3001\u53f9\u53f7\u7b49\u5730\u65b9\u5206\u53e5\uff0c\u518d\u7ed9\u6bcf\u53e5\u8bdd\u6302\u4e0a\u4e0b\u9762\u7684\u5c0f\u5c3e\u5df4\u55b5"

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/example/u7e5f3218e9/MainActivity;->addCheckbox(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->cbMeow:Landroid/widget/CheckBox;

    .line 139
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u5c0f\u5c3e\u5df4\u4ed3\u5e93\uff1a\u4e00\u884c\u653e\u4e00\u4e2a\uff0c\u591a\u4e2a\u4f1a\u7b49\u6982\u7387\u968f\u673a\u62bd\u53d6\uff1b\u7559\u7a7a\u5c31\u53ea\u5206\u53e5\u4e0d\u6302\u5c3e\u5df4\u55b5"

    .line 140
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x4

    .line 143
    invoke-virtual {v3, v10, v5, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    .line 147
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 148
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const v4, 0x20001

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 149
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setMinLines(I)V

    .line 150
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 151
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const v6, 0x800033

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 152
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 153
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const/16 v6, 0xc

    invoke-virtual {v3, v15, v6, v15, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 154
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    const-string v6, "\u55b5"

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v6, v6, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v6, v6, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v6, v6, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v6, v6, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v6, "\u55b5"

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etMeowText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u81ea\u5b9a\u4e49\u53d8\u8eab\u5492\u8bed"

    .line 159
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 160
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x37

    .line 161
    invoke-static {v7, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    invoke-virtual {v3, v10, v15, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "UTF-8 \u5492\u8bed\u6587\u4ef6\u652f\u6301\u4e24\u4e2a\u5c0f\u7a9d\uff1a[\u65ad\u53e5\u8ffd\u52a0\u6587\u672c] \u548c [\u66ff\u6362\u89c4\u5219]\u3002\n\u53d8\u8eab\u89c4\u5219\u4e00\u884c\u4e00\u6761\uff1a\u539f\u6587=\u55b5\u8bed[-\u4e0d\u53d8\u8bcd]\u3002\n\u4f8b\u5982\uff1a\u6211=\u672c\u55b5-\u6211\u4eec"

    .line 167
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    invoke-virtual {v3, v10, v10, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 173
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    .line 176
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 177
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 178
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 179
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    const v5, 0x800033

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 180
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 181
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    const/16 v5, 0xc

    invoke-virtual {v3, v15, v5, v15, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 182
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    const-string v5, "\u6211=\u672c\u55b5\n\u4f60=\u4e3b\u4eba"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v5, v5, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v5, v5, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomRules:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u7528\u5c0f\u722a\u5bfc\u5165\u5492\u8bed\u6587\u4ef6\uff08UTF-8\uff09"

    .line 187
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 188
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 189
    new-instance v5, Lcom/example/u7e5f3218e9/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/example/u7e5f3218e9/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/example/u7e5f3218e9/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->cbWoToBenmiao:Landroid/widget/CheckBox;

    .line 193
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->cbNiToZhuren:Landroid/widget/CheckBox;

    .line 195
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-boolean v3, v3, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    const-string v5, "\u968f\u673a\u732b\u732b\u8868\u60c5"

    const-string v6, "\u5728\u8bdd\u8bed\u672b\u5c3e\u6492\u4e0a\u4e00\u679a\u968f\u673a\u732b\u732b\u989c\u6587\u5b57\u55b5"

    invoke-direct {v0, v2, v5, v6, v3}, Lcom/example/u7e5f3218e9/MainActivity;->addCheckbox(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/CheckBox;

    move-result-object v3

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->cbEmoticon:Landroid/widget/CheckBox;

    .line 199
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0e05 \u4fdd\u5b58\u5c0f\u672c\u672c \u0e05"

    .line 200
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 201
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextSize(F)V

    const/4 v5, -0x1

    .line 202
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v6, 0xff

    const/16 v4, 0x6f

    .line 203
    invoke-static {v6, v4, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 v4, 0x28

    .line 204
    invoke-virtual {v3, v4, v15, v4, v15}, Landroid/widget/Button;->setPadding(IIII)V

    .line 205
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    invoke-virtual {v4, v10, v15, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v4, Lcom/example/u7e5f3218e9/MainActivity$2;

    invoke-direct {v4, v0}, Lcom/example/u7e5f3218e9/MainActivity$2;-><init>(Lcom/example/u7e5f3218e9/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/example/u7e5f3218e9/MainActivity;->divider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u81ea\u5b9a\u4e49\u732b\u732b\u8868\u60c5"

    .line 223
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 224
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x37

    .line 225
    invoke-static {v7, v11, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    invoke-virtual {v3, v10, v15, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u4e00\u884c\u653e\u4e00\u4e2a\u732b\u732b\u8868\u60c5\uff0c\u7559\u7a7a\u5c31\u4f7f\u7528\u672c\u55b5\u81ea\u5e26\u7684\u5c0f\u8868\u60c5\u5e93"

    .line 231
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0xc

    .line 234
    invoke-virtual {v3, v10, v10, v10, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 235
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    const v4, 0x20001

    .line 238
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 239
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 240
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMinLines(I)V

    .line 241
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 242
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    const/16 v5, 0xc

    invoke-virtual {v3, v15, v5, v15, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 243
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    const-string v5, "\u6bd4\u5982\uff1a (=^w^=) \u0e05^\u2022\u03c9\u2022^\u0e05"

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    iget-object v4, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v3, v3, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v3, v3, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_6

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    iget-object v4, v0, Lcom/example/u7e5f3218e9/MainActivity;->config:Lcom/example/u7e5f3218e9/CatConfig;

    iget-object v4, v4, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    array-length v5, v4

    move v6, v10

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    if-eqz v7, :cond_4

    .line 251
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 252
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 256
    :cond_5
    iget-object v4, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_6
    iget-object v3, v0, Lcom/example/u7e5f3218e9/MainActivity;->etCustomEmoticons:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/example/u7e5f3218e9/MainActivity;->divider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v4, "\u8bd5\u8bd5\u8fd9\u5957\u55b5\u8bed"

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 265
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v4, 0xff

    const/16 v5, 0x6f

    .line 266
    invoke-static {v4, v5, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v4, -0x1

    .line 267
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 v5, 0xe

    const/16 v6, 0xe

    const/16 v7, 0x28

    .line 268
    invoke-virtual {v3, v7, v5, v7, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 269
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x14

    .line 272
    invoke-virtual {v5, v10, v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v4, Lcom/example/u7e5f3218e9/MainActivity$3;

    invoke-direct {v4, v0}, Lcom/example/u7e5f3218e9/MainActivity$3;-><init>(Lcom/example/u7e5f3218e9/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u5c0f\u63d0\u793a\uff1a\u6539\u5b8c\u8bb0\u5f97\u70b9\u4fdd\u5b58\uff0c\u6d6e\u7a97\u4e0b\u6b21\u53d8\u8eab\u65f6\u4f1a\u81ea\u52a8\u8bb0\u4f4f\u55b5\u3002"

    .line 284
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 285
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x88

    const/16 v5, 0x7f

    const/16 v6, 0xa1

    .line 286
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 287
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x24

    .line 288
    invoke-virtual {v3, v15, v4, v15, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 289
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 292
    invoke-virtual {v0, v1}, Lcom/example/u7e5f3218e9/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 298
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity;->updateFloatStatus()V

    return-void
.end method
