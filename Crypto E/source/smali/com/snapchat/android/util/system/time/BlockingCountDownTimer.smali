.class public abstract Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJLandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$1;-><init>(Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;)V

    iput-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->f:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$2;-><init>(Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;)V

    iput-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->g:Ljava/lang/Runnable;

    .line 47
    int-to-long v0, p1

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->a:J

    .line 48
    iput-wide p2, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->b:J

    .line 49
    iput-object p4, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->c:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->a:J

    add-long/2addr v2, v0

    .line 66
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->f()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->c:Landroid/os/Handler;

    if-eqz v4, :cond_3

    .line 75
    iget-object v4, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->f:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_1
    iget-wide v4, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->b:J

    add-long/2addr v0, v4

    .line 71
    :cond_2
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    .line 72
    iget-wide v4, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->b:J

    invoke-static {v4, v5}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(J)V

    .line 73
    iget-object v4, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->a()V

    goto :goto_1

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->b()V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$3;-><init>(Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method
