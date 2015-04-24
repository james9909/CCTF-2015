.class public Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/snapchat/android/model/AnnotatedMediabryo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/model/SnapWomb;

.field private final b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a()Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;-><init>(Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a:Lcom/snapchat/android/model/SnapWomb;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    .line 27
    return-void
.end method

.method private b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/Void;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 31
    aget-object v0, p1, v4

    .line 32
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 34
    const-string v1, "SaveSentSnapToCacheTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save the media to the cache! of type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v1

    if-nez v1, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)Z

    .line 40
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_1
    instance-of v1, v0, Lcom/snapchat/android/model/SnapVideobryo;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a(Lcom/snapchat/android/model/SnapVideobryo;)Z

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/AnnotatedMediabryo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "External storage not available."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/SnapVideobryo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->c(Lcom/snapchat/android/model/SnapVideobryo;)Z

    move-result v1

    .line 70
    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->Q()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "Snap does not have valid media"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/SnapVideobryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 92
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a(Lcom/snapchat/android/model/SnapVideobryo;)V

    .line 84
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "Transcoding finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    const-string v2, "SaveSentSnapToCacheTask"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :catch_1
    move-exception v1

    .line 89
    const-string v1, "SaveSentSnapToCacheTask"

    const-string v2, "External storage not available."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 14
    check-cast p1, [Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->a([Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
