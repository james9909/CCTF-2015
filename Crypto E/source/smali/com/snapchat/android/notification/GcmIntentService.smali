.class public Lcom/snapchat/android/notification/GcmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/service/SnapchatServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/notification/GcmIntentService;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v0, "GcmIntentService"

    const-string v1, "handleIntent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/cache/Storage;->a(Ljava/io/File;Ljava/io/File;)V

    .line 55
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-static {p0, v0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const-string v1, "GcmIntentService"

    const-string v2, "Running DeviceSyncTask because the user\'s notification ID is different from the GCM reg ID."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lcom/snapchat/android/api2/DeviceSyncTask;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api2/DeviceSyncTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/DeviceSyncTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sget-object v0, Lcom/snapchat/android/notification/GcmIntentService;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;Landroid/content/Intent;)I

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "GcmIntentService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent messageType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", intent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", extras="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v0, "gcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {p0, p1}, Lcom/snapchat/android/notification/GcmIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    :goto_1
    invoke-static {p1}, Lcom/snapchat/android/notification/GcmMessageReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 49
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "GcmIntentService"

    const-string v1, "GCM received a tickle for an error or deleted messages on server."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
