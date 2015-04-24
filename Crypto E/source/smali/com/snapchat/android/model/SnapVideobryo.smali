.class public Lcom/snapchat/android/model/SnapVideobryo;
.super Lcom/snapchat/android/model/Snapbryo;
.source "SourceFile"


# static fields
.field private static final RETRY_DOWNSCALE_FACTOR:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "SnapVideobryo"


# instance fields
.field private mIsMuted:Z

.field private mShader:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Snapbryo;-><init>(Lcom/snapchat/android/model/Snapbryo;)V

    .line 41
    iput-object p2, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    .line 42
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mShader:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Snapbryo;-><init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V

    .line 34
    new-instance v0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    .line 35
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mShader:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 36
    return-void
.end method

.method private ad()[B
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 166
    :cond_0
    :try_start_0
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    const-string v1, "Snapchat-"

    const-string v2, ".zip.nomedia"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/cache/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/snapchat/android/util/ZipArchive;

    invoke-direct {v1}, Lcom/snapchat/android/util/ZipArchive;-><init>()V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/util/ZipArchive;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;Z)V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overlay~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/ZipArchive;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Lcom/snapchat/android/util/ZipArchive;->a()V

    .line 172
    invoke-virtual {v1}, Lcom/snapchat/android/util/ZipArchive;->b()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 173
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public Q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->S()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public R()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a()I

    move-result v0

    return v0
.end method

.method public S()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->j:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a(Lcom/snapchat/android/util/cache/CacheType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    return-object v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->d()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->e()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->X()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a(Z)Z

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->Y()J

    move-result-wide v0

    const-wide/32 v2, 0x1a6667

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()J
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/FileUtils;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 189
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Z()J
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/FileUtils;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Lcom/snapchat/android/model/Snapbryo;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/snapchat/android/model/SnapVideobryo;

    iget-object v1, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/SnapVideobryo;-><init>(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/snapchat/android/model/Snapbryo;->a(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mIsZipUpload:Z

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mIsZipUpload:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 100
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/android/model/SnapVideobryo;->mShader:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 61
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mIsMuted:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x2

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mTranscodingState:Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 108
    return-void
.end method

.method public c(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapVideobryo;->e(Z)V

    .line 112
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapVideobryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 113
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapVideobryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 114
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapVideobryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 115
    const-string v0, "SnapVideobryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcoding failed with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failing upload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mIsMuted:Z

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const v4, 0x3f4ccccd

    .line 140
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    const/4 v0, 0x0

    .line 155
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->B()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/snapchat/android/model/SnapVideobryo;->ad()[B

    move-result-object v0

    .line 147
    :goto_1
    if-eqz v0, :cond_0

    array-length v2, v0

    const/high16 v3, 0x28

    if-lt v2, v3, :cond_0

    .line 148
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 151
    invoke-direct {p0}, Lcom/snapchat/android/model/SnapVideobryo;->ad()[B

    move-result-object v0

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic e()Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapVideobryo;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/model/SnapVideobryo;->mShader:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    return-object v0
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/snapchat/android/model/SnapVideobryo;->mIsMuted:Z

    .line 53
    return-void
.end method
