.class public Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;
.super Lcom/snapchat/android/model/LazyMediaSource;
.source "SourceFile"


# instance fields
.field private final mAudioChannelSource:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

.field private final mCache:Lcom/snapchat/android/util/cache/Cache;

.field private final mCacheKey:Ljava/lang/String;

.field private final mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

.field private final mIsZipped:Z

.field private mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

.field private mNeedsDelete:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;ZLcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V
    .locals 1
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
    .parameter
    .end parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/model/LazyMediaSource;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mNeedsDelete:Z

    .line 51
    iput-object p1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mCache:Lcom/snapchat/android/util/cache/Cache;

    .line 52
    iput-object p2, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mCacheKey:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    .line 54
    iput-boolean p4, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mIsZipped:Z

    .line 55
    iput-object p5, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mAudioChannelSource:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    .line 56
    return-void
.end method

.method private a([B)[B
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 116
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 117
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 129
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 130
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0

    .line 133
    :cond_1
    :try_start_1
    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 139
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find media entry in zipped data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    if-nez v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mCache:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media source data not found in the cache! Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([B)[B

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to decrypt video data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mIsZipped:Z

    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0, v0}, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->a([B)[B

    move-result-object v0

    .line 83
    :cond_2
    new-instance v1, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v1}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    .line 84
    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->h:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/cache/FileUtils;->a(Lcom/snapchat/android/util/cache/CacheType;)Ljava/io/File;

    move-result-object v2

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mNeedsDelete:Z

    .line 86
    array-length v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/util/cache/FileUtils;->a(Ljava/io/File;[BI)V

    .line 88
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a()[F

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    iget-object v5, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mAudioChannelSource:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;-><init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V

    iput-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mNeedsDelete:Z

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/MediaSource;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;->mMediaSource:Lcom/snapchat/videotranscoder/task/MediaSource;

    goto :goto_0
.end method
