.class public Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;
.super Lcom/snapchat/videotranscoder/audio/AudioDecoder;
.source "SourceFile"


# instance fields
.field private d:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;-><init>(Landroid/media/MediaFormat;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 24
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 26
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_0

    .line 27
    const/16 v3, 0xc

    .line 31
    :goto_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    .line 33
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    .line 34
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 35
    return-void

    .line 29
    :cond_0
    const/4 v3, 0x4

    goto :goto_0
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 73
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/pipeline/Encoder;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 44
    const-string v0, "AUDIOTRACKDECODER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio track decoder: attempting to process pending buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->f()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 46
    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->a(I)J

    .line 47
    if-ltz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget v2, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->b:I

    invoke-virtual {v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Codec;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    new-array v0, v0, [B

    .line 50
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 52
    iget-object v1, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->c()V

    .line 55
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/snapchat/videotranscoder/audio/AudioDecoder;->f()V

    .line 60
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "AUDIOTRACKDECODER"

    const-string v1, "Releasing audio track"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 63
    iget-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/audio/AudioTrackDecoder;->d:Landroid/media/AudioTrack;

    .line 65
    const-string v0, "AUDIOTRACKDECODER"

    const-string v1, "Released audio track"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
