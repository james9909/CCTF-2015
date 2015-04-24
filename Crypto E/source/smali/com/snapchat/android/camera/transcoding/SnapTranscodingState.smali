.class public Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/cache/FileUtils;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/snapchat/videotranscoder/task/Task$Status;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;-><init>(Lcom/snapchat/android/util/cache/FileUtils;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/cache/FileUtils;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->d:I

    .line 30
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a:Lcom/snapchat/android/util/cache/FileUtils;

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->d:I

    rsub-int/lit8 v0, v0, 0x5

    monitor-exit v1

    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/util/cache/CacheType;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a:Lcom/snapchat/android/util/cache/FileUtils;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/cache/FileUtils;->a(Lcom/snapchat/android/util/cache/CacheType;)Ljava/io/File;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->e:Ljava/lang/String;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->e:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v4, Lcom/snapchat/videotranscoder/task/Task$Status;->a:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v2, v4, :cond_2

    move v2, v1

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    monitor-exit v3

    return v0

    :cond_2
    move v2, v0

    .line 96
    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/snapchat/videotranscoder/task/Task$Status;
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->d:I

    .line 129
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->b:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/SnapTranscodingState;->c:Lcom/snapchat/videotranscoder/task/Task$Status;

    sget-object v2, Lcom/snapchat/videotranscoder/task/Task$Status;->f:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
