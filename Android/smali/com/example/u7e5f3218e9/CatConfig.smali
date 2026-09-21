.class public Lcom/example/u7e5f3218e9/CatConfig;
.super Ljava/lang/Object;
.source "CatConfig.java"


# static fields
.field public static final BUILTIN_EMOTICONS:[Ljava/lang/String;

.field public static final KEY_CUSTOM_EMOTICONS:Ljava/lang/String; = "custom_emoticons"

.field public static final KEY_CUSTOM_RULES:Ljava/lang/String; = "custom_rules"

.field public static final KEY_ENABLE_EMOTICON:Ljava/lang/String; = "enable_emoticon"

.field public static final KEY_ENABLE_MEOW:Ljava/lang/String; = "enable_meow"

.field public static final KEY_ENABLE_NI:Ljava/lang/String; = "enable_ni"

.field public static final KEY_ENABLE_WO:Ljava/lang/String; = "enable_wo"

.field public static final KEY_MEOW_TEXT:Ljava/lang/String; = "meow_text"

.field public static final KEY_MEOW_TEXTS:Ljava/lang/String; = "meow_texts"

.field private static final PREFS_NAME:Ljava/lang/String; = "cat_config"


# instance fields
.field public customEmoticons:[Ljava/lang/String;

.field public customRules:Ljava/lang/String;

.field public enableMeow:Z

.field public enableNiToZhuren:Z

.field public enableRandomEmoticon:Z

.field public enableWoToBenmiao:Z

.field public meowText:Ljava/lang/String;

.field public meowTexts:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    const-string v0, "^\u232f\ud81a\udd66\u232f^ \u0a6d ^"

    const-string v1, "\u232f\'\u3145\'\u232f"

    const-string v2, "=^\ud81a\udd66^="

    const-string v3, "\u232f\u2022\u3145\u2022\u232f"

    const-string v4, "\u0e05\u2022\u0300\u2200\u2022\u0301\u0e05"

    const-string v5, "\u0e05 \u0333\u0352\u2022\u02d1\u032b\u2022 \u0333\u0352\u0e05\u2661"

    const-string v6, "\u0e05(\u0333\u2022\u00b7\u032b\u2022\u0333\u0e05)\u2661"

    const-string v7, "\u0e05^\u2022\u2022^\u0e05"

    const-string v8, "=^\u2022\u03c9\u2022^="

    const-string v9, "\u208d^ >\u30ee<^\u208e"

    const-string v10, "/\u1420 - \u02d5 -\u30de \u2cca"

    const-string v11, "\u0e05^\u2022\ufecc\u2022^\u0e05"

    const-string v12, "\u0e05\u055e\u2022\ufecc\u2022\u055e\u0e05"

    const-string v13, "(\u0e05\u00b4\u03c9`\u0e05)"

    const-string v14, "\u0e05(*`\u03c9\u00b4*)\u0e05"

    const-string v15, "\u0e05\ua4b0 \u2e1d\u02f6\u2022 \u2022\u02f6\u2e1d\ua4b1\u0e05"

    const-string v16, "\u208d\u02c4\u00b7\u0348\u0f1d\u00b7\u0348\u02c4*\u208e\u25de \u0311\u0311"

    const-string v17, "!!^\u232f\ud81a\udd66\u232f^ \u0a6d!!"

    const-string v18, "\u208d^\u2e1d\u2e1d> \u00b7\u032b <\u2e1d\u2e1d ^\u208e"

    const-string v19, "\u0e05^._.^\u0e05"

    const-string v20, "\u208d\ud83c\udf80\u02c4\u2022\u0348\u0f1d\u2022\u0348\u02c4\u208e\u0e05\u02d2\u02d2"

    const-string v21, "^\u2022\u0348\u0f1d\u2022^\u0e05"

    const-string v22, "\ua4b0\u0c0e(^ . \u0591 .^)\u0ed2\ua4b1"

    const-string v23, "\u0e05\u25cf\u03c9\u25cf\u0e05"

    const-string v24, "\u208d\u2e0d\u2e0c\u00b7\u0348\u0f1d\u00b7\u0348\u2e0d\u2e0c\u208e\u25de"

    const-string v25, "(>^\u03c9^<)"

    const-string v26, "\u0e05^-\ufe43-^\u0e05"

    const-string v27, "^ \u0333\u0da7 \u032b \u0da7 \u0333^"

    const-string v28, "\u0b67\u208d\u02c4\u00b7\u0348\u0f1d\u00b7\u0348\u02c4\u208e\u0b68"

    const-string v29, "^ \u0333\u1d17  \u032b \u1d17 \u0333^"

    const-string v30, "\u02d3\u02d3\u0e01(\u2e0d\u2e0c\u0323\u02b7\u0323\u032b\u2e0d\u0323\u2e0c\u208e\u0e04\u02d2\u02d2"

    const-string v31, "\u30fd(\u0e05\u2267\u3078\u2266)\u0e05"

    const-string v32, "(`\uff65\u03c9\uff65\u00b4)\u0e05"

    const-string v33, "(=^\uff65\u1d25\uff65^=)"

    const-string v34, "(^\u03c9^\u0e05)"

    const-string v35, "\u0e05(\u2267\u25bd\u2266)\u0e05"

    const-string v36, "\u0e05(=\u00b4\u25bd`=)\u0e05"

    const-string v37, "\u30fe((\u0e51\u02d8\u3142\u02d8\u0e51)\u0e05"

    const-string v38, "(\u0e05\u25d1\u03c9\u25d1\u0e05)"

    const-string v39, "(\u0e51\u2022\u0300\u03c9\u2022\u0301\u0e05)"

    const-string v40, "(\u0e05>\u03c9<*\u0e05)"

    const-string v41, "(=^.^=)"

    const-string v42, "(=\u00b4\u1d25`)"

    const-string v43, "(=\u2180\u03c9\u2180=)"

    const-string v44, "(=^-\u03c9-^=)"

    const-string v45, "\u0e05(*\u00b0\u03c9\u00b0*\u0e05)"

    const-string v46, "\u30fd(=^\uff65\u03c9\uff65^=)\u4e3f"

    const-string v47, "(^\u2022\u1d25\u2022^)"

    const-string v48, "( \u03a6 \u03c9 \u03a6 )"

    const-string v49, "(=^x^=)"

    const-string v50, "\u0e05( \u0333\u2022 \u25e1 \u2022 \u0333)\u0e05"

    const-string v51, "o( =\u2022\u03c9\u2022= )m"

    const-string v52, "~o( =\u2229\u03c9\u2229= )m"

    const-string v53, "\u2261\u03c9\u2261"

    .line 28
    filled-new-array/range {v0 .. v53}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/u7e5f3218e9/CatConfig;->BUILTIN_EMOTICONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    .line 96
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableWoToBenmiao:Z

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableNiToZhuren:Z

    .line 98
    iput-boolean v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    const-string v0, "\u55b5"

    .line 99
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    const-string v0, "\u6211=\u672c\u55b5\n\u4f60=\u4e3b\u4eba"

    .line 101
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    return-void
.end method

.method private static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 177
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;)Lcom/example/u7e5f3218e9/CatConfig;
    .locals 7

    const-string v0, "cat_config"

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 107
    new-instance v0, Lcom/example/u7e5f3218e9/CatConfig;

    invoke-direct {v0}, Lcom/example/u7e5f3218e9/CatConfig;-><init>()V

    const-string v2, "enable_meow"

    const/4 v3, 0x1

    .line 108
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    const-string v2, "enable_wo"

    .line 109
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableWoToBenmiao:Z

    const-string v2, "enable_ni"

    .line 110
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableNiToZhuren:Z

    const-string v2, "enable_emoticon"

    .line 111
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    const-string v2, "meow_text"

    const-string v3, "\u55b5"

    .line 112
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    const-string v4, "meow_texts"

    .line 113
    invoke-interface {p0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    iput-object v3, v0, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    :cond_1
    const-string v2, "custom_rules"

    const-string v3, "\u6211=\u672c\u55b5\n\u4f60=\u4e3b\u4eba"

    .line 117
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    const-string v2, "custom_emoticons"

    const-string v3, ""

    .line 118
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "\\n"

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v2, v0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 123
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    .line 126
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-array p0, v1, [Ljava/lang/String;

    .line 128
    iput-object p0, v0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getActiveEmoticons()[Ljava/lang/String;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lcom/example/u7e5f3218e9/CatConfig;->BUILTIN_EMOTICONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCustomReplaceRules()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0x3d

    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    aput-object v5, v6, v7

    .line 162
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public save(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cat_config"

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enable_meow"

    iget-boolean v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableMeow:Z

    .line 136
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enable_wo"

    iget-boolean v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableWoToBenmiao:Z

    .line 137
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enable_ni"

    iget-boolean v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableNiToZhuren:Z

    .line 138
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "enable_emoticon"

    iget-boolean v1, p0, Lcom/example/u7e5f3218e9/CatConfig;->enableRandomEmoticon:Z

    .line 139
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "meow_text"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->meowTexts:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->meowText:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string v2, "meow_texts"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->customRules:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    const-string v2, "custom_rules"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/example/u7e5f3218e9/CatConfig;->customEmoticons:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/example/u7e5f3218e9/CatConfig;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v0, "custom_emoticons"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
