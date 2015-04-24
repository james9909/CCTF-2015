.class public Lcom/google/android/gms/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ah;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mj:Lcom/google/android/gms/internal/hk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aH()Lcom/google/android/gms/internal/hm;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ay;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ay;-><init>()V

    const/4 v5, 0x0

    move-object v1, p1

    move v4, v3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aj;->mj:Lcom/google/android/gms/internal/hk;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/hk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->mj:Lcom/google/android/gms/internal/hk;

    return-object v0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/he;->dK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ah$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/aj$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/aj$4;-><init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/ah$a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl$a;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;ZLcom/google/android/gms/internal/ci;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/gms/internal/v;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/v;-><init>(Z)V

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;ZLcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/ds;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/aj$1;-><init>(Lcom/google/android/gms/internal/aj;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hl;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/aj$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/aj$2;-><init>(Lcom/google/android/gms/internal/aj;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/aj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/aj$3;-><init>(Lcom/google/android/gms/internal/aj;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
