.class public Lcom/snapchat/videotranscoder/video/VideoDecoder;
.super Lcom/snapchat/videotranscoder/pipeline/Decoder;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

.field d:I

.field private g:Lcom/snapchat/videotranscoder/video/VideoEncoder;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/cts/OutputSurface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 2
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
    .line 74
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->b()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/snapchat/videotranscoder/pipeline/Decoder;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->d:I

    .line 77
    iput-object p2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 78
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Output surface was null"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLjava/lang/String;)V
    .locals 6
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 55
    new-instance v1, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;

    invoke-direct {v1}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLjava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;[FLjava/lang/String;)V
    .locals 1
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-virtual {p1, p4, p5}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;->a([FLjava/lang/String;)Lcom/snapchat/videotranscoder/cts/OutputSurface;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/snapchat/videotranscoder/video/VideoDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/cts/OutputSurface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(J)I

    move-result v1

    .line 132
    const-string v2, "VIDEODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was returned"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-gez v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->b(I)V

    .line 148
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IZ)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 142
    :cond_2
    const-string v2, "VIDEODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video decoder: returned buffer for time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v4}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Rending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IZ)V

    .line 147
    iput v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->b:I

    goto :goto_0
.end method

.method public a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 3
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    sget-object p1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-eqz v0, :cond_1

    .line 90
    const-string v0, "VIDEODECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting output surface shader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-static {p1}, Lcom/snapchat/videotranscoder/video/ShaderText;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a(Ljava/lang/String;)V

    .line 93
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/video/VideoEncoder;)V
    .locals 3
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->g:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 97
    const-string v0, "VIDEODECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting encoder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->g:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 153
    const-string v0, "VIDEODECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output surface: await new image trie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->d:I

    .line 155
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->g:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->e()Lcom/snapchat/videotranscoder/cts/InputSurface;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Error getting encoder input surface"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->c()V

    .line 162
    iget-object v1, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/videotranscoder/cts/InputSurface;->a(J)V

    .line 163
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->c()Z

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->b:I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->d:I

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "VIDEODECODER"

    const-string v1, "video decoder: EOS"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->g:Lcom/snapchat/videotranscoder/video/VideoEncoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->f()V

    .line 170
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->h()V

    .line 172
    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 121
    iget v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->b:I

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a()V

    .line 124
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->b:I

    if-eq v0, v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/VideoDecoder;->b()V

    .line 127
    :cond_1
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->d()V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "VIDEODECODER"

    const-string v1, "releasing output surface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/VideoDecoder;->a:Lcom/snapchat/videotranscoder/cts/OutputSurface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v1, "VIDEODECODER"

    const-string v2, "error while releasing mDecoderOutputSurface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
