.class public Lcom/snapchat/android/api/PostStorySnapWithMediaTask;
.super Lcom/snapchat/android/api/PostStorySnapTask;
.source "SourceFile"


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "PostStorySnapWithMediaTask"


# instance fields
.field private mData:[B

.field private final mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

.field private final mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a()Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/api/PostStorySnapTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V

    .line 33
    iput-object p3, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    .line 34
    iput-object p4, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    .line 35
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;
    .locals 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/SnapVideobryo;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    .line 54
    invoke-virtual {v0}, Lcom/snapchat/android/model/SnapVideobryo;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->c(Lcom/snapchat/android/model/SnapVideobryo;)Z

    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mData:[B

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mData:[B

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(I)V

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 72
    :goto_1
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "PostStorySnapWithMediaTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-super {p0, p1}, Lcom/snapchat/android/api/PostStorySnapTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "/bq/retry_post_story"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mData:[B

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 96
    const v0, 0x7f0c0202

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->cancel(Z)Z

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 100
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->e(Z)V

    .line 80
    new-instance v0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    iget-object v3, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    iget-object v4, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Lcom/snapchat/android/api/PostStorySnapTask;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    const-string v1, "data"

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 46
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "PostStorySnapWithMediaTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
