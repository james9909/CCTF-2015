.class Lcom/google/android/gms/internal/u$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public final lD:Lcom/google/android/gms/internal/u$a;

.field public final lE:Ljava/lang/String;

.field public final lF:Landroid/content/Context;

.field public final lG:Lcom/google/android/gms/internal/k;

.field public final lH:Lcom/google/android/gms/internal/hg;

.field public lI:Lcom/google/android/gms/internal/bc;

.field public lJ:Lcom/google/android/gms/internal/gu;

.field public lK:Lcom/google/android/gms/internal/gu;

.field public lL:Lcom/google/android/gms/internal/ay;

.field public lM:Lcom/google/android/gms/internal/gn;

.field public lN:Lcom/google/android/gms/internal/gn$a;

.field public lO:Lcom/google/android/gms/internal/go;

.field public lP:Lcom/google/android/gms/internal/bf;

.field public lQ:Lcom/google/android/gms/internal/fb;

.field public lR:Lcom/google/android/gms/internal/ex;

.field public lS:Lcom/google/android/gms/internal/cc;

.field public lT:Lcom/google/android/gms/internal/cd;

.field public lU:Lcom/google/android/gms/internal/bv;

.field public lV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lW:Lcom/google/android/gms/internal/eu;

.field public lX:Lcom/google/android/gms/internal/gs;

.field public lY:Landroid/view/View;

.field public lZ:I

.field public ma:Z

.field public mb:Z

.field private mc:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;"
        }
    .end annotation
.end field

.field private md:I

.field private me:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ay;Ljava/lang/String;Lcom/google/android/gms/internal/hg;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lX:Lcom/google/android/gms/internal/gs;

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lY:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/internal/u$b;->lZ:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/u$b;->ma:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/u$b;->mb:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->mc:Ljava/util/HashSet;

    iput v2, p0, Lcom/google/android/gms/internal/u$b;->md:I

    iput v2, p0, Lcom/google/android/gms/internal/u$b;->me:I

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/u$b;->lL:Lcom/google/android/gms/internal/ay;

    iput-object p3, p0, Lcom/google/android/gms/internal/u$b;->lE:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/u$b;->lH:Lcom/google/android/gms/internal/hg;

    new-instance v0, Lcom/google/android/gms/internal/k;

    new-instance v1, Lcom/google/android/gms/internal/x;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/internal/u$b;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/k;-><init>(Lcom/google/android/gms/internal/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/u$b;->lG:Lcom/google/android/gms/internal/k;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/u$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/u$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget v1, p2, Lcom/google/android/gms/internal/ay;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    iget v1, p2, Lcom/google/android/gms/internal/ay;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u$a;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/u$b;->mc:Ljava/util/HashSet;

    return-void
.end method

.method public av()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/go;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->mc:Ljava/util/HashSet;

    return-object v0
.end method

.method public aw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->destroy()V

    :cond_0
    return-void
.end method

.method public ax()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->stopLoading()V

    :cond_0
    return-void
.end method

.method public ay()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->rq:Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lI:Lcom/google/android/gms/internal/bc;

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lP:Lcom/google/android/gms/internal/bf;

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lQ:Lcom/google/android/gms/internal/fb;

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lR:Lcom/google/android/gms/internal/ex;

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lU:Lcom/google/android/gms/internal/bv;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u$b;->e(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/u$a;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/u$b;->aw()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u$b;->ay()V

    iput-object v1, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/u$b;->lZ:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/u$b;->ax()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lJ:Lcom/google/android/gms/internal/gu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lJ:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gu;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lK:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gu;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    :cond_3
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/u$b;->lD:Lcom/google/android/gms/internal/u$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/u$a;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/u$b;->lF:Landroid/content/Context;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/u$b;->md:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/u$b;->me:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/u$b;->md:I

    iput v0, p0, Lcom/google/android/gms/internal/u$b;->me:I

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/u$b;->md:I

    iget v2, p0, Lcom/google/android/gms/internal/u$b;->me:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl;->b(II)V

    :cond_1
    return-void
.end method
