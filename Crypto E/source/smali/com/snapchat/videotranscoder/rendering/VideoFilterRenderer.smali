.class public Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioDecoderDone;,
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioExtractorDone;,
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoFilterDecoderDone;,
        Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

.field private b:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

.field private d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

.field private e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

.field private f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/Thread;

.field private o:Z

.field private p:Z

.field private q:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private r:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private s:F


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/cts/InputSurface;)V
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->g:Z

    .line 36
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->h:Z

    .line 37
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    .line 38
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->j:Z

    .line 39
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->k:Z

    .line 40
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->l:Z

    .line 42
    iput-object v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->m:Ljava/lang/Thread;

    .line 43
    iput-object v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->n:Ljava/lang/Thread;

    .line 45
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->o:Z

    .line 46
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->p:Z

    .line 47
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->q:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 48
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->r:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->s:F

    .line 64
    new-instance v0, Lcom/snapchat/videotranscoder/utils/Utils;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/Utils;-><init>()V

    const-string v1, "VideoFilterRenderer"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/Utils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "There is no looper thread"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    .line 70
    iput-object p4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->b:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->b:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->b()V

    .line 73
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Setting up video components of renderer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoExtractorDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/video/VideoExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 77
    new-instance v0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->b()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoFilterDecoderDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$VideoFilterDecoderDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->c()[F

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[F)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    .line 80
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->g()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->a(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0, p4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a(Lcom/snapchat/videotranscoder/cts/InputSurface;)V

    .line 84
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g()Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    if-ne v0, v1, :cond_1

    .line 85
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Setting up audio components of renderer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioExtractorDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioExtractorDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 87
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->b()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioDecoderDone;

    invoke-direct {v2, p0, v4}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$AudioDecoderDone;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    .line 88
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->g()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->a(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 90
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioExtractor;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->k:Z

    return p1
.end method

.method static synthetic e(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->l:Z

    return p1
.end method

.method private f()V
    .locals 3

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->q:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->r:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    iget v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->s:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a(F)V

    .line 255
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/video/VideoExtractor;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing video extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->f()V

    .line 99
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_1

    .line 103
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing rendering decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->f()V

    .line 105
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->f()V

    .line 111
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    if-eqz v0, :cond_3

    .line 115
    const-string v0, "VideoFilterRenderer"

    const-string v1, "releasing audio track decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->f()V

    .line 117
    iput-object v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    .line 119
    :cond_3
    return-void
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e:Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->a(F)V

    .line 261
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->n:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f()V

    .line 194
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->k:Z

    if-nez v0, :cond_3

    .line 195
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Calling rendering decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->d()V

    .line 197
    const-string v0, "VideoFilterRenderer"

    const-string v1, "Done calling rendering decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    if-nez v0, :cond_4

    .line 202
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->l:Z

    if-nez v0, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->l:Z

    .line 210
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->j:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d:Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->e()V

    goto :goto_0

    .line 216
    :cond_5
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->o:Z

    .line 271
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->q:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 272
    iput-object p2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->r:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 273
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;

    invoke-direct {v1, p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$1;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->m:Ljava/lang/Thread;

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;

    invoke-direct {v1, p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$2;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->n:Ljava/lang/Thread;

    .line 171
    return-void
.end method

.method public b(F)V
    .locals 1
    .parameter

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->p:Z

    .line 281
    iput p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->s:F

    .line 282
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;

    invoke-direct {v1, p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer$3;-><init>(Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->i:Z

    .line 289
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->c:Lcom/snapchat/videotranscoder/video/VideoExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoExtractor;->c()V

    .line 290
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->f:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->c()V

    .line 291
    return-void
.end method
