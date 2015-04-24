.class public abstract Lcom/google/android/gms/internal/fk;
.super Lcom/google/android/gms/internal/gu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fk$a;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mL:Ljava/lang/Object;

.field protected final mj:Lcom/google/android/gms/internal/hk;

.field protected final uk:Lcom/google/android/gms/internal/fl$a;

.field protected final ul:Ljava/lang/Object;

.field protected final um:Lcom/google/android/gms/internal/gn$a;

.field protected un:Lcom/google/android/gms/internal/fz;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk;->mL:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk;->ul:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fk;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fk;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, p2, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iput-object v0, p0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/fk;->mj:Lcom/google/android/gms/internal/hk;

    iput-object p4, p0, Lcom/google/android/gms/internal/fk;->uk:Lcom/google/android/gms/internal/fl$a;

    return-void
.end method


# virtual methods
.method public cG()V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/fk;->mL:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "AdRendererBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->um:Lcom/google/android/gms/internal/gn$a;

    iget v0, v0, Lcom/google/android/gms/internal/gn$a;->errorCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/internal/fk;->f(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/gms/internal/fk$a; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fk;->q(I)Lcom/google/android/gms/internal/gn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/fk$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/fk$2;-><init>(Lcom/google/android/gms/internal/fk;Lcom/google/android/gms/internal/gn;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fk$a;->getErrorCode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fk$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fz;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/fk$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/fk$1;-><init>(Lcom/google/android/gms/internal/fk;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fk$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/fz;

    iget-object v3, p0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v4, v3, Lcom/google/android/gms/internal/fz;->rb:J

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/fz;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method protected abstract f(J)V
.end method

.method protected h(Lcom/google/android/gms/internal/gn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->uk:Lcom/google/android/gms/internal/fl$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fl$a;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method protected q(I)Lcom/google/android/gms/internal/gn;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fk;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v6, v2, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    new-instance v2, Lcom/google/android/gms/internal/gn;

    iget-object v3, v6, Lcom/google/android/gms/internal/fx;->uK:Lcom/google/android/gms/internal/av;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/fk;->mj:Lcom/google/android/gms/internal/hk;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-object v5, v5, Lcom/google/android/gms/internal/fz;->qX:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-object v7, v7, Lcom/google/android/gms/internal/fz;->qY:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-object v8, v8, Lcom/google/android/gms/internal/fz;->vb:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget v9, v9, Lcom/google/android/gms/internal/fz;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v10, v10, Lcom/google/android/gms/internal/fz;->rb:J

    iget-object v12, v6, Lcom/google/android/gms/internal/fx;->uN:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/fz;->uZ:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->va:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->uY:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->um:Lcom/google/android/gms/internal/gn$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/gn$a;->wF:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->vd:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->un:Lcom/google/android/gms/internal/fz;

    iget-object v0, v6, Lcom/google/android/gms/internal/fz;->ve:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fk;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gn$a;->wC:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/hk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/cy;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/bz$a;)V

    return-object v2
.end method
