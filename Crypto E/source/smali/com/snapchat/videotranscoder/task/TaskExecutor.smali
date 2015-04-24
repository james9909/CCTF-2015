.class public Lcom/snapchat/videotranscoder/task/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a:Ljava/util/Queue;

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 85
    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 87
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    iget-object v1, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->a:Lcom/snapchat/videotranscoder/task/Task;

    .line 90
    new-instance v2, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;-><init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;)V

    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->c:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/Task;->a(Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 104
    iget-object v0, p1, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->b:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p2}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b()V

    .line 110
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a()V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a(Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 119
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/videotranscoder/task/Task;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/Task;->b()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->d:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 59
    iget-object v2, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->a:Lcom/snapchat/videotranscoder/task/Task;

    if-ne v2, p1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->a:Lcom/snapchat/videotranscoder/task/Task;

    if-ne v0, p1, :cond_2

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->c:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a()V

    .line 70
    return-void
.end method

.method public a(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 46
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a:Ljava/util/Queue;

    new-instance v1, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;-><init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->a()V

    .line 49
    return-void
.end method
