.class public Lcom/snapchat/android/util/threading/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/util/threading/ThreadUtils;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 50
    sget-boolean v0, Lcom/snapchat/android/util/threading/ThreadUtils;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only from the Main Thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 2
    .parameter

    .prologue
    .line 18
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string v1, "ThreadUtils"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/util/threading/ThreadUtils;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/snapchat/android/util/threading/ThreadUtils;->a:Landroid/os/Handler;

    .line 70
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    .line 71
    sget-object v1, Lcom/snapchat/android/util/threading/ThreadUtils;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public static a(Ljava/lang/Thread;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 37
    :cond_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 59
    sget-boolean v0, Lcom/snapchat/android/util/threading/ThreadUtils;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must not be called from the Main Thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
