.class final Lcom/google/android/gms/internal/gf$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/cs;Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/fz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic no:Landroid/content/Context;

.field final synthetic vA:Lcom/google/android/gms/internal/fx;

.field final synthetic vB:Lcom/google/android/gms/internal/gh;

.field final synthetic vC:Lcom/google/android/gms/internal/hl$a;

.field final synthetic vD:Lcom/google/android/gms/internal/bm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/hl$a;Lcom/google/android/gms/internal/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gf$1;->no:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gf$1;->vA:Lcom/google/android/gms/internal/fx;

    iput-object p3, p0, Lcom/google/android/gms/internal/gf$1;->vB:Lcom/google/android/gms/internal/gh;

    iput-object p4, p0, Lcom/google/android/gms/internal/gf$1;->vC:Lcom/google/android/gms/internal/hl$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/gf$1;->vD:Lcom/google/android/gms/internal/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aH()Lcom/google/android/gms/internal/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gf$1;->no:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/ay;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ay;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/gf$1;->vA:Lcom/google/android/gms/internal/fx;

    iget-object v6, v4, Lcom/google/android/gms/internal/fx;->lH:Lcom/google/android/gms/internal/hg;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gf$1;->vB:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gh;->b(Lcom/google/android/gms/internal/hk;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    const-string v2, "/invalidRequest"

    iget-object v3, p0, Lcom/google/android/gms/internal/gf$1;->vB:Lcom/google/android/gms/internal/gh;

    iget-object v3, v3, Lcom/google/android/gms/internal/gh;->vI:Lcom/google/android/gms/internal/ch;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v2, "/loadAdURL"

    iget-object v3, p0, Lcom/google/android/gms/internal/gf$1;->vB:Lcom/google/android/gms/internal/gh;

    iget-object v3, v3, Lcom/google/android/gms/internal/gh;->vJ:Lcom/google/android/gms/internal/ch;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/cg;->qn:Lcom/google/android/gms/internal/ch;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gf$1;->vC:Lcom/google/android/gms/internal/hl$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl$a;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gf$1;->vD:Lcom/google/android/gms/internal/bm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bm;->bC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
