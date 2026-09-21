.class Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/u7e5f3218e9/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportedConfig"
.end annotation


# instance fields
.field hasMeowSection:Z

.field meowTexts:Ljava/lang/String;

.field rules:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 343
    iput-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->meowTexts:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->rules:Ljava/lang/String;

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;->hasMeowSection:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/u7e5f3218e9/MainActivity$1;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/example/u7e5f3218e9/MainActivity$ImportedConfig;-><init>()V

    return-void
.end method
