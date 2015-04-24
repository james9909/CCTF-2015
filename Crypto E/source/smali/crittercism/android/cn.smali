.class public final Lcrittercism/android/cn;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcrittercism/android/cn;->a:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/cn;->b:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcrittercism/android/cn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cq;

    .line 68
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_2

    .line 78
    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcrittercism/android/bj;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcrittercism/android/cn;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcrittercism/android/bj;->a(Landroid/content/Context;)Lcrittercism/android/bj;

    move-result-object v1

    iget-object v4, p0, Lcrittercism/android/cn;->a:Landroid/content/Context;

    invoke-interface {p4}, Lcrittercism/android/au;->i()Lcrittercism/android/df;

    move-result-object v6

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcrittercism/android/ch;->a(Lcrittercism/android/bj;Lcrittercism/android/bj;Ljava/lang/String;Landroid/content/Context;Lcrittercism/android/au;Lcrittercism/android/df;)Lcrittercism/android/cg;

    move-result-object v5

    new-instance v0, Lcrittercism/android/cp;

    new-instance v2, Lcrittercism/android/cj;

    invoke-virtual {v1}, Lcrittercism/android/bj;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcrittercism/android/cj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcrittercism/android/cj;->a()Ljava/net/URL;

    move-result-object v4

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/cp;-><init>(Lcrittercism/android/bj;Lcrittercism/android/bj;Lcrittercism/android/au;Ljava/net/URL;Lcrittercism/android/cg;)V

    .line 37
    iget-object v1, p0, Lcrittercism/android/cn;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcrittercism/android/co;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/cn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cq;

    .line 59
    invoke-virtual {p1, v0}, Lcrittercism/android/co;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method
