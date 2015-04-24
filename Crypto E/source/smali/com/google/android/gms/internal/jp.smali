.class public final Lcom/google/android/gms/internal/jp;
.super Lcom/google/android/gms/common/internal/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jp$q;,
        Lcom/google/android/gms/internal/jp$k;,
        Lcom/google/android/gms/internal/jp$l;,
        Lcom/google/android/gms/internal/jp$e;,
        Lcom/google/android/gms/internal/jp$f;,
        Lcom/google/android/gms/internal/jp$a;,
        Lcom/google/android/gms/internal/jp$b;,
        Lcom/google/android/gms/internal/jp$c;,
        Lcom/google/android/gms/internal/jp$d;,
        Lcom/google/android/gms/internal/jp$g;,
        Lcom/google/android/gms/internal/jp$h;,
        Lcom/google/android/gms/internal/jp$i;,
        Lcom/google/android/gms/internal/jp$j;,
        Lcom/google/android/gms/internal/jp$m;,
        Lcom/google/android/gms/internal/jp$n;,
        Lcom/google/android/gms/internal/jp$o;,
        Lcom/google/android/gms/internal/jp$p;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/android/gms/internal/kd;",
        ">;"
    }
.end annotation


# static fields
.field private static final Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Fm:Ljava/lang/String;

.field private final Ov:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-static {p5}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/jp;->Fm:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/jp;->Ov:Ljava/lang/String;

    return-void
.end method

.method private static b(Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cloudsave/Entity;->a(Lcom/google/android/gms/cloudsave/Entity;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cloudsave/Entity;->clone()Lcom/google/android/gms/cloudsave/Entity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cloudsave/Entity;->a(Lcom/google/android/gms/cloudsave/Entity;)V

    invoke-virtual {p0}, Lcom/google/android/gms/cloudsave/Entity;->ih()V

    return-void
.end method

.method private static bd(I)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/cloudsave/CloudSaveStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/jp;->f(ILjava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic be(I)Lcom/google/android/gms/common/api/Status;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/jp;->bd(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->getKey()Lcom/google/android/gms/cloudsave/Entity$Key;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/jp;->b(Lcom/google/android/gms/cloudsave/Entity;)V

    return-void
.end method

.method static synthetic d(Ljava/util/Collection;)Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/jp;->c(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized e(Ljava/lang/Runnable;)V
    .locals 4

    const-class v1, Lcom/google/android/gms/internal/jp;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f(ILjava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static it()V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/jp;->Pi:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic iu()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/jp;->it()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Entity$Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$GetEntityResult;",
            ">;",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/jp$i;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/jp$i;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    new-instance v3, Lcom/google/android/gms/internal/jy;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/jy;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/jy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CloudSaveClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntityResult;",
            ">;",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/jp$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/jp$1;-><init>(Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/cloudsave/Entity;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Query;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteQueryResult;",
            ">;",
            "Lcom/google/android/gms/cloudsave/Query;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/jp$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/jp$5;-><init>(Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Query;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/jx$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/jx$b;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iE()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iD()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v12

    :try_start_0
    new-instance v13, Lcom/google/android/gms/internal/jp$q;

    invoke-direct {v13, p1}, Lcom/google/android/gms/internal/jp$q;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    new-instance v1, Lcom/google/android/gms/internal/ki;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iG()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iF()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iA()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->ik()Lcom/google/android/gms/cloudsave/Entity$Key;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iB()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iC()J

    move-result-wide v10

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/common/data/DataHolder;IIJLcom/google/android/gms/cloudsave/Entity$Key;JJLcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/jx$b;->iH()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v13, v1, v3}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/ki;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "CloudSaveClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_2
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_4
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntitiesResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/jp$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/jp$2;-><init>(Lcom/google/android/gms/internal/jp;Ljava/util/Collection;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/internal/p;Lcom/google/android/gms/common/internal/h$e;)V
    .locals 7

    const v2, 0x640578

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/jp;->Fm:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/jp;->Ov:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->jF()[Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/internal/p;->a(Lcom/google/android/gms/common/internal/o;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/kd$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kd;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteEntityResult;",
            ">;",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/jp$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/jp$3;-><init>(Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/cloudsave/Entity;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Query;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$QueryResult;",
            ">;",
            "Lcom/google/android/gms/cloudsave/Query;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/jp$k;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/jp$k;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    new-instance v2, Lcom/google/android/gms/internal/ke;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ke;-><init>(Lcom/google/android/gms/cloudsave/Query;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/ke;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CloudSaveClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$GetEntitiesResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/jp$g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/jp$g;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    new-instance v2, Lcom/google/android/gms/internal/jy;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/jy;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/jy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CloudSaveClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteEntitiesResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/jp$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/jp$4;-><init>(Lcom/google/android/gms/internal/jp;Ljava/util/Collection;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/jp$q;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/jp$q;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CloudSaveClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->Fm:Ljava/lang/String;

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cloudsave.internal.ICloudSaveService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cloudsave.service.START"

    return-object v0
.end method

.method public getWorkspace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp;->Ov:Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jp;->as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kd;

    move-result-object v0

    return-object v0
.end method
