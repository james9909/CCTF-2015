.class Lcom/snapchat/videotranscoder/task/TranscodingTask$1;
.super Lcom/snapchat/videotranscoder/pipeline/Transcoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/ImageMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/videotranscoder/task/ImageMediaSource;

.field final synthetic b:J

.field final synthetic c:Lcom/snapchat/videotranscoder/task/TranscodingTask;


# direct methods
.method constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/ImageMediaSource;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;->c:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    iput-object p5, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;->a:Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    iput-wide p6, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;->b:J

    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
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

    .prologue
    .line 232
    new-instance v0, Lcom/snapchat/videotranscoder/video/ImageProvider;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;->a:Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/ImageMediaSource;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;->b:J

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/video/ImageProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Ljava/lang/String;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    return-object v0
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
    .line 240
    new-instance v0, Lcom/snapchat/videotranscoder/audio/SilenceProvider;

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;->b:J

    invoke-direct {v0, p1, v2, v3, p3}, Lcom/snapchat/videotranscoder/audio/SilenceProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;JLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    return-object v0
.end method
