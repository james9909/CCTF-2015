.class public abstract Lcom/snapchat/android/util/ScTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)I
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 69
    :cond_0
    const-string v2, "A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    const-string v2, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    move v0, v1

    .line 72
    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 34
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 35
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-static {p1}, Lcom/snapchat/android/util/ApacheStringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p2}, Lcom/snapchat/android/util/ApacheStringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v1, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 46
    invoke-static {p0}, Lcom/snapchat/android/util/ScTextUtils;->a(Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-static {p1}, Lcom/snapchat/android/util/ScTextUtils;->a(Ljava/lang/String;)I

    move-result v1

    .line 49
    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 53
    :cond_0
    if-nez v0, :cond_1

    .line 54
    const/4 v0, -0x1

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 21
    invoke-static {p1}, Lcom/snapchat/android/util/ApacheStringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {p2}, Lcom/snapchat/android/util/ApacheStringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
