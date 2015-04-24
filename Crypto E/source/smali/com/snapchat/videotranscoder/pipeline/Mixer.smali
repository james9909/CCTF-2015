.class public Lcom/snapchat/videotranscoder/pipeline/Mixer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;,
        Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaMuxer;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Landroid/media/MediaFormat;

.field private j:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;)V
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

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    .line 24
    iput-boolean v2, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->d:Z

    .line 26
    iput-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->e:J

    .line 27
    iput-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->f:J

    .line 29
    iput v3, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->g:I

    .line 30
    iput v3, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h:I

    .line 31
    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i:Landroid/media/MediaFormat;

    .line 32
    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->j:Landroid/media/MediaFormat;

    .line 48
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    if-ne p2, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->b:Z

    .line 53
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    if-ne p3, v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c:Z

    .line 54
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c:Z

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "video and/or audio must be transcoded"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/media/MediaFormat;)I
    .locals 2
    .parameter

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c:Z

    if-nez v0, :cond_1

    .line 72
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Audio track has already been added"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h:I

    .line 75
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i:Landroid/media/MediaFormat;

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->b:Z

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c:Z

    if-nez v1, :cond_4

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_4
    monitor-exit p0

    return v0

    .line 76
    :cond_5
    :try_start_2
    const-string v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->b:Z

    if-nez v0, :cond_7

    .line 78
    :cond_6
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Video track has already been added"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->g:I

    .line 81
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->j:Landroid/media/MediaFormat;

    goto :goto_0

    .line 83
    :cond_8
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Attempted to a track that was neither audio or video"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->d:Z

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 97
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 99
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v6, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->e:J

    add-long/2addr v4, v6

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 111
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->f:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 112
    iget-wide v0, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->f:J

    .line 114
    :cond_0
    return-void

    :cond_1
    move-object v1, p3

    goto :goto_0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 123
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->a:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 125
    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->f:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->e:J

    .line 135
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 160
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 169
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h:I

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->i:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public k()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->h()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Mixer;->j:Landroid/media/MediaFormat;

    return-object v0
.end method
