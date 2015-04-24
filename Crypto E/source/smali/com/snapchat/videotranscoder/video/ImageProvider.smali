.class public Lcom/snapchat/videotranscoder/video/ImageProvider;
.super Lcom/snapchat/videotranscoder/pipeline/MediaProvider;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:J

.field private g:Lcom/snapchat/videotranscoder/cts/OutputSurface;

.field private h:I

.field private i:J


# direct methods
.method protected constructor <init>(Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Lcom/snapchat/videotranscoder/pipeline/Encoder;Ljava/lang/String;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
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
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0, p2, p7}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;-><init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->h:I

    .line 29
    iput-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->i:J

    .line 67
    if-gtz p4, :cond_0

    .line 68
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frames per second must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    cmp-long v0, p5, v2

    if-gtz v0, :cond_1

    .line 72
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration must be greater than 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput p4, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->b:I

    .line 77
    iget v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->b:I

    int-to-long v0, v0

    mul-long/2addr v0, p5

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->c:I

    .line 78
    iget v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->b:I

    int-to-long v0, v0

    div-long v0, v4, v0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->d:J

    .line 80
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a()[F

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;->a([FLjava/lang/String;)Lcom/snapchat/videotranscoder/cts/OutputSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->g:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/videotranscoder/pipeline/Encoder;Ljava/lang/String;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 10
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
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 45
    new-instance v2, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/snapchat/videotranscoder/video/ImageProvider;-><init>(Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;Lcom/snapchat/videotranscoder/pipeline/Encoder;Ljava/lang/String;IJLcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->g:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->g:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    .line 92
    invoke-super {p0}, Lcom/snapchat/videotranscoder/pipeline/MediaProvider;->a()V

    .line 93
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->h:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->c:I

    div-int/2addr v0, v1

    return v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->a:Lcom/snapchat/videotranscoder/pipeline/Encoder;

    check-cast v0, Lcom/snapchat/videotranscoder/video/VideoEncoder;

    .line 103
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->e()Lcom/snapchat/videotranscoder/cts/InputSurface;

    move-result-object v1

    .line 104
    if-nez v1, :cond_0

    .line 105
    new-instance v0, Lcom/snapchat/videotranscoder/task/TranscodingException;

    const-string v1, "Error getting encoder input surface"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->g:Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->c()V

    .line 110
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->i:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/videotranscoder/cts/InputSurface;->a(J)V

    .line 111
    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/InputSurface;->c()Z

    .line 113
    iget-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->i:J

    iget-wide v4, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->i:J

    .line 114
    iget v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->h:I

    .line 116
    iget v1, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->h:I

    iget v2, p0, Lcom/snapchat/videotranscoder/video/ImageProvider;->c:I

    if-ne v1, v2, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/video/VideoEncoder;->f()V

    .line 118
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/video/ImageProvider;->h()V

    .line 120
    :cond_1
    return-void
.end method
