.class public Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# instance fields
.field private final a:Lcom/snapchat/android/model/SnapVideobryo;

.field private final b:Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;

.field private final c:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

.field private final d:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field private final e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/camera/transcoding/VideoTranscoder;Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v5, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v5}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;-><init>(Lcom/snapchat/android/camera/transcoding/VideoTranscoder;Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;Lcom/snapchat/android/util/debug/ExceptionReporter;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/transcoding/VideoTranscoder;Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;Lcom/snapchat/android/util/debug/ExceptionReporter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->a:Lcom/snapchat/android/model/SnapVideobryo;

    .line 38
    iput-object p4, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->b:Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;

    .line 39
    iput-object p3, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    .line 40
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->c:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    .line 41
    iput-object p5, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->d:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->b:Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->a:Lcom/snapchat/android/model/SnapVideobryo;

    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->e:Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;->a(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->c:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->a:Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 49
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;->d:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v1, Lcom/snapchat/android/analytics/handledexceptions/TranscodingFailedException;

    invoke-direct {v1, p1}, Lcom/snapchat/android/analytics/handledexceptions/TranscodingFailedException;-><init>(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 51
    const-string v0, "TranscodingDone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcoding failed. Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method
