.class public Lcom/snapchat/videotranscoder/audio/SilenceProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final g:[B

.field private h:J


# direct methods
.method private constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JIILcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p6}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h:J

    .line 70
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-gtz p4, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sample rate must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    if-lez p5, :cond_2

    const/4 v0, 0x2

    if-le p5, v0, :cond_3

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel count must be 1 or 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    int-to-long v0, p4

    mul-long/2addr v0, p2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 83
    const-wide/16 v2, 0x2

    int-to-long v4, p5

    mul-long/2addr v2, v4

    .line 84
    mul-long/2addr v0, v2

    .line 85
    const-wide/16 v4, 0x800

    div-long v2, v4, v2

    .line 87
    const-wide/16 v4, 0x800

    rem-long/2addr v0, v4

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->d:J

    .line 88
    iput-wide p2, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->b:J

    .line 89
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, v2

    int-to-long v2, p4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->c:J

    .line 92
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->g:[B

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->b()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->b()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/audio/SilenceProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JIILcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 52
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a()V

    .line 103
    return-void
.end method

.method public b()I
    .locals 4

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->b:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public d()V
    .locals 12

    .prologue
    const/16 v3, 0x800

    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->a:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Encoder;->b()Lcom/snapchat/videotranscoder/pipeline/Codec;

    move-result-object v0

    .line 113
    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/videotranscoder/pipeline/Codec;->b(J)I

    move-result v1

    .line 114
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 115
    const-string v0, "SilenceProvider"

    const-string v1, "no audio encoder input buffer"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v4, "SilenceProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio encoder: returned input buffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 122
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h:J

    .line 123
    iget-wide v8, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h:J

    iget-wide v10, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->c:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h:J

    .line 125
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iget-wide v8, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h:J

    iget-wide v10, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->b:J

    cmp-long v6, v8, v10

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    .line 128
    :goto_1
    if-eqz v6, :cond_2

    .line 129
    iget-object v3, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->g:[B

    iget-wide v8, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->d:J

    long-to-int v6, v8

    invoke-virtual {v7, v3, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 130
    iget-wide v6, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->d:J

    long-to-int v3, v6

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IIIJI)V

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->h()V

    goto :goto_0

    :cond_1
    move v6, v2

    .line 127
    goto :goto_1

    .line 134
    :cond_2
    iget-object v6, p0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;->g:[B

    invoke-virtual {v7, v6, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move v6, v2

    .line 135
    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IIIJI)V

    goto :goto_0
.end method
