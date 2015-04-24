.class public Lcom/snapchat/videotranscoder/video/VideoProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/video/VideoProvider$1;,
        Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;,
        Lcom/snapchat/videotranscoder/video/VideoProvider$VideoExtractorDone;
    }
.end annotation


# instance fields
.field private b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

.field private c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

.field private d:Z

.field private g:Z

.field private h:J


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->d:Z

    .line 24
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->g:Z

    .line 42
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoExtractorDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoExtractorDone;-><init>(Lcom/snapchat/videotranscoder/video/VideoProvider;Lcom/snapchat/videotranscoder/video/VideoProvider$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/video/VideoExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 43
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->b()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/video/VideoProvider$VideoDecoderDone;-><init>(Lcom/snapchat/videotranscoder/video/VideoProvider;Lcom/snapchat/videotranscoder/video/VideoProvider$1;)V

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->c()[F

    move-result-object v3

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLjava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    .line 45
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->g()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->a(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 46
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->a:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    check-cast v0, Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a(Lcom/snapchat/videotranscoder/video/VideoEncoder;)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->e()Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 49
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->h:J

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/video/VideoProvider;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/videotranscoder/video/VideoProvider;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const-string v0, "VideoProvider"

    const-string v1, "releasing video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->f()V

    .line 59
    iput-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 61
    const-string v0, "VideoProvider"

    const-string v1, "releasing video decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->f()V

    .line 63
    iput-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    .line 65
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a()V

    .line 66
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->h:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->f:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 77
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->d:Z

    if-nez v0, :cond_0

    .line 78
    const-string v0, "VideoProvider"

    const-string v1, "Calling video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->b:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->d()V

    .line 80
    const-string v0, "VideoProvider"

    const-string v1, "done Calling video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->g:Z

    if-nez v0, :cond_3

    .line 85
    const-string v0, "VideoProvider"

    const-string v1, "Calling video decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoProvider;->c:Lcom/snapchat/videotranscoder/video/VideoDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->d()V

    .line 87
    const-string v0, "VideoProvider"

    const-string v1, "done Calling video decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_1
    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoProvider;->h()V

    .line 94
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 74
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method
