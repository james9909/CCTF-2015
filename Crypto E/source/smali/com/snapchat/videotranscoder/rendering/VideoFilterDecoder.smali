.class public Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;
.super Lcom/snapchat/videotranscoder/video/VideoDecoder;
.source "SourceFile"


# instance fields
.field private g:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private h:J

.field private i:J

.field private final j:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[F)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    new-instance v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-direct {v0, p3}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;-><init>([F)V

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/cts/OutputSurface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 24
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    .line 25
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->i:J

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->j:I

    .line 42
    return-void
.end method

.method private i()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x0

    .line 116
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long/2addr v2, v8

    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    .line 119
    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->i:J

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->i:J

    sub-long/2addr v2, v4

    .line 125
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    add-long/2addr v4, v2

    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    .line 127
    const-wide/16 v8, 0x64

    sub-long/2addr v4, v8

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    .line 129
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    .line 130
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->i:J

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->a(F)V

    .line 67
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/cts/InputSurface;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->g:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 61
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 77
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 83
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->g:Lcom/snapchat/videotranscoder/cts/InputSurface;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Error getting input surface"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->d()V

    .line 92
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->c()V

    .line 93
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->g:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->c()Z

    .line 95
    iput v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->b:I

    .line 96
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "VideoFilterDecoder"

    const-string v1, "Rendering decoder: EOS"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h()V

    .line 99
    iput v2, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->b:I

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->h()V

    .line 52
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->h:J

    .line 53
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->c()V

    .line 108
    iget-object v0, p0, Lcom/snapchat/videotranscoder/rendering/VideoFilterDecoder;->g:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->c()Z

    .line 109
    return-void
.end method
