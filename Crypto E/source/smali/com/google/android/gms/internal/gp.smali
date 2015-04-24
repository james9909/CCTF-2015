.class public Lcom/google/android/gms/internal/gp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# static fields
.field private static final wW:Lcom/google/android/gms/internal/gp;

.field public static final wX:Ljava/lang/String;


# instance fields
.field private lw:Lcom/google/android/gms/internal/ae;

.field private mContext:Landroid/content/Context;

.field private final mL:Ljava/lang/Object;

.field private mP:Lcom/google/android/gms/internal/hg;

.field private nO:Lcom/google/android/gms/internal/am;

.field private nP:Lcom/google/android/gms/internal/al;

.field private final nQ:Lcom/google/android/gms/internal/fq;

.field private pw:Z

.field private vX:Z

.field private vY:Z

.field public final wY:Ljava/lang/String;

.field private final wZ:Lcom/google/android/gms/internal/gq;

.field private xa:Ljava/math/BigInteger;

.field private final xb:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;"
        }
    .end annotation
.end field

.field private final xc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gs;",
            ">;"
        }
    .end annotation
.end field

.field private xd:Z

.field private xe:Lcom/google/android/gms/internal/an;

.field private final xf:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private xg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    iget-object v0, v0, Lcom/google/android/gms/internal/gp;->wY:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/gp;->wX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->xa:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->xb:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->xc:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gp;->xd:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/gp;->vX:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gp;->pw:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/gp;->vY:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/gp;->nO:Lcom/google/android/gms/internal/am;

    iput-object v1, p0, Lcom/google/android/gms/internal/gp;->xe:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/gp;->nP:Lcom/google/android/gms/internal/al;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->xf:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/google/android/gms/internal/gp;->nQ:Lcom/google/android/gms/internal/fq;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gx;->dD()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->wY:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->wY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->wZ:Lcom/google/android/gms/internal/gq;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/gr;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gp;->b(Landroid/content/Context;Lcom/google/android/gms/internal/gr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gp;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gp;)Lcom/google/android/gms/internal/hg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gp;->c(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)V

    return-void
.end method

.method public static b(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gp;->c(Ljava/util/HashSet;)V

    return-void
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gp;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dl()Lcom/google/android/gms/internal/gp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    return-object v0
.end method

.method public static dn()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gp;->do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dp()Lcom/google/android/gms/internal/gq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gp;->dq()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    return-object v0
.end method

.method public static dr()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gp;->ds()Z

    move-result v0

    return v0
.end method

.method public static dt()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gp;->du()Z

    move-result v0

    return v0
.end method

.method public static dv()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gp;->dw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gp;->wW:Lcom/google/android/gms/internal/gp;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gp;->f(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/go;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xb:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/gs;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xc:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Thread;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gp$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gp$1;-><init>(Lcom/google/android/gms/internal/gp;Ljava/lang/Thread;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/br;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/gr;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->wZ:Lcom/google/android/gms/internal/gq;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/gq;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->xc:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gs;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/go;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xb:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gr;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gp;->vX:Z

    if-eq p2, v0, :cond_0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gp;->vX:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gv;->a(Landroid/content/Context;Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gp;->pw:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    invoke-static {p1}, Lcom/google/android/gms/internal/gv;->p(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gp;->vX:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gp;->a(Ljava/lang/Thread;)V

    new-instance v2, Lcom/google/android/gms/internal/ae;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    new-instance v5, Lcom/google/android/gms/internal/cr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    sget-object v0, Lcom/google/android/gms/internal/br;->py:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v0}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/cr;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/gp;->lw:Lcom/google/android/gms/internal/ae;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/gms/internal/hg;->xP:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gx;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->xg:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gp;->pw:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xb:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/hg;->xS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public dm()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gp;->vY:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public do()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xa:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->xa:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/gp;->xa:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dq()Lcom/google/android/gms/internal/gq;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->wZ:Lcom/google/android/gms/internal/gq;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ds()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gp;->xd:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gp;->xd:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public du()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gp;->vX:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dw()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xg:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dx()Lcom/google/android/gms/internal/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->lw:Lcom/google/android/gms/internal/ae;

    return-object v0
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gp;->pw:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/fq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fq;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public m(Landroid/content/Context;)Lcom/google/android/gms/internal/an;
    .locals 9

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/br;->pG:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/me;->kt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gp;->dm()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->nO:Lcom/google/android/gms/internal/am;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/am;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/am;-><init>(Landroid/app/Application;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gp;->nO:Lcom/google/android/gms/internal/am;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->nP:Lcom/google/android/gms/internal/al;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/internal/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->nP:Lcom/google/android/gms/internal/al;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xe:Lcom/google/android/gms/internal/an;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/an;

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->nO:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/gp;->nP:Lcom/google/android/gms/internal/al;

    new-instance v4, Lcom/google/android/gms/internal/fq;

    iget-object v5, p0, Lcom/google/android/gms/internal/gp;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/gp;->mP:Lcom/google/android/gms/internal/hg;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/fq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/fq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gp;->xe:Lcom/google/android/gms/internal/an;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xe:Lcom/google/android/gms/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->bi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gp;->xe:Lcom/google/android/gms/internal/an;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public y(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/gp;->vY:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
