.class public Lcom/example/u7e5f3218e9/CatFloatService;
.super Landroid/app/Service;
.source "CatFloatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;
    }
.end annotation


# static fields
.field private static final HINT_RANDOM:Ljava/util/Random;

.field private static final MAIN_HANDLER:Landroid/os/Handler;

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "miao_float_channel"

.field private static final NOTIFICATION_ID:I = 0x13526ad

.field private static final PANEL_WIDTH:I = 0x140


# instance fields
.field private ball:Landroid/view/View;

.field private cachedConfig:Lcom/example/u7e5f3218e9/CatConfig;

.field private currentX:I

.field private currentY:I

.field private etInput:Landroid/widget/EditText;

.field private expanded:Z

.field private floatTip:Landroid/view/View;

.field private panel:Landroid/view/View;

.field private resultRow:Landroid/widget/LinearLayout;

.field private tvResult:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$JswMv0ir5UYgNgt9RRcEIyGgy1U(Lcom/example/u7e5f3218e9/CatFloatService;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->removeFloatTip()V

    return-void
.end method

.method public static synthetic $r8$lambda$pEC1aQ7jBT4NuJyVoTKk2Ovly1k(Lcom/example/u7e5f3218e9/CatFloatService;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->autoFocusInput()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/example/u7e5f3218e9/CatFloatService;->HINT_RANDOM:Ljava/util/Random;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/example/u7e5f3218e9/CatFloatService;->MAIN_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->expanded:Z

    const/16 v0, 0x10

    .line 64
    iput v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentX:I

    const/16 v0, 0xa0

    .line 65
    iput v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentY:I

    .line 66
    new-instance v0, Lcom/example/u7e5f3218e9/CatConfig;

    invoke-direct {v0}, Lcom/example/u7e5f3218e9/CatConfig;-><init>()V

    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->cachedConfig:Lcom/example/u7e5f3218e9/CatConfig;

    return-void
.end method

.method static synthetic access$100(Lcom/example/u7e5f3218e9/CatFloatService;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->expanded:Z

    return p0
.end method

.method static synthetic access$200(Lcom/example/u7e5f3218e9/CatFloatService;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/example/u7e5f3218e9/CatFloatService;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->ball:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/example/u7e5f3218e9/CatFloatService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentX:I

    return p1
.end method

.method static synthetic access$502(Lcom/example/u7e5f3218e9/CatFloatService;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentY:I

    return p1
.end method

.method static synthetic access$600(Lcom/example/u7e5f3218e9/CatFloatService;)Landroid/view/WindowManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    return-object p0
.end method

.method private applyRandomInputHint()V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    sget-object v1, Lcom/example/u7e5f3218e9/CatFloatService;->HINT_RANDOM:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5199\u7ed9\u90a3\u4e2a\u5dee\u70b9\u95ef\u7978\u3001\u5374\u5f88\u5e78\u8fd0\u7684\u672c\u55b5"

    goto :goto_0

    :cond_1
    const-string v1, "\u6bd4\u5982\uff1a\u672c\u55b5\u4eca\u5929\u8d85\u5f00\u5fc3\uff0c\u4f60\u5462\uff1f"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private autoFocusInput()V
    .locals 3

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 534
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 535
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    .line 538
    invoke-virtual {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 540
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private buildBall()V
    .locals 5

    .line 307
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->getApplicationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v2, 0x6f

    const/4 v3, 0x0

    const/16 v4, 0xff

    .line 316
    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    :goto_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v2, 0x2

    .line 320
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 321
    new-instance v2, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda3;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    new-instance v2, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;

    invoke-direct {v2, p0, v1}, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;Lcom/example/u7e5f3218e9/CatFloatService$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->ball:Landroid/view/View;

    return-void
.end method

.method private buildPanel()V
    .locals 16

    move-object/from16 v0, p0

    .line 157
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v4, 0xf8

    const/16 v5, 0xe1

    const/16 v6, 0xff

    .line 160
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v4, 0x12

    .line 161
    invoke-direct {v0, v4}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 162
    invoke-direct {v0, v2}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v4

    const/16 v5, 0xe0

    const/16 v7, 0xb2

    invoke-static {v6, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 163
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v1, v3, v4, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v7, 0x4

    const/16 v8, 0xc

    .line 170
    invoke-virtual {v5, v7, v8, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 172
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\ud83d\udc3e \u55b5\u8bed\u53d8\u8eab\u5c0f\u7a9d"

    .line 173
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41700000    # 15.0f

    .line 174
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v11, 0xe6

    const/16 v12, 0x51

    .line 175
    invoke-static {v11, v12, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 177
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v4, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v11, "\u2014"

    .line 181
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 182
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v14, 0x6e

    const/16 v15, 0x63

    const/16 v13, 0x8d

    .line 183
    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 184
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 185
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setMinWidth(I)V

    .line 186
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setMinHeight(I)V

    .line 187
    invoke-virtual {v9, v8, v4, v8, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 188
    new-instance v13, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda5;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v9, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;

    const/4 v13, 0x0

    invoke-direct {v9, v0, v13}, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;Lcom/example/u7e5f3218e9/CatFloatService$1;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v9, "\u628a\u60f3\u8bf4\u7684\u8bdd\u4ea4\u7ed9\u672c\u55b5\uff0c\u70b9\u4e00\u4e0b\u5c31\u53d8\u6210\u8f6f\u4e4e\u4e4e\u7684\u55b5\u8bed\uff0c\u518d\u7528\u5c0f\u722a\u590d\u5236\u53bb\u53d1\u9001\u5427\uff01"

    .line 196
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41300000    # 11.0f

    .line 197
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x88

    const/16 v13, 0x7f

    const/16 v14, 0xa1

    .line 198
    invoke-static {v14, v9, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v9, 0x8

    .line 199
    invoke-virtual {v5, v7, v4, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const v13, 0x20001

    .line 204
    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 206
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 207
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 208
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 209
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 210
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 211
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setMinLines(I)V

    .line 212
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 213
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const v13, 0x800033

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setGravity(I)V

    .line 214
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const/4 v13, -0x1

    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 215
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const/16 v14, 0xe

    invoke-virtual {v5, v14, v8, v14, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/example/u7e5f3218e9/CatFloatService;->applyRandomInputHint()V

    .line 218
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const/high16 v15, 0x2000000

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 220
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    new-instance v15, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda6;

    invoke-direct {v15, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda6;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    new-instance v15, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda7;

    invoke-direct {v15, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda7;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v5, v15}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 225
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v15, "\u0e05 \u5f00\u59cb\u55b5\u8bed\u53d8\u8eab \u0e05"

    .line 229
    invoke-virtual {v5, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 231
    invoke-virtual {v5, v13}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v10, 0x6f

    .line 232
    invoke-static {v6, v10, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 233
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    .line 236
    invoke-virtual {v15, v4, v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 237
    invoke-virtual {v5, v15}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v15, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda8;

    invoke-direct {v15, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda8;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    .line 243
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 244
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0e05 \u53d8\u8eab\u5b8c\u6210\u7684\u55b5\u8bed \u0e05"

    .line 247
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 248
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x40

    const/16 v9, 0x37

    const/16 v15, 0x5d

    .line 249
    invoke-static {v15, v5, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {v2, v7, v14, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 253
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    .line 254
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 255
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    const/16 v5, 0x33

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 257
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v2, v14, v8, v14, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 262
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    invoke-virtual {v2, v4, v6, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 265
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u7528\u5c0f\u722a\u590d\u5236\u55b5\u8bed"

    .line 266
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 268
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v5, 0x78

    const/16 v6, 0x8c

    .line 269
    invoke-static {v5, v6, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 270
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v6, 0x6

    .line 272
    invoke-virtual {v5, v4, v4, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v5, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda9;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u518d\u6539\u4e00\u6539\u55b5"

    .line 278
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v3, v11}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v5, 0xff

    .line 280
    invoke-static {v5, v10, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 281
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 282
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 284
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 285
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v4, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda10;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    iget-object v3, v0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 290
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 292
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 296
    new-instance v1, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda1;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 303
    iput-object v2, v0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    return-void
.end method

.method private collapseToBall()V
    .locals 1

    const/4 v0, 0x1

    .line 451
    invoke-direct {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->collapseToBall(Z)V

    return-void
.end method

.method private collapseToBall(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "input_method"

    .line 458
    invoke-virtual {p0, p1}, Lcom/example/u7e5f3218e9/CatFloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->removeViews()V

    .line 467
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    .line 468
    invoke-direct {p0, v1}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v3

    .line 469
    invoke-direct {p0, v1}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v4

    const/16 v5, 0x7f6

    const/16 v6, 0x28

    const/4 v7, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v1, 0x800035

    .line 474
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 475
    iget v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentX:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 476
    iget v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentY:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 478
    :try_start_1
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/CatFloatService;->ball:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->expanded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private copyResult()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u80fd\u8ba9\u5c0f\u722a\u590d\u5236\u7684\u55b5\u8bed\u5594"

    const/4 v1, 0x0

    .line 366
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 369
    :cond_1
    invoke-direct {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->copyToClipboard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5c0f\u722a\u5df2\u7ecf\u590d\u5236\u597d\u5566\uff01\u53bb\u804a\u5929\u6846\u957f\u6309\u7c98\u8d34\u5c31\u80fd\u53d1\u9001\u55b5"

    goto :goto_0

    :cond_2
    const-string v0, "\u545c\u55b5\uff0c\u590d\u5236\u53ef\u80fd\u88ab\u7cfb\u7edf\u62e6\u4f4f\u4e86\uff0c\u8bf7\u68c0\u67e5\u55b5\u7403\u6743\u9650\u6216\u540e\u53f0\u9650\u5236"

    :goto_0
    const/4 v1, 0x1

    .line 370
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "clipboard"

    .line 414
    invoke-virtual {p0, v1}, Lcom/example/u7e5f3218e9/CatFloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v2, "\u55b5\u55b5\u52a9\u624b"

    .line 416
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method private doReplace()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u5148\u5199\u70b9\u60f3\u8bf4\u7684\u8bdd\uff0c\u518d\u8ba9\u672c\u55b5\u65bd\u6cd5\u55b5"

    const/4 v1, 0x0

    .line 340
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->cachedConfig:Lcom/example/u7e5f3218e9/CatConfig;

    invoke-static {v0, v1}, Lcom/example/u7e5f3218e9/TextProcessor;->process(Ljava/lang/String;Lcom/example/u7e5f3218e9/CatConfig;)Ljava/lang/String;

    move-result-object v0

    .line 345
    sget-object v1, Lcom/example/u7e5f3218e9/CatFloatService;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda4;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;Ljava/lang/String;)V

    const-wide/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 614
    invoke-virtual {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeFocusable()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    .line 441
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 442
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    .line 443
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 444
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private pasteClipboardIntoInput()V
    .locals 6

    const/4 v0, 0x0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->makeFocusable()V

    .line 380
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const-string v1, "clipboard"

    .line 381
    invoke-virtual {p0, v1}, Lcom/example/u7e5f3218e9/CatFloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "\u526a\u8d34\u677f\u7a7a\u7a7a\u7684\uff0c\u6ca1\u6709\u80fd\u7c98\u8fdb\u6765\u7684\u5185\u5bb9\u55b5"

    if-eqz v1, :cond_6

    .line 382
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 386
    :cond_0
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 387
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 391
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 392
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 397
    iget-object v3, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 398
    iget-object v4, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 400
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v2, v5, v4, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 402
    :cond_3
    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 404
    :goto_0
    iget-object v2, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    const-string v1, "\u5df2\u7ecf\u4e56\u4e56\u7c98\u8fdb\u6765\u5566\u55b5"

    .line 405
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 393
    :cond_4
    :goto_1
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 388
    :cond_5
    :goto_2
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 383
    :cond_6
    :goto_3
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string v1, "\u545c\u55b5\uff0c\u6ca1\u80fd\u7c98\u8fdb\u6765\uff0c\u518d\u8bd5\u4e00\u6b21\u5427"

    .line 407
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method

.method private refreshConfig()V
    .locals 1

    .line 519
    :try_start_0
    invoke-static {p0}, Lcom/example/u7e5f3218e9/CatConfig;->load(Landroid/content/Context;)Lcom/example/u7e5f3218e9/CatConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->cachedConfig:Lcom/example/u7e5f3218e9/CatConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    new-instance v0, Lcom/example/u7e5f3218e9/CatConfig;

    invoke-direct {v0}, Lcom/example/u7e5f3218e9/CatConfig;-><init>()V

    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->cachedConfig:Lcom/example/u7e5f3218e9/CatConfig;

    :goto_0
    return-void
.end method

.method private removeFloatTip()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->floatTip:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->floatTip:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->floatTip:Landroid/view/View;

    return-void
.end method

.method private removeViews()V
    .locals 2

    .line 548
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->removeFloatTip()V

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->ball:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->ball:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method

.method private resetEditor()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->tvResult:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->resultRow:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 428
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->makeFocusable()V

    return-void
.end method

.method private showExpanded()V
    .locals 7

    .line 486
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->removeViews()V

    .line 487
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->refreshConfig()V

    .line 488
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x140

    .line 489
    invoke-direct {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x7f6

    const v4, 0x40020

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800035

    .line 497
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 498
    iget v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentX:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 499
    iget v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentY:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, 0x1

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    invoke-interface {v1, v2, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->expanded:Z

    .line 504
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    new-instance v2, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda2;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "\u55b5\u7403\u8fd8\u6ca1\u6709\u51fa\u95e8\u6743\u9650\uff0c\u8bf7\u5148\u56de\u732b\u7a9d\u5f00\u542f\u55b5"

    .line 506
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private showFloatTip(Ljava/lang/String;)V
    .locals 8

    .line 570
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->removeFloatTip()V

    .line 572
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 574
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, -0x1

    .line 575
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 576
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0xc

    .line 577
    invoke-direct {p0, p1}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result p1

    invoke-direct {p0, v2}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 578
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x40

    const/16 v2, 0x37

    const/16 v3, 0x5d

    .line 579
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0x12

    .line 580
    invoke-direct {p0, v1}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 581
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 583
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7f6

    const/16 v6, 0x18

    const/4 v7, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v1, 0x800035

    .line 590
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 591
    iget v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentX:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 592
    iget v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->currentY:I

    const/16 v2, 0x34

    invoke-direct {p0, v2}, Lcom/example/u7e5f3218e9/CatFloatService;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 593
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->floatTip:Landroid/view/View;

    .line 595
    sget-object p1, Lcom/example/u7e5f3218e9/CatFloatService;->MAIN_HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/u7e5f3218e9/CatFloatService$$ExternalSyntheticLambda0;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    const-wide/16 v1, 0x708

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private startAsForegroundService()V
    .locals 6

    :try_start_0
    const-string v0, "notification"

    .line 110
    invoke-virtual {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "miao_float_channel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 112
    :try_start_1
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "\u55b5\u55b5\u52a9\u624b\u00b7\u5de1\u903b\u55b5\u7403"

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v4, "\u5de1\u903b\u55b5\u7403\u6b63\u5728\u5f85\u547d\uff0c\u968f\u65f6\u5e2e\u4e3b\u4eba\u53d8\u8eab\u55b5\u8bed\u55b5"

    .line 116
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 124
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/example/u7e5f3218e9/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14000000

    .line 130
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0xc000000

    .line 131
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/high16 v3, 0x7f020000

    .line 140
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v3, "\u5de1\u903b\u55b5\u7403\u6b63\u5728\u5f85\u547d \u0e05^\u2022\u03c9\u2022^\u0e05"

    .line 141
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v3, "\u55b5\u7403\u5df2\u7ecf\u51fa\u53d1\u5566\uff0c\u70b9\u8fd9\u91cc\u56de\u732b\u7a9d\u8c03\u6574\u5c0f\u5492\u8bed\u55b5"

    .line 142
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 143
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x13526ad

    .line 148
    invoke-virtual {p0, v1, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->startForeground(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method synthetic lambda$buildBall$7$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->showExpanded()V

    return-void
.end method

.method synthetic lambda$buildPanel$0$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->collapseToBall()V

    return-void
.end method

.method synthetic lambda$buildPanel$1$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->makeFocusable()V

    return-void
.end method

.method synthetic lambda$buildPanel$2$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)Z
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->pasteClipboardIntoInput()V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$buildPanel$3$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->doReplace()V

    return-void
.end method

.method synthetic lambda$buildPanel$4$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->copyResult()V

    return-void
.end method

.method synthetic lambda$buildPanel$5$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->resetEditor()V

    return-void
.end method

.method synthetic lambda$buildPanel$6$com-example-u7e5f3218e9-CatFloatService(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->collapseToBall()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$doReplace$8$com-example-u7e5f3218e9-CatFloatService(Ljava/lang/String;)V
    .locals 2

    .line 346
    invoke-direct {p0, p1}, Lcom/example/u7e5f3218e9/CatFloatService;->copyToClipboard(Ljava/lang/String;)Z

    move-result p1

    .line 349
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->etInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->collapseToBall(Z)V

    if-eqz p1, :cond_0

    const-string p1, "\u5c0f\u722a\u5df2\u7ecf\u590d\u5236\u597d\u5566\uff01\u53bb\u804a\u5929\u6846\u7c98\u8d34\u5c31\u80fd\u53d1\u9001\u55b5"

    goto :goto_0

    :cond_0
    const-string p1, "\u545c\u55b5\uff0c\u590d\u5236\u53ef\u80fd\u88ab\u7cfb\u7edf\u62e6\u4f4f\u4e86\uff0c\u8bf7\u770b\u770b\u540e\u53f0\u9650\u5236"

    .line 354
    :goto_0
    invoke-direct {p0, p1}, Lcom/example/u7e5f3218e9/CatFloatService;->showFloatTip(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    .line 71
    invoke-virtual {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService;->wm:Landroid/view/WindowManager;

    .line 72
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->refreshConfig()V

    .line 73
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->startAsForegroundService()V

    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Lcom/example/u7e5f3218e9/CatFloatServiceHolder;->setRunning(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->removeViews()V

    const/4 v0, 0x1

    .line 94
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/example/u7e5f3218e9/CatFloatService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Lcom/example/u7e5f3218e9/CatFloatServiceHolder;->setRunning(Z)V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->refreshConfig()V

    .line 80
    iget-object p1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->panel:Landroid/view/View;

    if-nez p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->buildPanel()V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/example/u7e5f3218e9/CatFloatService;->ball:Landroid/view/View;

    if-nez p1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->buildBall()V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/CatFloatService;->showExpanded()V

    const/4 p1, 0x2

    return p1
.end method
