.class public Lcom/snapchat/android/util/BirthdayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/GregorianCalendar;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 32
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/GregorianCalendar;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 36
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 37
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 38
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 39
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 40
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sub-int v0, v1, v0

    .line 41
    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-lt v2, v1, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 43
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 45
    :cond_1
    return v0
.end method
