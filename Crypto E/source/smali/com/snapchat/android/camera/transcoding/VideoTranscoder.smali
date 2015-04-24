.class public Lcom/snapchat/android/camera/transcoding/VideoTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;


# instance fields
.field private a:Lcom/snapchat/videotranscoder/task/TaskExecutor;

.field private c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/SnapVideobryo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;-><init>()V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;-><init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->d:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    .line 54
    iput-object p2, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 55
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/VideoTranscoder;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    .line 44
    :cond_0
    sget-object v0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->b:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->I()Landroid/net/Uri;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null video uri!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    const-string v1, "VideoTranscoder"

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;->b(Ljava/lang/String;)Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;

    new-instance v2, Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;

    invoke-direct {v2}, Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;-><init>()V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/snapchat/android/camera/transcoding/TranscodingDoneCallback;-><init>(Lcom/snapchat/android/camera/transcoding/VideoTranscoder;Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;Lcom/snapchat/android/analytics/transcoding/TranscodingTaskMetrics;)V

    .line 121
    new-instance v2, Lcom/snapchat/videotranscoder/task/TranscodingTask;

    invoke-direct {v2, v0}, Lcom/snapchat/videotranscoder/task/TranscodingTask;-><init>(Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 123
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/SnapVideobryo;->b(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    :try_end_1
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/SnapVideobryo;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 58
    new-instance v0, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;

    invoke-direct {v0, p1}, Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;-><init>(Lcom/snapchat/android/model/SnapVideobryo;)V

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;)V

    .line 59
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->X()Z

    move-result v4

    .line 66
    sget-object v2, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v3, v2, :cond_3

    move v2, v1

    .line 67
    :goto_0
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 69
    :cond_1
    if-nez v0, :cond_4

    .line 90
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v0

    .line 66
    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_5
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/SnapVideobryo;->b(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 79
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->e:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v3, v0, :cond_6

    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->d:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v3, v0, :cond_2

    .line 82
    :cond_6
    const/4 v0, 0x5

    .line 83
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->T()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v2, :cond_7

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->b(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/android/camera/transcoding/TranscoderConfigurationProvider;)V

    move v0, v1

    goto :goto_2

    .line 86
    :cond_7
    if-gez v1, :cond_2

    .line 87
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/SnapVideobryo;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/SnapVideobryo;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 95
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->b(Lcom/snapchat/android/model/SnapVideobryo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/SnapVideobryo;->c(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b(Z)V

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 107
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/videotranscoder/task/TranscodingTask;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a:Lcom/snapchat/videotranscoder/task/TaskExecutor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 179
    return-void
.end method

.method public b(Lcom/snapchat/android/model/SnapVideobryo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "VideoTranscoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transcoding failed with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->T()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trying again"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/android/model/SnapVideobryo;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    :cond_0
    return v0
.end method

.method public c(Lcom/snapchat/android/model/SnapVideobryo;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->b(Lcom/snapchat/android/model/SnapVideobryo;)Z

    move-result v1

    .line 154
    if-nez v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->T()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/SnapVideobryo;->c(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 161
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 162
    monitor-enter v1

    .line 163
    const-wide/16 v2, 0x7530

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 164
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p1}, Lcom/snapchat/android/model/SnapVideobryo;->T()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v1

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
