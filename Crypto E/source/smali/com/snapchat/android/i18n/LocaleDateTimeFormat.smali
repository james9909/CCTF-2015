.class public Lcom/snapchat/android/i18n/LocaleDateTimeFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 63
    const-string v0, "th"

    :goto_1
    return-object v0

    .line 55
    :cond_0
    rem-int/lit8 p0, p0, 0xa

    goto :goto_0

    .line 57
    :pswitch_0
    const-string v0, "st"

    goto :goto_1

    .line 59
    :pswitch_1
    const-string v0, "nd"

    goto :goto_1

    .line 61
    :pswitch_2
    const-string v0, "rd"

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lorg/joda/time/DateTime;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->a(Lorg/joda/time/DateTime;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/joda/time/DateTime;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 33
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0, p2}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->a(Lorg/joda/time/DateTime;Z)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 39
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/i18n/LocalePatterns;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/i18n/LocalePatterns;

    move-result-object v0

    .line 40
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/i18n/LocalePatterns;->b()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_1
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->a(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->a(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/i18n/LocalePatterns;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 46
    invoke-static {p0, p2}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->a(Lorg/joda/time/DateTime;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/joda/time/DateTime;Z)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->b()Lorg/joda/time/DateTime$Property;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime$Property;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->h()I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/joda/time/DateTime;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->a(Lorg/joda/time/DateTime;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
