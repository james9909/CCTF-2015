.class public abstract Lcom/snapchat/android/networkmanager/media/MediaDownload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/snapchat/android/networkmanager/DownloadManager$Callback;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private final c:Lcom/snapchat/android/networkmanager/DownloadManager;

.field private volatile d:Z


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->b:Ljava/util/concurrent/CountDownLatch;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->d:Z

    .line 73
    new-instance v0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;-><init>(Lcom/snapchat/android/networkmanager/media/MediaDownload;)V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a:Lcom/snapchat/android/networkmanager/DownloadManager$Callback;

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->c:Lcom/snapchat/android/networkmanager/DownloadManager;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/networkmanager/media/MediaDownload;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/networkmanager/media/MediaDownload;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->d:Z

    return p1
.end method


# virtual methods
.method protected abstract a(Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)Z
.end method

.method protected b(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Landroid/os/Bundle;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a()Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->c:Lcom/snapchat/android/networkmanager/DownloadManager;

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a:Lcom/snapchat/android/networkmanager/DownloadManager$Callback;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload;->d:Z

    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v0, "MediaDownload"

    const-string v1, "Interrupt while waiting for latch!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
