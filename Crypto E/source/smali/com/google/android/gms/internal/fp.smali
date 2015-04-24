.class public Lcom/google/android/gms/internal/fp;
.super Lcom/google/android/gms/internal/gu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field private final uk:Lcom/google/android/gms/internal/fl$a;

.field private final um:Lcom/google/android/gms/internal/gn$a;

.field private final un:Lcom/google/android/gms/internal/fz;

.field private final uv:Lcom/google/android/gms/internal/gc;

.field private uw:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/gn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/fl$a;)V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/gc;

    new-instance v4, Lcom/google/android/gms/internal/hc;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hc;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/hc;Lcom/google/android/gms/internal/gn$a;)V

    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/fp;-><init>(Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/fl$a;Lcom/google/android/gms/internal/gc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/fl$a;Lcom/google/android/gms/internal/gc;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->mL:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/fp;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, p1, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iput-object p2, p0, Lcom/google/android/gms/internal/fp;->uk:Lcom/google/android/gms/internal/fl$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/fp;->uv:Lcom/google/android/gms/internal/gc;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fp;)Lcom/google/android/gms/internal/fl$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->uk:Lcom/google/android/gms/internal/fl$a;

    return-object v0
.end method

.method private r(I)Lcom/google/android/gms/internal/gn;
    .locals 31

    new-instance v2, Lcom/google/android/gms/internal/gn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/fp;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    iget-object v3, v3, Lcom/google/android/gms/internal/fx;->uK:Lcom/google/android/gms/internal/av;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iget v9, v6, Lcom/google/android/gms/internal/fz;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v10, v6, Lcom/google/android/gms/internal/fz;->rb:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v6, v6, Lcom/google/android/gms/internal/gn$a;->wI:Lcom/google/android/gms/internal/fx;

    iget-object v12, v6, Lcom/google/android/gms/internal/fx;->uN:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->va:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gn$a;->lL:Lcom/google/android/gms/internal/ay;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->uY:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->um:Lcom/google/android/gms/internal/gn$a;

    iget-wide v0, v6, Lcom/google/android/gms/internal/gn$a;->wF:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iget-wide v0, v6, Lcom/google/android/gms/internal/fz;->vd:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->un:Lcom/google/android/gms/internal/fz;

    iget-object v0, v6, Lcom/google/android/gms/internal/fz;->ve:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/fp;->um:Lcom/google/android/gms/internal/gn$a;

    iget-object v0, v6, Lcom/google/android/gms/internal/gn$a;->wC:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/hk;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/cv;Lcom/google/android/gms/internal/de;Ljava/lang/String;Lcom/google/android/gms/internal/cw;Lcom/google/android/gms/internal/cy;JLcom/google/android/gms/internal/ay;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/internal/bz$a;)V

    return-object v2
.end method


# virtual methods
.method public cG()V
    .locals 8

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/fp;->mL:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->uv:Lcom/google/android/gms/internal/gc;

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->uw:Ljava/util/concurrent/Future;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->uw:Ljava/util/concurrent/Future;

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gn;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/fp$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/fp$1;-><init>(Lcom/google/android/gms/internal/fp;Lcom/google/android/gms/internal/gn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_0
    move-exception v0

    const-string v0, "Timed out waiting for native ad."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    const/4 v0, 0x2

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/fp;->r(I)Lcom/google/android/gms/internal/gn;

    move-result-object v0

    goto :goto_1
.end method

.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/fp;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->uw:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->uw:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

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
