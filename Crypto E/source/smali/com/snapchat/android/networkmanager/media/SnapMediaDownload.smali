.class Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;
.super Lcom/snapchat/android/networkmanager/media/MediaDownload;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/model/ReceivedSnap;

.field private final c:Lcom/snapchat/android/util/cache/Cache;

.field private volatile d:Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/cache/Cache;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/android/networkmanager/DownloadManager;->a()Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;-><init>(Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/cache/Cache;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/cache/Cache;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/snapchat/android/networkmanager/media/MediaDownload;-><init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->d:Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;

    .line 37
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    .line 38
    iput-object p3, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->c:Lcom/snapchat/android/util/cache/Cache;

    .line 39
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-nez p2, :cond_0

    .line 61
    const-string v0, "SnapMediaDownload"

    const-string v2, "NetworkResult is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 115
    :goto_0
    return v0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    instance-of v3, v2, Lcom/snapchat/android/model/StorySnap;

    .line 67
    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    const/16 v4, 0x19a

    if-ne v2, v4, :cond_1

    .line 70
    const-string v2, "SnapMediaDownload"

    const-string v3, "SNAP-LOG: MARKING snap from %s as viewed (HTTP-GONE) (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v5}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v5}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->r()V

    .line 73
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "SNAP_MEDIA_DOWNLOAD_410_HTTP_GONE"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    move v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_2

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aG()V

    .line 79
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->e()V

    move v0, v1

    .line 80
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    const-string v0, "SnapMediaDownload"

    const-string v2, "NetworkResult was unsuccessful"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 87
    goto :goto_0

    .line 92
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v2

    if-lez v2, :cond_4

    .line 93
    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 94
    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v5

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    if-nez v3, :cond_5

    .line 100
    iget-object v3, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v3

    .line 101
    invoke-virtual {v3, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    const-string v0, "SnapMediaDownload"

    const-string v2, "loadAndSaveData: CbcEncryptionAlgorithm decrypted null data"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 104
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 96
    goto/16 :goto_0

    .line 109
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->c:Lcom/snapchat/android/util/cache/Cache;

    iget-object v4, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    iput-object v0, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->d:Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;

    move v0, v1

    .line 112
    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->b(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->d:Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->d:Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;

    throw v0

    .line 55
    :cond_0
    return v0
.end method
