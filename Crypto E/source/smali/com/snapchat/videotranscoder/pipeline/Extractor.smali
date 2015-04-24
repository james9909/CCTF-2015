.class public abstract Lcom/snapchat/videotranscoder/pipeline/Extractor;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/MediaExtractor;

.field public b:I

.field protected c:Lcom/snapchat/videotranscoder/pipeline/Codec;

.field protected volatile d:Z

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p2}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 22
    iput-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->b:I

    .line 25
    iput-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->g:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->d:Z

    .line 34
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->h:Ljava/lang/String;

    .line 36
    :try_start_0
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->b(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/snapchat/videotranscoder/pipeline/Codec;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 50
    return-void
.end method

.method public b()Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request track is undefined "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->b:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->d:Z

    .line 89
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Decoder is null"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/videotranscoder/pipeline/Codec;->b(J)I

    move-result v1

    .line 66
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 84
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/pipeline/Codec;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 71
    if-ltz v3, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->d:Z

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 73
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    iget-object v6, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IIIJI)V

    .line 74
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->g:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 75
    const-string v0, "EXTRACTOR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extractor out of sync last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_2
    iput-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->g:J

    .line 78
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->c:Lcom/snapchat/videotranscoder/pipeline/Codec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;->a(IIIJI)V

    .line 82
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Extractor;->h()V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 99
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->a:Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "EXTRACTOR"

    const-string v2, "error while releasing mExtractor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Extractor;->g:J

    return-wide v0
.end method
