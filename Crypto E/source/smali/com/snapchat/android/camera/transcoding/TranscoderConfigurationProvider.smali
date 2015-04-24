.class public Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/model/SnapVideobryo;

.field private final b:Lcom/snapchat/videotranscoder/utils/MimeTools;

.field private final c:Lcom/snapchat/android/util/debug/ExceptionReporter;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/SnapVideobryo;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    new-instance v1, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v1}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;-><init>(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/utils/MimeTools;Lcom/snapchat/android/util/debug/ExceptionReporter;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/utils/MimeTools;Lcom/snapchat/android/util/debug/ExceptionReporter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a:Lcom/snapchat/android/model/SnapVideobryo;

    .line 46
    iput-object p2, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    .line 47
    iput-object p3, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->c:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 48
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/snapchat/android/util/Resolution;
    .locals 3
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/snapchat/android/util/Resolution;

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v1, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->d(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v2, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->e(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected a(I)I
    .locals 2
    .parameter

    .prologue
    .line 124
    const v0, 0x1a6667

    div-int/2addr v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x8

    .line 125
    const v1, 0x3d0900

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a(Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;JILcom/snapchat/android/util/Resolution;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p1, p4}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;->a(I)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/FailedToFindAcceptableTranscodingResolutionException;

    invoke-direct {v0, p5}, Lcom/snapchat/android/analytics/handledexceptions/FailedToFindAcceptableTranscodingResolutionException;-><init>(Lcom/snapchat/android/util/Resolution;)V

    .line 60
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->c:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    const-string v0, "video/avc"

    invoke-virtual {p5}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    invoke-virtual {p5}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 68
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 69
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 71
    const-string v1, "durationUs"

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 72
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 73
    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 74
    new-instance v1, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v2, "video/avc"

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-object v1

    :cond_0
    move-object p5, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 3
    .parameter

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->a(Ljava/lang/String;Z)Landroid/media/MediaFormat;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->d(Landroid/media/MediaFormat;)I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v2, v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;->e(Landroid/media/MediaFormat;)I

    move-result v0

    .line 82
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v1, v0}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 84
    const-string v1, "bitrate"

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    new-instance v1, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    const-string v2, "audio/mp4a-latm"

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;-><init>(Ljava/lang/String;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;
    .locals 14
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->c(Ljava/lang/String;)Lcom/snapchat/android/util/Resolution;

    move-result-object v7

    .line 93
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a()Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;

    move-result-object v0

    .line 95
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->c(Ljava/lang/String;)Lcom/snapchat/android/util/Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFactory;->a(Lcom/snapchat/android/util/Resolution;)Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;

    move-result-object v8

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b:Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->c(Ljava/lang/String;)J

    move-result-wide v10

    .line 98
    long-to-int v0, v10

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a(I)I

    move-result v9

    .line 100
    new-instance v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a:Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapVideobryo;->ac()[F

    move-result-object v2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a:Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapVideobryo;->f()Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v4

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a:Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapVideobryo;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->b:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    :goto_0
    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;-><init>(Ljava/lang/String;[FLjava/lang/String;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V

    .line 110
    new-instance v6, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    const/4 v1, 0x1

    new-array v12, v1, [Lcom/snapchat/videotranscoder/task/MediaSource;

    const/4 v1, 0x0

    aput-object v0, v12, v1

    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a:Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SnapVideobryo;->S()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    move-object v1, v8

    move-wide v2, v10

    move v4, v9

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a(Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;JILcom/snapchat/android/util/Resolution;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->a(Ljava/lang/String;)Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;-><init>([Lcom/snapchat/videotranscoder/task/MediaSource;Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    return-object v6

    .line 100
    :cond_0
    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    goto :goto_0
.end method
