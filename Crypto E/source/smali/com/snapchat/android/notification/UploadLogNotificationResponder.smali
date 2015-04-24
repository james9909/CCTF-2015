.class public Lcom/snapchat/android/notification/UploadLogNotificationResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/notification/NotificationResponder;


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/io/File;

.field c:Lcom/snapchat/android/api2/FileUploadTask;

.field d:Lcom/snapchat/android/api2/FileUploadTask;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "^_^"

    iput-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->g:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->e:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->f:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->b()V

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->c()V

    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->d()V

    .line 39
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->a:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->b:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method c()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->f:Ljava/lang/String;

    const-string v1, "^_^"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://basic-strata-577.appspot.com/maniphest/attachRemoteLog?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n&taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/snapchat/android/api2/FileUploadTask;

    iget-object v2, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->a:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Lcom/snapchat/android/api2/FileUploadTask;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->c:Lcom/snapchat/android/api2/FileUploadTask;

    .line 64
    new-instance v1, Lcom/snapchat/android/api2/FileUploadTask;

    iget-object v2, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->b:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Lcom/snapchat/android/api2/FileUploadTask;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->d:Lcom/snapchat/android/api2/FileUploadTask;

    .line 65
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->c:Lcom/snapchat/android/api2/FileUploadTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/FileUploadTask;->g()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/notification/UploadLogNotificationResponder;->d:Lcom/snapchat/android/api2/FileUploadTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/FileUploadTask;->g()V

    .line 76
    :cond_1
    return-void
.end method
