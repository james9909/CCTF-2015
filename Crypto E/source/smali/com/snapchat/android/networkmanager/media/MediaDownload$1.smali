.class Lcom/snapchat/android/networkmanager/media/MediaDownload$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/networkmanager/DownloadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/media/MediaDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/networkmanager/media/MediaDownload;


# direct methods
.method constructor <init>(Lcom/snapchat/android/networkmanager/media/MediaDownload;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a(Lcom/snapchat/android/networkmanager/media/MediaDownload;Z)Z

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    invoke-static {v0}, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a(Lcom/snapchat/android/networkmanager/media/MediaDownload;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 87
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    invoke-virtual {v1, p2, p3}, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a(Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a(Lcom/snapchat/android/networkmanager/media/MediaDownload;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    invoke-static {v0}, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a(Lcom/snapchat/android/networkmanager/media/MediaDownload;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownload$1;->a:Lcom/snapchat/android/networkmanager/media/MediaDownload;

    invoke-static {v1}, Lcom/snapchat/android/networkmanager/media/MediaDownload;->a(Lcom/snapchat/android/networkmanager/media/MediaDownload;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
