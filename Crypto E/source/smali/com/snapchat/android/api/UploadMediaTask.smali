.class public Lcom/snapchat/android/api/UploadMediaTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/UploadMediaTask$UploadMediaException;
    }
.end annotation


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "UploadMediaTask"


# instance fields
.field public mData:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected mDataLength:I

.field private final mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

.field public mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

.field protected mUser:Lcom/snapchat/android/model/User;

.field private final mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a()Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/api/UploadMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 45
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mUser:Lcom/snapchat/android/model/User;

    .line 46
    iput-object p1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 47
    iput-object p2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    .line 48
    iput-object p3, p0, Lcom/snapchat/android/api/UploadMediaTask;->mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    .line 49
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :try_start_0
    new-instance v0, Lcom/snapchat/android/controller/SendSnapController;

    invoke-direct {v0}, Lcom/snapchat/android/controller/SendSnapController;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/controller/SendSnapController;->e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    :try_end_0
    .catch Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :goto_1
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;
    .locals 2
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/api/UploadMediaTask;->k()V

    .line 62
    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/UploadMediaTask;->a([B)V

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mData:[B

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 68
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "/ph/upload"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    if-ne v0, v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->P()Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->e(Z)V

    .line 161
    new-instance v0, Lcom/snapchat/android/api/UploadMediaTask;

    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    iget-object v3, p0, Lcom/snapchat/android/api/UploadMediaTask;->mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/api/UploadMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UploadMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/api/UploadMediaTask;->g()I

    move-result v0

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 168
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "413 REQUEST_ENTITY_TOO_LARGE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    .line 169
    const-string v1, "filter"

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 170
    const-string v1, "size"

    iget v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mDataLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 171
    const-string v1, "type"

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 172
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 164
    invoke-direct {p0}, Lcom/snapchat/android/api/UploadMediaTask;->l()V

    goto :goto_1
.end method

.method protected a([B)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mData:[B

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mDataLength:I

    .line 75
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v1, v1, Lcom/snapchat/android/discover/model/DSnapbryo;

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v3}, Lcom/snapchat/android/model/AnnotatedMediabryo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mData:[B

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v1

    .line 103
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v1, "type"

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "data"

    iget-object v2, p0, Lcom/snapchat/android/api/UploadMediaTask;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    if-ne v0, v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 138
    invoke-direct {p0}, Lcom/snapchat/android/api/UploadMediaTask;->l()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "UploadMediaTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/UploadMediaTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->onCancelled(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method protected k()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/SnapVideobryo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SnapVideobryo;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mVideoTranscoder:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->c(Lcom/snapchat/android/model/SnapVideobryo;)Z

    move-result v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapWomb:Lcom/snapchat/android/model/SnapWomb;

    iget-object v1, p0, Lcom/snapchat/android/api/UploadMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "UploadMediaTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/UploadMediaTask;->e(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/UploadMediaTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
