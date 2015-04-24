.class public Lcom/google/android/gms/internal/dr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mX:Landroid/view/WindowManager;

.field private final mj:Lcom/google/android/gms/internal/hk;

.field private final si:Lcom/google/android/gms/internal/bl;

.field sj:Landroid/util/DisplayMetrics;

.field private sk:F

.field sl:I

.field sm:I

.field private sn:I

.field so:I

.field sp:I

.field sq:I

.field sr:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hk;Landroid/content/Context;Lcom/google/android/gms/internal/bl;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sl:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sm:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->so:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sp:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sq:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sr:I

    iput-object p1, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    iput-object p2, p0, Lcom/google/android/gms/internal/dr;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/dr;->si:Lcom/google/android/gms/internal/bl;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/dr;->mX:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;->cc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->cd()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->ce()V

    return-void
.end method

.method private cc()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mX:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/dr;->sk:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sn:I

    return-void
.end method

.method private ck()Lcom/google/android/gms/internal/dq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/dq$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dq$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->si:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq$a;->m(Z)Lcom/google/android/gms/internal/dq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->si:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bx()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq$a;->l(Z)Lcom/google/android/gms/internal/dq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->si:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bB()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq$a;->n(Z)Lcom/google/android/gms/internal/dq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->si:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->by()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq$a;->o(Z)Lcom/google/android/gms/internal/dq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->si:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bz()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dq$a;->p(Z)Lcom/google/android/gms/internal/dq$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq$a;->cb()Lcom/google/android/gms/internal/dq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method cd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/he;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sl:I

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/he;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sm:I

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dL()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/dr;->sl:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->so:I

    iget v0, p0, Lcom/google/android/gms/internal/dr;->sm:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sp:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gx;->g(Landroid/app/Activity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/he;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/dr;->so:I

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->sj:Landroid/util/DisplayMetrics;

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sp:I

    goto :goto_0
.end method

.method ce()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/dr;->sl:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sq:I

    iget v0, p0, Lcom/google/android/gms/internal/dr;->sm:I

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sr:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/hk;->measure(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sq:I

    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dr;->sr:I

    goto :goto_0
.end method

.method public cf()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->ci()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->cj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->ch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dr;->cg()V

    return-void
.end method

.method public cg()V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    const-string v1, "onReadyEventReceived"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ch()V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/hk;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/dr;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "y"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "width"

    iget v4, p0, Lcom/google/android/gms/internal/dr;->sq:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "height"

    iget v4, p0, Lcom/google/android/gms/internal/dr;->sr:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    const-string v4, "onDefaultPositionReceived"

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/hl;->d(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while dispatching default position."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public ci()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/dr;->sl:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/dr;->sm:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "maxSizeWidth"

    iget v2, p0, Lcom/google/android/gms/internal/dr;->so:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "maxSizeHeight"

    iget v2, p0, Lcom/google/android/gms/internal/dr;->sp:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "density"

    iget v2, p0, Lcom/google/android/gms/internal/dr;->sk:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rotation"

    iget v2, p0, Lcom/google/android/gms/internal/dr;->sn:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    const-string v2, "onScreenInfoChanged"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining screen information."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cj()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;->ck()Lcom/google/android/gms/internal/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dr;->mj:Lcom/google/android/gms/internal/hk;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dq;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
