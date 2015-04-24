.class public Lorg/androidannotations/api/BackgroundExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/BackgroundExecutor$Task;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/Executor;

.field private static b:Ljava/util/concurrent/Executor;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/androidannotations/api/BackgroundExecutor$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    .line 35
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->b:Ljava/util/concurrent/Executor;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    if-lez p1, :cond_1

    .line 57
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->b:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The executor set does not support scheduling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_1
    sget-object v1, Lorg/androidannotations/api/BackgroundExecutor;->b:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 64
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 65
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    sget-object v1, Lorg/androidannotations/api/BackgroundExecutor;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor;->c(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Lorg/androidannotations/api/BackgroundExecutor$Task;)V
    .locals 3
    .parameter

    .prologue
    .line 88
    const-class v1, Lorg/androidannotations/api/BackgroundExecutor;

    monitor-enter v1

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/androidannotations/api/BackgroundExecutor;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;Z)Z

    .line 91
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->b(Lorg/androidannotations/api/BackgroundExecutor$Task;)I

    move-result v0

    invoke-static {p0, v0}, Lorg/androidannotations/api/BackgroundExecutor;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 93
    :cond_1
    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->c(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 95
    :cond_2
    invoke-static {p0, v0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 96
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_3
    monitor-exit v1

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 232
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/api/BackgroundExecutor$Task;

    .line 233
    invoke-static {v0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->d(Lorg/androidannotations/api/BackgroundExecutor$Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;
    .locals 3
    .parameter

    .prologue
    .line 249
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 250
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 251
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/api/BackgroundExecutor$Task;

    invoke-static {v0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Lorg/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/androidannotations/api/BackgroundExecutor$Task;

    .line 255
    :goto_1
    return-object v0

    .line 250
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
