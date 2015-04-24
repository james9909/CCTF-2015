.class public Lcom/snapchat/videotranscoder/audio/AudioDecoder;
.super Lcom/snapchat/videotranscoder/pipeline/Decoder;
.source "SourceFile"


# instance fields
.field protected a:J

.field private d:Lcom/snapchat/videotranscoder/pipeline/Codec;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Decoder;-><init>(Landroid/media/MediaFormat;Landroid/view/Surface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a:J

    .line 27
    return-void
.end method


# virtual methods
.method protected a(I)J
    .locals 6
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 78
    const-string v2, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio decoder: pending buffer of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " At "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 80
    :goto_0
    if-eqz v2, :cond_1

    .line 81
    const-string v2, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio decoder out of sync last:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a:J

    .line 89
    :goto_1
    return-wide v0

    .line 79
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 86
    :cond_1
    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a:J

    goto :goto_1
.end method

.method protected a()V
    .locals 6

    .prologue
    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    .line 35
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(J)I

    move-result v0

    .line 36
    const-string v1, "AUDIODECODER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returned index was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-gez v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->b(I)V

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const-string v1, "AUDIODECODER"

    const-string v2, "audio decoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IZ)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "AUDIODECODER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio decoder: returned buffer for time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "AUDIODECODER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio decoder: output buffer is now pending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    goto :goto_0
.end method

.method public a(Lcom/snapchat/videotranscoder/pipeline/Encoder;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->d:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 31
    return-void
.end method

.method protected b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->d:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/videotranscoder/pipeline/Codec;->b(J)I

    move-result v1

    .line 54
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 55
    const-string v0, "AUDIODECODER"

    const-string v1, "no audio encoder input buffer"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio decoder: attempting to process pending buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "AUDIODECODER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio encoder: returned input buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->d:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v3

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 63
    invoke-virtual {p0, v3}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a(I)J

    move-result-wide v4

    .line 64
    if-ltz v3, :cond_1

    .line 66
    iget-object v6, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget v7, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    invoke-virtual {v6, v7}, Lcom/snapchat/videotranscoder/pipeline/Codec;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 67
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->d:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget-object v6, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v6

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IIIJI)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c()V

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget v1, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IZ)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "AUDIODECODER"

    const-string v1, "audio decoder: EOS"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->h()V

    .line 98
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    .line 99
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 103
    iget v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a()V

    .line 106
    :cond_0
    iget v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b:I

    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->b()V

    .line 109
    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->h()V

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->a:J

    .line 118
    return-void
.end method
