.class public Lcom/google/android/gms/internal/cr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cr$b;,
        Lcom/google/android/gms/internal/cr$a;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mL:Ljava/lang/Object;

.field private final mP:Lcom/google/android/gms/internal/hg;

.field private qA:Lcom/google/android/gms/internal/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hi",
            "<",
            "Lcom/google/android/gms/internal/ah;",
            ">;"
        }
    .end annotation
.end field

.field private qB:Lcom/google/android/gms/internal/ah;

.field private qC:I

.field private final qy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/cr$b;",
            ">;"
        }
    .end annotation
.end field

.field private final qz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->qy:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->mL:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cr;->qC:I

    iput-object p3, p0, Lcom/google/android/gms/internal/cr;->qz:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr;->mP:Lcom/google/android/gms/internal/hg;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cr;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/cr;->qC:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/ah;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->qB:Lcom/google/android/gms/internal/ah;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;)Lcom/google/android/gms/internal/hi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/hi;I)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/hi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hi",
            "<",
            "Lcom/google/android/gms/internal/ah;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cr;->qC:I

    sget-object v0, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cr$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cr$1;-><init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/hi;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hi",
            "<",
            "Lcom/google/android/gms/internal/ah;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/cr$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cr$2;-><init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/hg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mP:Lcom/google/android/gms/internal/hg;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/ah;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qB:Lcom/google/android/gms/internal/ah;

    return-object v0
.end method

.method private c(Lcom/google/android/gms/internal/ah;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->qy:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cr$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cr$b;->d(Lcom/google/android/gms/internal/ah;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/cr;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mL:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/cr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qz:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/ah;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/aj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)V

    return-object v0
.end method

.method public bS()Lcom/google/android/gms/internal/hi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/hi",
            "<",
            "Lcom/google/android/gms/internal/ah;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/hj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/hi;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hi;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/hj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/hi;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/cr;->qC:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hj;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/hi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->qA:Lcom/google/android/gms/internal/hi;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
