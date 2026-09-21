.class public Lcom/example/u7e5f3218e9/TextProcessor;
.super Ljava/lang/Object;
.source "TextProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final SENTENCE_SPLIT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/example/u7e5f3218e9/TextProcessor;->RANDOM:Ljava/util/Random;

    const-string v0, "([\uff0c,\u3002\uff01!\uff1f?\\s]+)"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/example/u7e5f3218e9/TextProcessor;->SENTENCE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMeow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "\\n"

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    sget-object v3, Lcom/example/u7e5f3218e9/TextProcessor;->SENTENCE_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    move v4, v1

    .line 98
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 100
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, ""

    if-ge v4, v3, :cond_3

    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 108
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v4, v3, :cond_4

    .line 109
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v5

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/example/u7e5f3218e9/TextProcessor;->RANDOM:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 124
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 128
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    sget-object p1, Lcom/example/u7e5f3218e9/TextProcessor;->RANDOM:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_b
    return-object p1
.end method

.method private static applyAtomicReplace(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 142
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;

    if-eqz v6, :cond_0

    .line 147
    iget-object v7, v6, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->from:Ljava/lang/String;

    if-nez v7, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v7, v6, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->from:Ljava/lang/String;

    .line 149
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_3

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, p0, v2}, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->isExcludedAt(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 152
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_4

    .line 155
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 156
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_1

    :cond_4
    if-ne v7, v5, :cond_0

    .line 158
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 164
    sget-object v4, Lcom/example/u7e5f3218e9/TextProcessor;->RANDOM:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;

    .line 165
    iget-object v4, v3, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->to:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v3, v3, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;->to:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v3, ""

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    goto :goto_0

    .line 168
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 172
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRandomEmoticon(Lcom/example/u7e5f3218e9/CatConfig;)Ljava/lang/String;
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/example/u7e5f3218e9/CatConfig;->getActiveEmoticons()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 212
    array-length v0, p0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    sget-object p0, Lcom/example/u7e5f3218e9/CatConfig;->BUILTIN_EMOTICONS:[Ljava/lang/String;

    .line 215
    :cond_1
    array-length v0, p0

    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    .line 216
    :cond_2
    sget-object v0, Lcom/example/u7e5f3218e9/TextProcessor;->RANDOM:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static parseCustomReplaceRules(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_7

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "\\n"

    .line 180
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 181
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x3d

    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_3

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    new-array v5, v2, [Ljava/lang/String;

    const/16 v7, 0x2d

    .line 193
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_6

    .line 195
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 196
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v5, "[\uff0c,;\uff1b|/]+"

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v4, v8

    .line 202
    :cond_6
    new-instance v7, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;

    invoke-direct {v7, v6, v4, v5}, Lcom/example/u7e5f3218e9/TextProcessor$ReplaceRule;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static process(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Lcom/example/u7e5f3218e9/CatConfig;

    invoke-direct {v0}, Lcom/example/u7e5f3218e9/CatConfig;-><init>()V

    const/4 v1, 0x1

    .line 224
    iput-boolean v1, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    const/4 v2, 0x0

    .line 225
    iput-boolean v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableWoToBenmiao:Z

    .line 226
    iput-boolean v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableNiToZhuren:Z

    .line 227
    iput-boolean v1, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    const-string v1, "\u55b5"

    .line 228
    iput-object v1, v0, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    const-string v1, ""

    .line 229
    iput-object v1, v0, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    .line 230
    iput-object v1, v0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    .line 231
    invoke-static {p0, v0}, Lcom/example/u7e5f3218e9/TextProcessor;->process(Ljava/lang/String;Lcom/example/u7e5f3218e9/CatConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static process(Ljava/lang/String;Lcom/example/u7e5f3218e9/CatConfig;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 60
    iget-object v0, p1, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    invoke-static {v0}, Lcom/example/u7e5f3218e9/TextProcessor;->parseCustomReplaceRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    invoke-static {p0, v0}, Lcom/example/u7e5f3218e9/TextProcessor;->applyAtomicReplace(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 66
    :cond_1
    iget-boolean v0, p1, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0}, Lcom/example/u7e5f3218e9/TextProcessor;->addMeow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    :cond_3
    iget-boolean v0, p1, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    if-eqz v0, :cond_4

    .line 72
    invoke-static {p1}, Lcom/example/u7e5f3218e9/TextProcessor;->getRandomEmoticon(Lcom/example/u7e5f3218e9/CatConfig;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method
