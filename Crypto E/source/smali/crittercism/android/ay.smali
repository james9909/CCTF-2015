.class public final Lcrittercism/android/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/au;
.implements Lcrittercism/android/av;
.implements Lcrittercism/android/aw;
.implements Lcrittercism/android/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ay$5;
    }
.end annotation


# static fields
.field static a:Lcrittercism/android/ay;


# instance fields
.field A:I

.field private B:Lcrittercism/android/bj;

.field private C:Lcrittercism/android/bj;

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public final e:Landroid/os/ConditionVariable;

.field public final f:Landroid/os/ConditionVariable;

.field public g:Lcrittercism/android/df;

.field h:Lcrittercism/android/bj;

.field i:Lcrittercism/android/bj;

.field j:Lcrittercism/android/bj;

.field k:Lcrittercism/android/bj;

.field l:Lcrittercism/android/bj;

.field m:Lcrittercism/android/bj;

.field public n:Lcrittercism/android/cf;

.field public o:Lcrittercism/android/co;

.field public p:Lcrittercism/android/g;

.field q:Ljava/util/concurrent/ExecutorService;

.field public r:Ljava/util/concurrent/ExecutorService;

.field public s:Lcrittercism/android/at;

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Lcrittercism/android/ba;

.field public x:Lcrittercism/android/e;

.field public y:Lcrittercism/android/da;

.field z:Lcrittercism/android/de;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcrittercism/android/ay;->b:Z

    .line 77
    iput-object v2, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    .line 78
    iput-object v2, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/ay;->e:Landroid/os/ConditionVariable;

    .line 84
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/ay;->f:Landroid/os/ConditionVariable;

    .line 86
    new-instance v0, Lcrittercism/android/df;

    invoke-direct {v0}, Lcrittercism/android/df;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    .line 96
    iput-object v2, p0, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    .line 98
    iput-object v2, p0, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    .line 99
    iput-object v2, p0, Lcrittercism/android/ay;->p:Lcrittercism/android/g;

    .line 102
    new-instance v0, Lcrittercism/android/di;

    invoke-direct {v0}, Lcrittercism/android/di;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ay;->q:Ljava/util/concurrent/ExecutorService;

    .line 105
    new-instance v0, Lcrittercism/android/di;

    invoke-direct {v0}, Lcrittercism/android/di;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    .line 109
    iput-boolean v1, p0, Lcrittercism/android/ay;->t:Z

    .line 110
    iput-boolean v1, p0, Lcrittercism/android/ay;->u:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/ay;->v:Ljava/lang/String;

    .line 114
    new-instance v0, Lcrittercism/android/ba;

    invoke-direct {v0}, Lcrittercism/android/ba;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    .line 120
    iput-object v2, p0, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    .line 126
    iput v1, p0, Lcrittercism/android/ay;->A:I

    .line 130
    new-instance v0, Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcrittercism/android/e;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcrittercism/android/ay;->x:Lcrittercism/android/e;

    .line 131
    return-void
.end method

.method public static t()Lcrittercism/android/ay;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcrittercism/android/ay;

    invoke-direct {v0}, Lcrittercism/android/ay;-><init>()V

    sput-object v0, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    .line 138
    :cond_0
    sget-object v0, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    .line 516
    if-nez v0, :cond_0

    .line 517
    const-string v0, ""

    .line 520
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 667
    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_0

    .line 671
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    return-object v0
.end method

