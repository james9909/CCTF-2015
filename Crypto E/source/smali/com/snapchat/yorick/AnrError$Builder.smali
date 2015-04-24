.class public Lcom/snapchat/yorick/AnrError$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/yorick/AnrError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\\((.*?)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snapchat/yorick/AnrError$Builder;->a:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "\\s+at\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snapchat/yorick/AnrError$Builder;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/snapchat/yorick/AnrError$Builder;->a(Ljava/lang/String;)Lcom/snapchat/yorick/AnrError$Builder;

    .line 68
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/yorick/AnrError$Builder;
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v0, "NO STACK TRACE PROVIDED"

    iput-object v0, p0, Lcom/snapchat/yorick/AnrError$Builder;->c:Ljava/lang/String;

    .line 140
    :cond_0
    :goto_0
    return-object p0

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/snapchat/yorick/AnrError$Builder;->c:Ljava/lang/String;

    .line 78
    const-string v1, "\n"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 79
    array-length v1, v5

    if-le v1, v0, :cond_0

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    move-object v2, v4

    move-object v0, v4

    .line 89
    :goto_1
    array-length v1, v5

    if-ge v3, v1, :cond_5

    .line 91
    aget-object v1, v5, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    aget-object v1, v5, v3

    invoke-virtual {p0, v1}, Lcom/snapchat/yorick/AnrError$Builder;->c(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 106
    if-nez v2, :cond_2

    aget-object v7, v5, v3

    const-string v8, "com.snapchat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v2, v1

    .line 123
    :cond_2
    if-nez v0, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {p0, v7}, Lcom/snapchat/yorick/AnrError$Builder;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v0, v1

    .line 127
    :cond_3
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v2

    .line 89
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_1

    .line 132
    :cond_5
    aget-object v1, v5, v9

    invoke-virtual {p0, v2, v0, v1}, Lcom/snapchat/yorick/AnrError$Builder;->a(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/yorick/AnrError$Builder;->c:Ljava/lang/String;

    .line 135
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 136
    new-array v0, v9, [Ljava/lang/StackTraceElement;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    iput-object v0, p0, Lcom/snapchat/yorick/AnrError$Builder;->d:[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 138
    :cond_6
    iput-object v4, p0, Lcom/snapchat/yorick/AnrError$Builder;->d:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public a()Lcom/snapchat/yorick/AnrError;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Lcom/snapchat/yorick/AnrError;

    iget-object v1, p0, Lcom/snapchat/yorick/AnrError$Builder;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/yorick/AnrError;-><init>(Ljava/lang/String;Lcom/snapchat/yorick/AnrError$1;)V

    .line 145
    iget-object v1, p0, Lcom/snapchat/yorick/AnrError$Builder;->d:[Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/snapchat/yorick/AnrError$Builder;->d:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/snapchat/yorick/AnrError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created an error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/yorick/Timber;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    return-object v0
.end method

.method protected a(Ljava/lang/StackTraceElement;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p3

    .line 179
    :cond_0
    :goto_0
    return-object p3

    .line 175
    :cond_1
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 184
    sget-object v0, Lcom/snapchat/yorick/AnrError$Builder;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 198
    sget-object v0, Lcom/snapchat/yorick/AnrError$Builder;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/snapchat/yorick/AnrError$Builder;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string v1, "\\s+at\\s+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {p0, v1}, Lcom/snapchat/yorick/AnrError$Builder;->d(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 211
    invoke-virtual {p0, v0}, Lcom/snapchat/yorick/AnrError$Builder;->e(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 213
    new-instance v4, Ljava/lang/StackTraceElement;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v4

    .line 216
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StackTraceElement;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    .line 228
    :goto_0
    const-string v2, ""

    .line 229
    const-string v1, ""

    .line 231
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v0, v1

    .line 241
    :goto_1
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 225
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_1
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 235
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object p1, v2

    goto :goto_1
.end method

.method protected e(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, -0x1

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 250
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 256
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":~"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 258
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 261
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 261
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 267
    :cond_3
    const-string v1, "Native Method"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    const/4 v0, -0x2

    goto :goto_0
.end method
