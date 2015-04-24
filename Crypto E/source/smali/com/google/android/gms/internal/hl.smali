.class public Lcom/google/android/gms/internal/hl;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hl$a;
    }
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field protected final mj:Lcom/google/android/gms/internal/hk;

.field private qg:Lcom/google/android/gms/internal/cf;

.field private qq:Lcom/google/android/gms/internal/ck;

.field private qr:Lcom/google/android/gms/internal/dn;

.field private qt:Lcom/google/android/gms/internal/ci;

.field private qu:Lcom/google/android/gms/internal/v;

.field private rT:Lcom/google/android/gms/internal/ds;

.field private uc:Lcom/google/android/gms/internal/hl$a;

.field private final xY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ch;",
            ">;>;"
        }
    .end annotation
.end field

.field private xZ:Lcom/google/android/gms/internal/t;

.field private ya:Lcom/google/android/gms/internal/dz;

.field private yb:Z

.field private yc:Z

.field private yd:Lcom/google/android/gms/internal/ec;

.field private final ye:Lcom/google/android/gms/internal/dr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hk;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/dr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hk;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/bl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/dr;-><init>(Lcom/google/android/gms/internal/hk;Landroid/content/Context;Lcom/google/android/gms/internal/bl;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/hl;-><init>(Lcom/google/android/gms/internal/hk;ZLcom/google/android/gms/internal/dr;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/hk;ZLcom/google/android/gms/internal/dr;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->xY:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->mL:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->yb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/hl;->yc:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/hl;->ye:Lcom/google/android/gms/internal/dr;

    return-void
.end method

.method private static e(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->xY:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/gx;->c(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/android/gms/internal/hf;->x(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received GMSG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->W(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ch;

    iget-object v3, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ch;->a(Lcom/google/android/gms/internal/hk;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->W(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hl;->yb:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/dv;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dR()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/dy;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/hl;->yd:Lcom/google/android/gms/internal/ec;

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->dQ()Lcom/google/android/gms/internal/hg;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/hg;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/dy;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->xZ:Lcom/google/android/gms/internal/t;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hl;->ya:Lcom/google/android/gms/internal/dz;

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/dy;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dn;->bZ()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/dn;->k(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hk;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/dw;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dy;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/hl$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->uc:Lcom/google/android/gms/internal/hl$a;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;ZLcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/ds;)V
    .locals 3

    if-nez p8, :cond_0

    new-instance p8, Lcom/google/android/gms/internal/v;

    const/4 v0, 0x0

    invoke-direct {p8, v0}, Lcom/google/android/gms/internal/v;-><init>(Z)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/dn;

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/dn;-><init>(Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/ds;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/ce;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cf;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qi:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qj:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qk:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/cg;->ql:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qm:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qn:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/cm;

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    invoke-direct {v1, p6, p8, v2}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/dn;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qo:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/cg;->qp:Lcom/google/android/gms/internal/ch;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    const-string v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/cl;

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cl;-><init>(Lcom/google/android/gms/internal/dn;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    if-eqz p7, :cond_1

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/cj;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/cj;-><init>(Lcom/google/android/gms/internal/ck;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->xZ:Lcom/google/android/gms/internal/t;

    iput-object p2, p0, Lcom/google/android/gms/internal/hl;->ya:Lcom/google/android/gms/internal/dz;

    iput-object p3, p0, Lcom/google/android/gms/internal/hl;->qg:Lcom/google/android/gms/internal/cf;

    iput-object p6, p0, Lcom/google/android/gms/internal/hl;->qt:Lcom/google/android/gms/internal/ci;

    iput-object p4, p0, Lcom/google/android/gms/internal/hl;->yd:Lcom/google/android/gms/internal/ec;

    iput-object p8, p0, Lcom/google/android/gms/internal/hl;->qu:Lcom/google/android/gms/internal/v;

    iput-object p9, p0, Lcom/google/android/gms/internal/hl;->rT:Lcom/google/android/gms/internal/ds;

    iput-object p7, p0, Lcom/google/android/gms/internal/hl;->qq:Lcom/google/android/gms/internal/ck;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/hl;->A(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->xY:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->xY:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dR()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/dy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->ya:Lcom/google/android/gms/internal/dz;

    iget-object v3, p0, Lcom/google/android/gms/internal/hl;->yd:Lcom/google/android/gms/internal/ec;

    iget-object v4, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v5, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v5}, Lcom/google/android/gms/internal/hk;->dQ()Lcom/google/android/gms/internal/hg;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/hk;ZILcom/google/android/gms/internal/hg;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/dy;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->xZ:Lcom/google/android/gms/internal/t;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dR()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/dy;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hl;->qg:Lcom/google/android/gms/internal/cf;

    iget-object v4, p0, Lcom/google/android/gms/internal/hl;->yd:Lcom/google/android/gms/internal/ec;

    iget-object v5, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v6, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/hk;->dQ()Lcom/google/android/gms/internal/hg;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/hl;->qt:Lcom/google/android/gms/internal/ci;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/hk;ZILjava/lang/String;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/ci;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/dy;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->xZ:Lcom/google/android/gms/internal/t;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->ya:Lcom/google/android/gms/internal/dz;

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dR()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/internal/dy;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->oA:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/hl;->qg:Lcom/google/android/gms/internal/cf;

    iget-object v4, p0, Lcom/google/android/gms/internal/hl;->yd:Lcom/google/android/gms/internal/ec;

    iget-object v5, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v6, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/hk;->dQ()Lcom/google/android/gms/internal/hg;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/hl;->qt:Lcom/google/android/gms/internal/ci;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/dy;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/hk;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/ci;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/dy;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->xZ:Lcom/google/android/gms/internal/t;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->ya:Lcom/google/android/gms/internal/dz;

    goto :goto_1
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/dn;->b(II)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->xY:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final cn()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mL:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->yb:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->yc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dM()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/he;->dK()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/hl$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/hl$1;-><init>(Lcom/google/android/gms/internal/hl;Lcom/google/android/gms/internal/dw;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->cn()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/dn;->d(II)V

    return-void
.end method

.method public dS()Lcom/google/android/gms/internal/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qu:Lcom/google/android/gms/internal/v;

    return-object v0
.end method

.method public dT()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hl;->yc:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dU()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hl;->dT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->ye:Lcom/google/android/gms/internal/dr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr;->cf()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->W(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hl;->f(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->uc:Lcom/google/android/gms/internal/hl$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->uc:Lcom/google/android/gms/internal/hl$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hl$a;->a(Lcom/google/android/gms/internal/hk;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->uc:Lcom/google/android/gms/internal/hl$a;

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->xY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->xZ:Lcom/google/android/gms/internal/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->ya:Lcom/google/android/gms/internal/dz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->uc:Lcom/google/android/gms/internal/hl$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->qg:Lcom/google/android/gms/internal/cf;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->yb:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hl;->yc:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->qt:Lcom/google/android/gms/internal/ci;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->yd:Lcom/google/android/gms/internal/ec;

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dn;->k(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hl;->qr:Lcom/google/android/gms/internal/dn;

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

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->W(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hl;->f(Landroid/net/Uri;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/hl;->yb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    if-ne p1, v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->e(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->dP()Lcom/google/android/gms/internal/k;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/k;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/hl;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qu:Lcom/google/android/gms/internal/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qu:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/v;->az()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/dv;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/dv;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append parameter to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->qu:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/v;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView unable to handle URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
