.class public abstract Lcom/snapchat/videotranscoder/pipeline/Encoder;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

.field public final b:Lcom/snapchat/videotranscoder/pipeline/Codec;

.field protected c:I

.field private d:J

.field private final g:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Z)V
    .locals 7
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
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Codec;

    new-instance v1, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/videotranscoder/utils/MimeTools;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->b()Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v5, 0x1

    move-object v4, v3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/snapchat/videotranscoder/pipeline/Encoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/Codec;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/Codec;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->c:I

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->d:J

    .line 62
    iput-object p2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    .line 63
    iput-object p3, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 64
    iput-object p4, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->g:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    .line 65
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/media/MediaFormat;)I
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public a()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->d()V

    .line 106
    return-void
.end method

.method public b()Lcom/snapchat/videotranscoder/pipeline/Codec;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    return-object v0
.end method

.method public c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->g:Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    return-object v0
.end method

.method public d()V
    .locals 8

    .prologue
    .line 69
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "ENCODER"

    const-string v1, "Mixer is not started returning"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(J)I

    move-result v0

    .line 74
    if-gez v0, :cond_2

    .line 75
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->b(I)V

    .line 76
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->i()Landroid/media/MediaFormat;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->a(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->c:I

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    const-string v1, "ENCODER"

    const-string v2, "encoder: codec config buffer"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IZ)V

    goto :goto_0

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1, v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 89
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->d:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 90
    const-string v4, "ENCODER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoder out of sync last:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->d:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_5
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->d:J

    .line 93
    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget v3, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->c:I

    iget-object v4, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v4}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 96
    :cond_6
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const-string v1, "ENCODER"

    const-string v2, "encoder: EOS"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->h()V

    goto :goto_1
.end method
