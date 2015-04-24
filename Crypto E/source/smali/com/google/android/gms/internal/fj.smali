.class public Lcom/google/android/gms/internal/fj;
.super Lcom/google/android/gms/internal/fh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    return-void
.end method


# virtual methods
.method protected f(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/fi;

    iget-object v3, p0, Lcom/google/android/gms/internal/fj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/fi;-><init>(Lcom/google/android/gms/internal/hl$a;Lcom/google/android/gms/internal/hk;II)V

    sget-object v0, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/fj$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/fj$1;-><init>(Lcom/google/android/gms/internal/fj;Lcom/google/android/gms/internal/fi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fj;->e(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fi;->cO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/fk$a;

    const-string v1, "AdNetwork sent passback url"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fk$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ay;->widthPixels:I

    iget v0, v0, Lcom/google/android/gms/internal/ay;->heightPixels:I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/fi;->cP()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/fk$a;

    const-string v1, "AdNetwork timed out"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fk$a;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    return-void
.end method
