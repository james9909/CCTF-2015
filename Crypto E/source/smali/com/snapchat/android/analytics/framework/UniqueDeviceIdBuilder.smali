.class public Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/UUID;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->b(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->c(Landroid/content/Context;)Ljava/util/UUID;

    .line 58
    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 59
    :cond_1
    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/util/UUID;
    .locals 3
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "9774d56d682e549c"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    :try_start_0
    const-string v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    const-string v2, "UniqueDeviceIdentifier"

    invoke-static {v2, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c(Landroid/content/Context;)Ljava/util/UUID;
    .locals 3
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 80
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    move-object v0, v1

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    :try_start_0
    const-string v2, "utf8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v2, "UniqueDeviceIdentifier"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 86
    goto :goto_0
.end method
