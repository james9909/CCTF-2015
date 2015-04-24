.class Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/task/TranscodingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConcatenationProgressCallback"
.end annotation


# instance fields
.field final a:Lcom/snapchat/videotranscoder/task/MediaSource;

.field final b:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

.field final c:J

.field final synthetic d:Lcom/snapchat/videotranscoder/task/TranscodingTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .parameter
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
    .line 176
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->d:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->a:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 178
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->b:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    .line 180
    invoke-virtual {p2}, Lcom/snapchat/videotranscoder/task/MediaSource;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->c:J

    .line 181
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x64

    .line 185
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->c:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    .line 186
    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->d:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-static {v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 188
    mul-long/2addr v0, v4

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->d:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-static {v2}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->b(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 190
    int-to-long v2, v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->d:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-static {v1}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->c(Lcom/snapchat/videotranscoder/task/TranscodingTask;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->d:Lcom/snapchat/videotranscoder/task/TranscodingTask;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/videotranscoder/task/TranscodingTask;->a(Lcom/snapchat/videotranscoder/task/TranscodingTask;J)J

    .line 192
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TranscodingTask$ConcatenationProgressCallback;->b:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    invoke-interface {v1, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->a(I)V

    .line 194
    :cond_0
    return-void
.end method
