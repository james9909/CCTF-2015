.class public Lcom/snapchat/videotranscoder/video/VideoEncoder;
.super Lcom/snapchat/videotranscoder/pipeline/Encoder;
.source "SourceFile"


# instance fields
.field private d:Lcom/snapchat/videotranscoder/cts/InputSurface;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 26
    const-string v0, "VideoEncoder"

    const-string v1, "Done Configuring video codec"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "VideoEncoder"

    const-string v1, "Creating input surface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/snapchat/videotranscoder/cts/InputSurface;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->k()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 32
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a()V

    .line 33
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->b()V

    .line 34
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->c()V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Landroid/media/MediaFormat;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->k()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->f()I

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a(Landroid/media/MediaFormat;)I

    move-result v0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->a()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->a()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "VideoEncoder"

    const-string v2, "error while releasing mInputSurface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()Lcom/snapchat/videotranscoder/cts/InputSurface;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->d:Lcom/snapchat/videotranscoder/cts/InputSurface;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoEncoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->j()V

    .line 43
    return-void
.end method
