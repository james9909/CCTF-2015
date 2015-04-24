.class public Lcom/snapchat/android/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/util/DateTimeUtils;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/joda/time/LocalDate;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(J)V

    invoke-virtual {v1}, Lorg/joda/time/LocalDate;->d()Lorg/joda/time/DateTime;

    move-result-object v0

    .line 65
    new-instance v1, Lorg/joda/time/LocalDate;

    invoke-direct {v1, p0, p1}, Lorg/joda/time/LocalDate;-><init>(J)V

    invoke-virtual {v1}, Lorg/joda/time/LocalDate;->d()Lorg/joda/time/DateTime;

    move-result-object v1

    .line 67
    invoke-static {v1, v0}, Lorg/joda/time/Days;->a(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    sget-object v4, Lorg/joda/time/Days;->a:Lorg/joda/time/Days;

    if-ne v2, v4, :cond_0

    .line 71
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    sget-object v4, Lorg/joda/time/Days;->b:Lorg/joda/time/Days;

    if-ne v2, v4, :cond_1

    .line 73
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_1
    sget-object v4, Lorg/joda/time/Days;->h:Lorg/joda/time/Days;

    invoke-virtual {v2, v4}, Lorg/joda/time/Days;->a(Lorg/joda/time/Days;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->c()Lorg/joda/time/DateTime$Property;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTime$Property;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->f()I

    move-result v2

    .line 79
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->f()I

    move-result v0

    .line 81
    if-eq v2, v0, :cond_3

    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->b(Lorg/joda/time/DateTime;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/i18n/LocaleDateTimeFormat;->a(Lorg/joda/time/DateTime;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 42
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 44
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/util/DateTimeUtils;->a:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 31
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/util/DateTimeUtils;->a:Ljava/text/DateFormat;

    .line 33
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/DateTimeUtils;->a:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static a(Ljava/util/Calendar;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 93
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    return-void
.end method

.method public static a(JJ)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x1

    .line 108
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 109
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 111
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 112
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 116
    if-ne v2, v4, :cond_0

    if-eq v3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0xea60

    .line 48
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 54
    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 55
    const v0, 0x7f0c0111

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 57
    invoke-static {p1, p2}, Lcom/snapchat/android/util/DateTimeUtils;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