.method public final a(Lcrittercism/android/c;)V
    .locals 2
    .parameter

    .prologue
    .line 497
    new-instance v0, Lcrittercism/android/ay$9;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/ay$9;-><init>(Lcrittercism/android/ay;Lcrittercism/android/c;)V

    .line 503
    iget-object v1, p0, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    invoke-virtual {v1, v0}, Lcrittercism/android/co;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 506
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/h;)V
    .locals 3
    .parameter

    .prologue
    .line 704
    iget-boolean v0, p0, Lcrittercism/android/ay;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v0}, Lcrittercism/android/ba;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-boolean v0, p1, Lcrittercism/android/h;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcrittercism/android/h;->c:Z

    if-nez v0, :cond_0

    .line 709
    const-string v0, "Crittercism"

    const-string v1, "Enabling OPTMZ"

    invoke-static {v0, v1}, Lcrittercism/android/dg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcrittercism/android/ay;->p:Lcrittercism/android/g;

    iget v1, p1, Lcrittercism/android/h;->d:I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/g;->a(ILjava/util/concurrent/TimeUnit;)V

    .line 711
    iget-object v0, p0, Lcrittercism/android/ay;->p:Lcrittercism/android/g;

    invoke-virtual {v0}, Lcrittercism/android/g;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->a()Lcrittercism/android/dc;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/dc;->b:Z

    .line 828
    new-instance v0, Lcrittercism/android/dh;

    new-instance v1, Lcrittercism/android/ay$10;

    invoke-direct {v1, p0}, Lcrittercism/android/ay$10;-><init>(Lcrittercism/android/ay;)V

    invoke-direct {v0, v1}, Lcrittercism/android/dh;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcrittercism/android/dh;->start()V

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 839
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_0

    .line 737
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 738
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    .line 681
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 684
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 688
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 10
    .parameter

    .prologue
    .line 263
    new-instance v2, Lcrittercism/android/bd;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-direct {v2, p1, v0, v1}, Lcrittercism/android/bd;-><init>(Ljava/lang/Throwable;J)V

    .line 264
    const-string v0, "crashed_session"

    iget-object v1, p0, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    invoke-virtual {v2, v0, v1}, Lcrittercism/android/bd;->a(Ljava/lang/String;Lcrittercism/android/bj;)V

    .line 266
    iget-object v0, p0, Lcrittercism/android/ay;->C:Lcrittercism/android/bj;

    invoke-virtual {v0}, Lcrittercism/android/bj;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    const-string v0, "previous_session"

    iget-object v1, p0, Lcrittercism/android/ay;->C:Lcrittercism/android/bj;

    invoke-virtual {v2, v0, v1}, Lcrittercism/android/bd;->a(Ljava/lang/String;Lcrittercism/android/bj;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ay;->m:Lcrittercism/android/bj;

    invoke-virtual {v2, v0}, Lcrittercism/android/bd;->a(Lcrittercism/android/bj;)V

    .line 271
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, v2, Lcrittercism/android/bd;->b:Lorg/json/JSONArray;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iget-wide v8, v2, Lcrittercism/android/bd;->a:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const-string v5, "name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stacktrace"

    new-instance v5, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcrittercism/android/bd;->b:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcrittercism/android/ay;->k:Lcrittercism/android/bj;

    invoke-virtual {v0, v2}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    .line 274
    new-instance v0, Lcrittercism/android/cn;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/cn;-><init>(Landroid/content/Context;)V

    .line 275
    iget-object v1, p0, Lcrittercism/android/ay;->h:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 281
    iget-object v1, p0, Lcrittercism/android/ay;->i:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 287
    iget-object v1, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 293
    iget-object v1, p0, Lcrittercism/android/ay;->k:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 300
    :try_start_0
    invoke-virtual {v0}, Lcrittercism/android/cn;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V

    .line 303
    invoke-static {}, Lcrittercism/android/dg;->c()V

    goto :goto_1

    .line 305
    :catch_1
    move-exception v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected throwable in logCrashException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V

    .line 307
    invoke-static {}, Lcrittercism/android/dg;->c()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 722
    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 725
    if-eqz v1, :cond_0

    .line 726
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 729
    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    new-instance v0, Lcrittercism/android/bn$c;

    invoke-direct {v0}, Lcrittercism/android/bn$c;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bn$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 387
    monitor-enter p0

    if-nez p1, :cond_1

    .line 388
    :try_start_0
    const-string v0, "Crittercism"

    const-string v1, "Calling logHandledException with a null java.lang.Throwable. Nothing will be reported to Crittercism"

    invoke-static {v0, v1}, Lcrittercism/android/dg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 392
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcrittercism/android/ay;->u:Z

    if-eqz v0, :cond_2

    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcrittercism/android/ay$6;

    invoke-direct {v2, p0, p1, v0, v1}, Lcrittercism/android/ay$6;-><init>(Lcrittercism/android/ay;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    invoke-virtual {v0, v2}, Lcrittercism/android/co;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 395
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    new-instance v2, Lcrittercism/android/ay$7;

    invoke-direct {v2, p0, p1, v0, v1}, Lcrittercism/android/ay$7;-><init>(Lcrittercism/android/ay;Ljava/lang/Throwable;J)V

    iget-object v0, p0, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    invoke-virtual {v0, v2}, Lcrittercism/android/co;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ay;->r:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    const-string v0, ""

    .line 528
    iget-object v1, p0, Lcrittercism/android/ay;->y:Lcrittercism/android/da;

    if-eqz v1, :cond_0

    .line 529
    iget-object v0, p0, Lcrittercism/android/ay;->y:Lcrittercism/android/da;

    invoke-virtual {v0}, Lcrittercism/android/da;->a()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 745
    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 748
    if-eqz v1, :cond_0

    .line 749
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 752
    :cond_0
    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 551
    const/4 v0, -0x1

    .line 552
    iget-object v1, p0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    if-eqz v1, :cond_0

    .line 553
    iget-object v0, p0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->b()Lcrittercism/android/dd;

    move-result-object v0

    iget v0, v0, Lcrittercism/android/dd;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 555
    :cond_0
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcrittercism/android/bn$f;

    invoke-direct {v0}, Lcrittercism/android/bn$f;-><init>()V

    iget-object v0, v0, Lcrittercism/android/bn$f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    const-string v0, "Android"

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Lcrittercism/android/df;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    return-object v0
.end method

.method public final j()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcrittercism/android/ay;->h:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final k()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcrittercism/android/ay;->i:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final l()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcrittercism/android/ay;->B:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final m()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final n()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcrittercism/android/ay;->k:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final o()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final p()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcrittercism/android/ay;->m:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final q()Lcrittercism/android/bj;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcrittercism/android/ay;->C:Lcrittercism/android/bj;

    return-object v0
.end method

.method public final r()Lcrittercism/android/de;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    return-object v0
.end method

.method public final s()V
    .locals 3

    .prologue
    .line 562
    iget-boolean v0, p0, Lcrittercism/android/ay;->u:Z

    if-eqz v0, :cond_1

    .line 563
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->f:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcrittercism/android/bj;->a(Landroid/content/Context;)Lcrittercism/android/bj;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    .line 570
    :goto_0
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->h:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->C:Lcrittercism/android/bj;

    .line 571
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->g:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->m:Lcrittercism/android/bj;

    .line 572
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->a:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->h:Lcrittercism/android/bj;

    .line 573
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->b:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->i:Lcrittercism/android/bj;

    .line 574
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->c:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->B:Lcrittercism/android/bj;

    .line 575
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->d:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->j:Lcrittercism/android/bj;

    .line 576
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->e:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->k:Lcrittercism/android/bj;

    .line 577
    iget-boolean v0, p0, Lcrittercism/android/ay;->u:Z

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lcrittercism/android/de;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    iget-object v2, p0, Lcrittercism/android/ay;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/de;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcrittercism/android/ay;->z:Lcrittercism/android/de;

    .line 580
    :cond_0
    return-void

    .line 567
    :cond_1
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    sget-object v2, Lcrittercism/android/bi;->f:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    iput-object v0, p0, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    goto :goto_0
.end method

.method public final u()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 199
    iget-object v0, p0, Lcrittercism/android/ay;->c:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 201
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 205
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v4, :cond_4

    .line 206
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    .line 208
    goto :goto_0

    .line 210
    :cond_0
    if-gt v2, v7, :cond_2

    .line 211
    iput-boolean v3, p0, Lcrittercism/android/ay;->u:Z

    .line 226
    :cond_1
    :goto_2
    return-void

    .line 215
    :cond_2
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 221
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-ne v0, v5, :cond_3

    .line 222
    iput-boolean v7, p0, Lcrittercism/android/ay;->u:Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public final v()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->a()Lcrittercism/android/dc;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/dc;->b:Z

    .line 844
    new-instance v0, Lcrittercism/android/dh;

    new-instance v1, Lcrittercism/android/ay$11;

    invoke-direct {v1, p0}, Lcrittercism/android/ay$11;-><init>(Lcrittercism/android/ay;)V

    invoke-direct {v0, v1}, Lcrittercism/android/dh;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcrittercism/android/dh;->start()V

    .line 851
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcrittercism/android/ay;->u:Z

    if-eqz v0, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    new-instance v0, Lcrittercism/android/ay$4;

    invoke-direct {v0, p0, p0}, Lcrittercism/android/ay$4;-><init>(Lcrittercism/android/ay;Lcrittercism/android/ay;)V

    .line 1075
    iget-object v1, p0, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    invoke-virtual {v1, v0}, Lcrittercism/android/co;->a(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcrittercism/android/ay;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
