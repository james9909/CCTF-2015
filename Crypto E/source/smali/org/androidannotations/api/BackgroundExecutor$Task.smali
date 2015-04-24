.class public abstract Lorg/androidannotations/api/BackgroundExecutor$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/BackgroundExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic a(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/androidannotations/api/BackgroundExecutor$Task;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->f:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic a(Lorg/androidannotations/api/BackgroundExecutor$Task;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->e:Z

    return p1
.end method

.method static synthetic b(Lorg/androidannotations/api/BackgroundExecutor$Task;)I
    .locals 1
    .parameter

    .prologue
    .line 258
    iget v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->b:I

    return v0
.end method

.method private b()V
    .locals 8

    .prologue
    .line 312
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 316
    :cond_0
    const-class v1, Lorg/androidannotations/api/BackgroundExecutor;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-static {}, Lorg/androidannotations/api/BackgroundExecutor;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/androidannotations/api/BackgroundExecutor;->a(Ljava/lang/String;)Lorg/androidannotations/api/BackgroundExecutor$Task;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_2

    .line 323
    iget v2, v0, Lorg/androidannotations/api/BackgroundExecutor$Task;->b:I

    if-eqz v2, :cond_1

    .line 325
    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lorg/androidannotations/api/BackgroundExecutor$Task;->b:I

    .line 328
    :cond_1
    invoke-static {v0}, Lorg/androidannotations/api/BackgroundExecutor;->a(Lorg/androidannotations/api/BackgroundExecutor$Task;)V

    .line 331
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lorg/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/androidannotations/api/BackgroundExecutor$Task;)Z
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->e:Z

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/androidannotations/api/BackgroundExecutor$Task;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-direct {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/androidannotations/api/BackgroundExecutor$Task;->b()V

    throw v0
.end method
