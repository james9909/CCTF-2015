.class Lcom/snapchat/videotranscoder/task/TranscodingTask$2;
.super Lcom/snapchat/videotranscoder/pipeline/Transcoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

.field final synthetic b:Lcom/snapchat/videotranscoder/task/TranscodingTask;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/VideoMediaSource;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->b:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
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
    .line 271
    sget-object v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->f()Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled video channel source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :pswitch_0
    new-instance v0, Lcom/snapchat/videotranscoder/video/VideoProvider;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-direct {v0, p1, v1, p3}, Lcom/snapchat/videotranscoder/video/VideoProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    return-object v0

    .line 275
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to create an video provider for a disabled track."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
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
    .line 285
    sget-object v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$3;->b:[I

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g()Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled audio channel source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_0
    new-instance v0, Lcom/snapchat/videotranscoder/audio/AudioProvider;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-direct {v0, p1, v1, p3}, Lcom/snapchat/videotranscoder/audio/AudioProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 290
    :goto_0
    return-object v0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 290
    new-instance v0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;

    invoke-direct {v0, p1, v2, v3, p3}, Lcom/snapchat/videotranscoder/audio/SilenceProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    goto :goto_0

    .line 292
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to create an audio provider for a disabled track."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
