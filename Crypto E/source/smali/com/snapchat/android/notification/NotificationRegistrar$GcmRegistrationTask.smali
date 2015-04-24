.class Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/notification/NotificationRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GcmRegistrationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/notification/NotificationRegistrar;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/notification/NotificationRegistrar;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/notification/NotificationRegistrar;Lcom/snapchat/android/notification/NotificationRegistrar$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;-><init>(Lcom/snapchat/android/notification/NotificationRegistrar;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-static {v0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Lcom/snapchat/android/notification/NotificationRegistrar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "191410808405"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Lcom/snapchat/android/notification/NotificationRegistrar;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    const-string v0, "NotificationRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device registered, registration id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-static {v2}, Lcom/snapchat/android/notification/NotificationRegistrar;->b(Lcom/snapchat/android/notification/NotificationRegistrar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-static {v0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Lcom/snapchat/android/notification/NotificationRegistrar;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-static {v1}, Lcom/snapchat/android/notification/NotificationRegistrar;->b(Lcom/snapchat/android/notification/NotificationRegistrar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v1, "NotificationRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-static {v0}, Lcom/snapchat/android/notification/NotificationRegistrar;->b(Lcom/snapchat/android/notification/NotificationRegistrar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/snapchat/android/api2/DeviceSyncTask;

    iget-object v1, p0, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a:Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-static {v1}, Lcom/snapchat/android/notification/NotificationRegistrar;->b(Lcom/snapchat/android/notification/NotificationRegistrar;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/DeviceSyncTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/DeviceSyncTask;->g()V

    .line 151
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/notification/NotificationRegistrar$GcmRegistrationTask;->a(Ljava/lang/Void;)V

    return-void
.end method
