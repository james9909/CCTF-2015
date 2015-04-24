.class public Lcom/google/android/gms/internal/fl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fl$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/fl$a;)Lcom/google/android/gms/internal/gu;
    .locals 6

    iget-object v0, p3, Lcom/google/android/gms/internal/gn$a;->wJ:Lcom/google/android/gms/internal/fz;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/fz;->vj:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fp;

    new-instance v3, Lcom/google/android/gms/internal/ai;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ai;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/fl$a;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gu;->start()V

    return-object v0

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/fz;->uZ:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fo;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/fl$a;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/google/android/gms/internal/fz;->vf:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fj;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/google/android/gms/internal/fj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/br;->pN:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/me;->kw()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/me;->kx()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p4}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/fn;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/google/android/gms/internal/fn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/fm;

    invoke-direct {v0, p1, p3, p4, p6}, Lcom/google/android/gms/internal/fm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    goto :goto_0
.end method
