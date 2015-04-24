.class public Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;
.super Lcom/snapchat/videotranscoder/task/Task;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/videotranscoder/task/MediaSource;

.field private b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

.field private c:Lcom/snapchat/videotranscoder/cts/InputSurface;

.field private d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private final f:Ljava/lang/Object;

.field private volatile g:Z

.field private h:F


# direct methods
.method public constructor <init>(Lcom/snapchat/videotranscoder/task/MediaSource;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/cts/InputSurface;)V
    .locals 1
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/Task;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->g:Z

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->h:F

    .line 46
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a:Lcom/snapchat/videotranscoder/task/MediaSource;

    .line 47
    iput-object p4, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->c:Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 48
    iput-object p2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 49
    iput-object p3, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 50
    return-void
.end method

.method private a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 146
    new-instance v0, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;-><init>(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/cts/InputSurface;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    .line 147
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->b()V

    .line 148
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->e:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 149
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->h:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a(F)V

    .line 150
    if-eqz p3, :cond_0

    .line 152
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;->a(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 156
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->d()V

    .line 157
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->h:F

    .line 106
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    iget v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->h:F

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a(F)V

    .line 109
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a:Lcom/snapchat/videotranscoder/task/MediaSource;

    check-cast v0, Lcom/snapchat/videotranscoder/task/VideoMediaSource;

    .line 64
    :try_start_0
    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 65
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->c:Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-direct {p0, v0, v1, p1}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(Lcom/snapchat/videotranscoder/task/VideoMediaSource;Lcom/snapchat/videotranscoder/cts/InputSurface;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    .line 66
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->g:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->g:Z

    .line 72
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v1

    .line 75
    :goto_0
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 70
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->g:Z

    .line 72
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 70
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->g:Z

    .line 72
    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 121
    return-void
.end method

.method public b()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 2

    .prologue
    .line 95
    const-string v0, "VideoFilterRenderingTask"

    const-string v1, "Aborting rendering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->d()V

    .line 99
    :cond_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->e:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 101
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    return-object v0
.end method

.method public b(F)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->b(F)V

    .line 132
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->f:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;->a()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;->b:Lcom/snapchat/videotranscoder/rendering/VideoFilterRenderer;

    .line 164
    :cond_0
    return-void
.end method
