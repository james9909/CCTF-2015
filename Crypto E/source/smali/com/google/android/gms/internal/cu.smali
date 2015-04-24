.class public final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final lt:Lcom/google/android/gms/internal/dd;

.field private final mContext:Landroid/content/Context;

.field private final mL:Ljava/lang/Object;

.field private final qI:Lcom/google/android/gms/internal/fx;

.field private final qJ:Lcom/google/android/gms/internal/cw;

.field private qK:Z

.field private qL:Lcom/google/android/gms/internal/cz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/cw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->mL:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cu;->qK:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cu;->qI:Lcom/google/android/gms/internal/fx;

    iput-object p3, p0, Lcom/google/android/gms/internal/cu;->lt:Lcom/google/android/gms/internal/dd;

    iput-object p4, p0, Lcom/google/android/gms/internal/cu;->qJ:Lcom/google/android/gms/internal/cw;

    return-void
.end method


# virtual methods
.method public a(JJ)Lcom/google/android/gms/internal/da;
    .locals 17

    const-string v4, "Starting mediation."

    invoke-static {v4}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cu;->qJ:Lcom/google/android/gms/internal/cw;

    iget-object v4, v4, Lcom/google/android/gms/internal/cw;->qV:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/cv;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying mediation network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/cv;->qP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/cv;->qQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/cu;->mL:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/cu;->qK:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/internal/da;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/da;-><init>(I)V

    monitor-exit v15

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/cz;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/cu;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cu;->lt:Lcom/google/android/gms/internal/dd;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/cu;->qJ:Lcom/google/android/gms/internal/cw;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/cu;->qI:Lcom/google/android/gms/internal/fx;

    iget-object v10, v10, Lcom/google/android/gms/internal/fx;->uK:Lcom/google/android/gms/internal/av;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/cu;->qI:Lcom/google/android/gms/internal/fx;

    iget-object v11, v11, Lcom/google/android/gms/internal/fx;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/cu;->qI:Lcom/google/android/gms/internal/fx;

    iget-object v12, v12, Lcom/google/android/gms/internal/fx;->lH:Lcom/google/android/gms/internal/hg;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/cz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/hg;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/cu;->qL:Lcom/google/android/gms/internal/cz;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cu;->qL:Lcom/google/android/gms/internal/cz;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cz;->b(JJ)Lcom/google/android/gms/internal/da;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/da;->ro:I

    if-nez v5, :cond_3

    const-string v5, "Adapter succeeded."

    invoke-static {v5}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_3
    iget-object v5, v4, Lcom/google/android/gms/internal/da;->rq:Lcom/google/android/gms/internal/de;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/cu$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/cu$1;-><init>(Lcom/google/android/gms/internal/cu;Lcom/google/android/gms/internal/da;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/da;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/da;-><init>(I)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->mL:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cu;->qK:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->qL:Lcom/google/android/gms/internal/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->qL:Lcom/google/android/gms/internal/cz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cz;->cancel()V

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
