.class Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;
.super Ljava/lang/Object;
.source "TextProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/u7e5f3218e9/TextProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplaceRule"
.end annotation


# instance fields
.field final excludes:[Ljava/lang/String;

.field final from:Ljava/lang/String;

.field final to:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->from:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->to:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->excludes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isExcludedAt(Ljava/lang/String;I)Z
    .locals 6

    .line 29
    iget-object v0, p0, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->excludes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method
