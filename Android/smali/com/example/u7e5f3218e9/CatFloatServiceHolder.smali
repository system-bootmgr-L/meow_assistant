.class public final Lcom/example/u7e5f3218e9/CatFloatServiceHolder;
.super Ljava/lang/Object;
.source "CatFloatServiceHolder.java"


# static fields
.field private static volatile running:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunning()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/example/u7e5f3218e9/CatFloatServiceHolder;->running:Z

    return v0
.end method

.method public static setRunning(Z)V
    .locals 0

    .line 16
    sput-boolean p0, Lcom/example/u7e5f3218e9/CatFloatServiceHolder;->running:Z

    return-void
.end method
