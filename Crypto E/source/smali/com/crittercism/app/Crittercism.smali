.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/crittercism/app/Crittercism;->a(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v1

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    const-class v6, Lcom/crittercism/app/Crittercism;

    monitor-enter v6

    if-nez p1, :cond_1

    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 148
    :cond_1
    if-nez p0, :cond_2

    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_2
    if-nez p2, :cond_3

    :try_start_3
    const-class v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 148
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "Given an invalid appID. The appID should be 24 characters in length."

    const-string v1, "Crittercism"

    const-string v2, "Crittercism cannot be initialized"

    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcrittercism/android/dg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ay;->b:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v0, :cond_0

    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v3

    const-string v0, "CrittercismInstance"

    const-string v1, "Initializing Crittercism..."

    invoke-static {v0, v1}, Lcrittercism/android/dg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v3, Lcrittercism/android/ay;->d:Ljava/lang/String;

    new-instance v0, Lcrittercism/android/ba;

    invoke-direct {v0, p2}, Lcrittercism/android/ba;-><init>(Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    iput-object p0, v3, Lcrittercism/android/ay;->c:Landroid/content/Context;

    new-instance v0, Lcrittercism/android/at;

    iget-object v1, v3, Lcrittercism/android/ay;->c:Landroid/content/Context;

    iget-object v2, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/at;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    iput-object v0, v3, Lcrittercism/android/ay;->s:Lcrittercism/android/at;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcrittercism/android/ay;->v:Ljava/lang/String;

    new-instance v0, Lcrittercism/android/da;

    invoke-direct {v0, p0}, Lcrittercism/android/da;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcrittercism/android/ay;->y:Lcrittercism/android/da;

    invoke-virtual {v3}, Lcrittercism/android/ay;->u()V

    const-wide v0, 0xdf8475800L

    iget-boolean v2, v3, Lcrittercism/android/ay;->u:Z

    if-eqz v2, :cond_5

    const-wide v0, 0x2cb417800L

    :cond_5
    new-instance v2, Lcrittercism/android/cf;

    invoke-direct {v2, v0, v1}, Lcrittercism/android/cf;-><init>(J)V

    iput-object v2, v3, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    iget-object v0, v3, Lcrittercism/android/ay;->s:Lcrittercism/android/at;

    invoke-static {v0}, Lcrittercism/android/bn;->a(Lcrittercism/android/at;)V

    iget-object v0, v3, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/bn;->a(Landroid/content/Context;)V

    new-instance v0, Lcrittercism/android/br;

    invoke-direct {v0}, Lcrittercism/android/br;-><init>()V

    invoke-static {v0}, Lcrittercism/android/bn;->a(Lcrittercism/android/bq;)V

    new-instance v0, Lcrittercism/android/bc;

    iget-object v1, v3, Lcrittercism/android/ay;->c:Landroid/content/Context;

    iget-object v2, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bc;-><init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V

    invoke-static {v0}, Lcrittercism/android/bn;->a(Lcrittercism/android/bc;)V

    iget-object v0, v3, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v0}, Lcrittercism/android/ba;->i()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    :goto_1
    new-instance v0, Lcrittercism/android/co;

    iget-object v1, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/co;-><init>(Lcrittercism/android/ba;Landroid/content/Context;Lcrittercism/android/av;Lcrittercism/android/aw;Lcrittercism/android/au;)V

    iput-object v0, v3, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    iget-boolean v0, v3, Lcrittercism/android/ay;->u:Z

    if-nez v0, :cond_7

    new-instance v0, Lcrittercism/android/dl;

    iget-object v1, v3, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v3, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    iget-object v4, v3, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-direct {v0, v3, v1, v2, v4}, Lcrittercism/android/dl;-><init>(Lcrittercism/android/av;Ljava/util/concurrent/ExecutorService;Lcrittercism/android/co;Lcrittercism/android/df;)V

    invoke-static {v0}, Lcrittercism/android/dg;->a(Lcrittercism/android/dl;)V

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v1, v0, Lcrittercism/android/ax;

    if-nez v1, :cond_8

    new-instance v1, Lcrittercism/android/ax;

    invoke-direct {v1, v3, v0}, Lcrittercism/android/ax;-><init>(Lcrittercism/android/ay;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_8
    new-instance v0, Lcrittercism/android/dh;

    iget-object v1, v3, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    invoke-direct {v0, v1}, Lcrittercism/android/dh;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcrittercism/android/dh;->start()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcrittercism/android/ay;->b:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crittercism finished initializing in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in init > getInstance().initialize(..): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :cond_9
    :try_start_8
    iget-object v0, v3, Lcrittercism/android/ay;->x:Lcrittercism/android/e;

    iget-object v1, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v1}, Lcrittercism/android/ba;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Ljava/util/List;)V

    iget-object v0, v3, Lcrittercism/android/ay;->x:Lcrittercism/android/e;

    iget-object v1, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v1}, Lcrittercism/android/ba;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->b(Ljava/util/List;)V

    new-instance v0, Lcrittercism/android/d;

    iget-object v1, v3, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcrittercism/android/i;

    iget-object v2, v3, Lcrittercism/android/ay;->x:Lcrittercism/android/e;

    invoke-direct {v1, v2, v0}, Lcrittercism/android/i;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;)V

    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v4}, Lcrittercism/android/ba;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/api/apm/network"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcrittercism/android/g;

    invoke-direct {v2, v3, v0}, Lcrittercism/android/g;-><init>(Lcrittercism/android/au;Ljava/net/URL;)V

    iput-object v2, v3, Lcrittercism/android/ay;->p:Lcrittercism/android/g;

    iget-object v0, v3, Lcrittercism/android/ay;->x:Lcrittercism/android/e;

    iget-object v2, v3, Lcrittercism/android/ay;->p:Lcrittercism/android/g;

    invoke-virtual {v0, v2}, Lcrittercism/android/e;->a(Lcrittercism/android/f;)V

    iget-object v0, v3, Lcrittercism/android/ay;->x:Lcrittercism/android/e;

    invoke-virtual {v0, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/f;)V

    new-instance v0, Lcrittercism/android/dh;

    iget-object v2, v3, Lcrittercism/android/ay;->p:Lcrittercism/android/g;

    const-string v4, "OPTMZ"

    invoke-direct {v0, v2, v4}, Lcrittercism/android/dh;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Lcrittercism/android/i;->a()Z

    move-result v0

    iput-boolean v0, v3, Lcrittercism/android/ay;->t:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :goto_2
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "installedApm = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v3, Lcrittercism/android/ay;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startApm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V

    invoke-static {}, Lcrittercism/android/dg;->c()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 442
    :try_start_0
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ay;->b:Z

    if-nez v0, :cond_1

    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->c(Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "Crittercism"

    const-string v1, "Cannot leave null breadcrumb"

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, v2}, Lcrittercism/android/dg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    throw v0

    .line 442
    :cond_2
    :try_start_1
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bt;

    invoke-direct {v1, p0}, Lcrittercism/android/bt;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcrittercism/android/ay$8;

    invoke-direct {v2, v0, v1}, Lcrittercism/android/ay$8;-><init>(Lcrittercism/android/ay;Lcrittercism/android/bt;)V

    iget-object v1, v0, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    invoke-virtual {v1, v2}, Lcrittercism/android/co;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SENDING "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " TO EXECUTOR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V

    iget-object v0, v0, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ay;->b:Z

    if-nez v0, :cond_1

    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->c(Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcrittercism/android/ay;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    throw v0

    .line 238
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 161
    const-string v0, "Crittercism"

    const-string v1, "Crittercism cannot be initialized"

    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcrittercism/android/dg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "().  Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    const-string v1, "Crittercism"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v0, v2}, Lcrittercism/android/dg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    return-void
.end method
