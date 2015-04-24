.class public Lcom/snapchat/videotranscoder/audio/AudioProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/audio/AudioProvider$1;,
        Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;,
        Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;
    }
.end annotation


# instance fields
.field private b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

.field private c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

.field private d:Z

.field private g:Z

.field private h:J


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 4
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

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 22
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->d:Z

    .line 23
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->g:Z

    .line 41
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioExtractorDone;-><init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;Lcom/snapchat/videotranscoder/audio/AudioProvider$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 42
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->b()Landroid/media/MediaFormat;

    move-result-object v1

    new-instance v2, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/videotranscoder/audio/AudioProvider$AudioDecoderDone;-><init>(Lcom/snapchat/videotranscoder/audio/AudioProvider;Lcom/snapchat/videotranscoder/audio/AudioProvider$1;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    .line 43
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->g()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->a(Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 44
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->a:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a(Lcom/snapchat/videotranscoder/pipeline/Encoder;)V

    .line 46
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->h:J

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/audio/AudioProvider;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/videotranscoder/audio/AudioProvider;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->g:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "AudioProvider"

    const-string v1, "releasing audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->f()V

    .line 56
    iput-object v2, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    .line 58
    const-string v0, "AudioProvider"

    const-string v1, "releasing audio, decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->f()V

    .line 60
    iput-object v2, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    .line 62
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a()V

    .line 63
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->g()J

    move-result-wide v0

    .line 113
    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->h:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->f:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 74
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->d:Z

    if-nez v0, :cond_0

    .line 75
    const-string v0, "AudioProvider"

    const-string v1, "Calling audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->b:Lcom/snapchat/videotranscoder/audio/AudioExtractor;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioExtractor;->d()V

    .line 77
    const-string v0, "AudioProvider"

    const-string v1, "done Calling audio extractor"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->g:Z

    if-nez v0, :cond_3

    .line 82
    const-string v0, "AudioProvider"

    const-string v1, "Calling audio decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioProvider;->c:Lcom/snapchat/videotranscoder/audio/AudioDecoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->d()V

    .line 84
    const-string v0, "AudioProvider"

    const-string v1, "done Calling audio decoder"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_1
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioProvider;->h()V

    .line 91
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 71
    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method
