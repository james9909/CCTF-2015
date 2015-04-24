.class public Lcom/google/android/gms/internal/fo;
.super Lcom/google/android/gms/internal/fk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private lt:Lcom/google/android/gms/internal/dd;

.field private qJ:Lcom/google/android/gms/internal/cw;

.field private ut:Lcom/google/android/gms/internal/cu;

.field private uu:Lcom/google/android/gms/internal/da;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/fl$a;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/fk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/fo;->lt:Lcom/google/android/gms/internal/dd;

    iget-object v0, p2, Lcom/google/android/gms/internal/gn$a;->wD:Lcom/google/android/gms/internal/cw;

    iput-object v0, p0, Lcom/google/android/gms/internal/fo;->qJ:Lcom/google/android/gms/internal/cw;

    return-void
.end method


# virtual methods
.method protected f(J)V
    .locals 7

    iget-object v1, p0, Lcom/google/android/gms/internal/fo;->ul:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/cu;

    iget-object v2, p0, Lcom/google/android/gms/internal/fo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/fo;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    iget-object v4, p0, Lcom/google/android/gms/internal/fo;->lt:Lcom/google/android/gms/internal/dd;

    iget-object v5, p0, Lcom/google/android/gms/internal/fo;->qJ:Lcom/google/android/gms/internal/cw;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/cu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/cw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fo;->ut:Lcom/google/android/gms/internal/cu;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->ut:Lcom/google/android/gms/internal/cu;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/cu;->a(JJ)Lcom/google/android/gms/internal/da;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget v0, v0, Lcom/google/android/gms/internal/da;->ro:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/fk$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected mediation result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget v2, v2, Lcom/google/android/gms/internal/da;->ro:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fk$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/fk$a;

    const-string v1, "No fill from any mediation ad networks."

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fk$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fo;->ul:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/fk;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->ut:Lcom/google/android/gms/internal/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->ut:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->cancel()V

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

.method protected q(I)Lcom/google/android/gms/internal/gn;
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/fo;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v6, v2, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    new-instance v2, Lcom/google/android/gms/internal/gn;

    iget-object v3, v6, Lcom/google/android/gms/internal/fx;->uK:Lcom/google/android/gms/internal/av;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/fo;->mj:Lcom/google/android/gms/internal/hk;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-object v5, v5, Lcom/google/android/gms/internal/fz;->qX:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-object v7, v7, Lcom/google/android/gms/internal/fz;->qY:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-object v8, v8, Lcom/google/android/gms/internal/fz;->vb:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget v9, v9, Lcom/google/android/gms/internal/fz;->orientation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v10, v10, Lcom/google/android/gms/internal/fz;->rb:J

    iget-object v12, v6, Lcom/google/android/gms/internal/fx;->uN:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-boolean v13, v6, Lcom/google/android/gms/internal/fz;->uZ:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget-object v14, v6, Lcom/google/android/gms/internal/da;->rp:Lcom/google/android/gms/internal/cv;

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget-object v15, v6, Lcom/google/android/gms/internal/da;->rq:Lcom/google/android/gms/internal/de;

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget-object v0, v6, Lcom/google/android/gms/internal/da;->rr:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/fo;->qJ:Lcom/google/android/gms/internal/cw;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->uu:Lcom/google/android/gms/internal/da;

    iget-object v0, v6, Lcom/google/android/gms/internal/da;->rs:Lcom/google/android/gms/internal/cy;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->va:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->uY:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->um:Lcom/google/android/gms/internal/gn$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/gn$a;->wF:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->vd:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->un:Lcom/google/android/gms/internal/fz;

    iget-object v0, v6, Lcom/google/android/gms/internal/fz;->ve:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fo;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gn$a;->wC:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/hk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/cy;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/bz$a;)V

    return-object v2

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const-class v6, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method
