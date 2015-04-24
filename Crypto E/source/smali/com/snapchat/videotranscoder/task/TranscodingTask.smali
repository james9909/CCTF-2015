.class public Lcom/snapchat/videotranscoder/task/TranscodingTask;
.super Lcom/snapchat/videotranscoder/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/TranscodingTask$3;,
        Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

.field private b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

.field private c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/Task;-><init>()V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->f:J

    .line 49
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 51
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c()V

    .line 52
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->d()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/task/TranscodingTask;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->f:J

    return-wide p1
.end method

.method private a(Lcom/snapchat/videotranscoder/task/ImageMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/ImageMediaSource;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .line 225
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->d()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/videotranscoder/task/TranscodingTask$1;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/ImageMediaSource;J)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 244
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 245
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 248
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c()V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 264
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v3

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->d()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/videotranscoder/task/TranscodingTask$2;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/pipeline/Mixer;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;Lcom/snapchat/videotranscoder/task/VideoMediaSource;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 299
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0, p2}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 300
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->a()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    .line 303
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->c()V

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->d:J

    return-wide v0
.end method

.method private b(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-interface {p1, v4}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->a(I)V

    .line 122
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->e:J

    .line 125
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_7

    aget-object v1, v6, v5

    .line 126
    if-eqz p1, :cond_2

    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;

    invoke-direct {v0, p0, v1, p1}, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    move-object v2, v0

    .line 129
    :goto_1
    instance-of v0, v1, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 130
    check-cast v0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    .line 131
    invoke-direct {p0, v0, v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/ImageMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_3

    move v0, v3

    :goto_2
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 168
    :cond_1
    :goto_3
    return-void

    .line 126
    :cond_2
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move v0, v4

    .line 132
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 136
    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    .line 137
    invoke-direct {p0, v0, v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 138
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_5

    :goto_4
    invoke-static {v3}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4

    .line 143
    :cond_6
    iget-wide v8, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->e:J

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/MediaSource;->a()J

    move-result-wide v0

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->e:J

    .line 125
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 147
    :cond_7
    const-string v0, "TranscodingTask"

    const-string v1, "releasing Mixer"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Mixer;->b()V

    .line 151
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_8
    new-instance v0, Lcom/snapchat/videotranscoder/utils/Utils;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/Utils;-><init>()V

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "TranscodingTask"

    invoke-static {v1, v0}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 165
    if-eqz p1, :cond_1

    .line 166
    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->a(I)V

    goto :goto_3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Failed to write snap segment metadata"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->f:J

    return-wide v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v4

    .line 62
    array-length v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/videotranscoder/utils/Debug;->a(Z)V

    .line 64
    sget-object v2, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    .line 65
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 67
    array-length v5, v4

    move v3, v1

    move-object v1, v0

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 68
    instance-of v6, v0, Lcom/snapchat/videotranscoder/task/ImageMediaSource;

    if-eqz v6, :cond_1

    .line 69
    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 67
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0

    .line 70
    :cond_1
    instance-of v6, v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    if-eqz v6, :cond_3

    .line 71
    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    .line 73
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->f()Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    move-result-object v6

    sget-object v7, Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$VideoChannelSource;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v6}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 75
    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;

    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/VideoMediaSource;->g()Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    move-result-object v0

    sget-object v6, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->d()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 80
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    :goto_3
    move-object v2, v0

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Illegal media source type"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Mixer;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Mixer;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyVideo;Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer;

    .line 88
    return-void

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method private d()V
    .locals 8

    .prologue
    .line 309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->d:J

    .line 310
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 311
    iget-wide v4, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->d:J

    invoke-virtual {v3}, Lcom/snapchat/videotranscoder/task/MediaSource;->a()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->d:J

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    .line 320
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v1

    .line 321
    array-length v0, v1

    new-array v4, v0, [J

    .line 323
    const-wide/16 v2, 0x0

    .line 324
    const/4 v0, 0x0

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 325
    aput-wide v2, v4, v0

    .line 326
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/videotranscoder/task/MediaSource;->a()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v1, Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    invoke-direct {v1, v4}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;-><init>([J)V

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->a(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V

    .line 331
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/videotranscoder/task/TranscodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    throw v0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    throw v0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    new-instance v1, Lcom/snapchat/videotranscoder/task/TranscodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception during transcoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 2

    .prologue
    .line 204
    const-string v0, "TranscodingTask"

    const-string v1, "Aborting transcoding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->e:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c:Lcom/snapchat/videotranscoder/pipeline/Transcoder;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Transcoder;->b()V

    .line 210
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method
