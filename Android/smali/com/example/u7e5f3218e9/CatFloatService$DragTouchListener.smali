.class Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;
.super Ljava/lang/Object;
.source "CatFloatService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/u7e5f3218e9/CatFloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragTouchListener"
.end annotation


# instance fields
.field private dragging:Z

.field private startX:I

.field private startY:I

.field final synthetic this$0:Lcom/example/u7e5f3218e9/CatFloatService;

.field private touchRawX:F

.field private touchRawY:F

.field private touchSlop:I


# direct methods
.method private constructor <init>(Lcom/example/u7e5f3218e9/CatFloatService;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/u7e5f3218e9/CatFloatService;Lcom/example/u7e5f3218e9/CatFloatService$1;)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;-><init>(Lcom/example/u7e5f3218e9/CatFloatService;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 627
    iget v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchSlop:I

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchSlop:I

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-static {v0}, Lcom/example/u7e5f3218e9/CatFloatService;->access$100(Lcom/example/u7e5f3218e9/CatFloatService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-static {v0}, Lcom/example/u7e5f3218e9/CatFloatService;->access$200(Lcom/example/u7e5f3218e9/CatFloatService;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-static {v0}, Lcom/example/u7e5f3218e9/CatFloatService;->access$300(Lcom/example/u7e5f3218e9/CatFloatService;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 632
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 634
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 635
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    return v1

    .line 644
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v3, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchRawX:F

    sub-float/2addr p1, v3

    float-to-int p1, p1

    .line 645
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchRawY:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    .line 646
    iget-boolean v3, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    if-nez v3, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchSlop:I

    if-gt v3, v5, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchSlop:I

    if-le v3, v5, :cond_5

    .line 648
    :cond_4
    iput-boolean v4, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    .line 650
    :cond_5
    iget-boolean v3, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    if-eqz v3, :cond_6

    .line 652
    iget v1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->startX:I

    sub-int/2addr v1, p1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 653
    iget p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->startY:I

    add-int/2addr p1, p2

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 654
    iget-object p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p1, p2}, Lcom/example/u7e5f3218e9/CatFloatService;->access$402(Lcom/example/u7e5f3218e9/CatFloatService;I)I

    .line 655
    iget-object p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p1, p2}, Lcom/example/u7e5f3218e9/CatFloatService;->access$502(Lcom/example/u7e5f3218e9/CatFloatService;I)I

    .line 657
    :try_start_0
    iget-object p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->this$0:Lcom/example/u7e5f3218e9/CatFloatService;

    invoke-static {p1}, Lcom/example/u7e5f3218e9/CatFloatService;->access$600(Lcom/example/u7e5f3218e9/CatFloatService;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v4

    :cond_6
    return v1

    .line 666
    :cond_7
    iget-boolean v0, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    .line 667
    iput-boolean v1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    if-nez v0, :cond_8

    .line 668
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_8

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_8
    return v4

    .line 637
    :cond_9
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->startX:I

    .line 638
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->startY:I

    .line 639
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchRawX:F

    .line 640
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->touchRawY:F

    .line 641
    iput-boolean v1, p0, Lcom/example/u7e5f3218e9/CatFloatService$DragTouchListener;->dragging:Z

    return v4

    :cond_a
    :goto_1
    return v1
.end method
