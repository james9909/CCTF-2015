.class public Lcom/snapchat/android/model/LazyImageMediaSourceFromData;
.super Lcom/snapchat/android/model/LazyMediaSource;
.source "SourceFile"


# instance fields
.field private final mCache:Lcom/snapchat/android/util/cache/Cache;

.field private final mCacheKey:Ljava/lang/String;

.field private final mDisplayTimeMs:J

.field private final mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

.field private mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

.field private mNeedsDelete:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;J)V
    .locals 4
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/model/LazyMediaSource;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mNeedsDelete:Z

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display time must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mCache:Lcom/snapchat/android/util/cache/Cache;

    .line 50
    iput-object p2, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mCacheKey:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    .line 52
    iput-wide p4, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mDisplayTimeMs:J

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    if-nez v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mCache:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media source data not found in the cache! Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([B)[B

    move-result-object v0

    .line 72
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/content/Context;[BLandroid/graphics/Bitmap$Config;)Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to decode bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v1, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v1}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/FileUtils;->d()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 81
    const/4 v2, 0x0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 86
    new-instance v0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    iget-wide v4, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mDisplayTimeMs:J

    invoke-direct {v0, v3, v4, v5}, Lcom/snapchat/videotranscoder/task/ImageMediaSource;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mNeedsDelete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v0

    .line 89
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mNeedsDelete:Z

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/MediaSource;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    goto :goto_0
.end method
