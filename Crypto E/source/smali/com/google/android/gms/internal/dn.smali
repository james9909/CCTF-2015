.class public Lcom/google/android/gms/internal/dn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# static fields
.field static final rK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private li:I

.field private lj:I

.field private final mContext:Landroid/content/Context;

.field private final mj:Lcom/google/android/gms/internal/hk;

.field private rL:Ljava/lang/String;

.field private rM:Z

.field private rN:I

.field private rO:I

.field private rP:I

.field private rQ:I

.field private rR:Landroid/widget/ImageView;

.field private rS:Landroid/widget/LinearLayout;

.field private rT:Lcom/google/android/gms/internal/ds;

.field private rU:Landroid/widget/PopupWindow;

.field private rV:Landroid/widget/RelativeLayout;

.field private rW:Landroid/view/ViewParent;

.field private rj:Lcom/google/android/gms/internal/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "top-left"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "top-right"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "top-center"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "center"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "bottom-left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "bottom-right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "bottom-center"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/dn;->rK:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/ds;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rL:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dn;->rM:Z

    iput v1, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iput v1, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iput v2, p0, Lcom/google/android/gms/internal/dn;->lj:I

    iput v1, p0, Lcom/google/android/gms/internal/dn;->rP:I

    iput v1, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    iput v2, p0, Lcom/google/android/gms/internal/dn;->li:I

    iput-object p1, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/hk;->dL()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/dn;->rT:Lcom/google/android/gms/internal/ds;

    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gx;->t(Landroid/content/Context;)[I

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gx;->P(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dn;->li:I

    :cond_0
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gx;->P(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dn;->lj:I

    :cond_1
    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gx;->P(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dn;->rP:I

    :cond_2
    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gx;->P(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    :cond_3
    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dn;->rM:Z

    :cond_4
    const-string v0, "customClosePosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rL:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method E(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    const-string v2, "onStateChanged"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while dispatching state change."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(II)V
    .locals 5

    const/4 v3, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iput p2, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dn;->bX()[I

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v0, v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/dn;->k(Z)V

    goto :goto_0
.end method

.method bW()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/android/gms/internal/dn;->li:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/dn;->lj:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bX()[I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dn;->ca()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->rM:Z

    if-eqz v0, :cond_1

    new-array v0, v7, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v4, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v1

    aput v1, v0, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gx;->t(Landroid/content/Context;)[I

    move-result-object v0

    aget v3, v0, v1

    aget v4, v0, v6

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v2, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v5, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v5

    if-gez v2, :cond_3

    move v3, v1

    :goto_1
    if-gez v0, :cond_4

    move v0, v1

    :cond_2
    :goto_2
    new-array v2, v7, [I

    iget-object v4, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v0

    aput v0, v2, v6

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/google/android/gms/internal/dn;->li:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_5

    iget v2, p0, Lcom/google/android/gms/internal/dn;->li:I

    sub-int v2, v3, v2

    move v3, v2

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/dn;->lj:I

    add-int/2addr v2, v0

    if-le v2, v4, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/dn;->lj:I

    sub-int v0, v4, v0

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method bY()V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    iget v2, p0, Lcom/google/android/gms/internal/dn;->rP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    iget v2, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/dn;->li:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/dn;->lj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    const-string v2, "onSizeChanged"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/hk;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while dispatching size change."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bZ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(II)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rT:Lcom/google/android/gms/internal/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rT:Lcom/google/android/gms/internal/ds;

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    iget v4, p0, Lcom/google/android/gms/internal/dn;->lj:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ds;->a(IIII)V

    :cond_0
    return-void
.end method

.method ca()Z
    .locals 7

    const/16 v6, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/gx;->h(Landroid/app/Activity;)[I

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/gx;->j(Landroid/app/Activity;)[I

    move-result-object v4

    aget v5, v3, v1

    aget v0, v3, v2

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    if-lt v3, v6, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    if-le v3, v5, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v3, p0, Lcom/google/android/gms/internal/dn;->lj:I

    if-lt v3, v6, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/dn;->lj:I

    if-le v3, v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/gms/internal/dn;->lj:I

    if-ne v3, v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/dn;->li:I

    if-ne v0, v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->rM:Z

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->rL:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_1
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x32

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    :goto_2
    if-ltz v3, :cond_6

    add-int/lit8 v3, v3, 0x32

    if-gt v3, v5, :cond_6

    aget v3, v4, v1

    if-lt v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x32

    aget v3, v4, v2

    if-le v0, v3, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_0
    const-string v6, "top-left"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v6, "top-center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v6, "center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "bottom-left"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "bottom-center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "bottom-right"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v3, v0

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    goto :goto_2

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/android/gms/internal/dn;->lj:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x19

    goto/16 :goto_2

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v3, v0

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/android/gms/internal/dn;->lj:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x32

    goto/16 :goto_2

    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x19

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/android/gms/internal/dn;->lj:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x32

    goto/16 :goto_2

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget v3, p0, Lcom/google/android/gms/internal/dn;->rP:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/dn;->li:I

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x32

    iget v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    iget v6, p0, Lcom/google/android/gms/internal/dn;->rQ:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/android/gms/internal/dn;->lj:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x32

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x3c587281 -> :sswitch_0
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_5
        0x4ccee637 -> :sswitch_4
        0x68a23bcd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public d(II)V
    .locals 1

    const-string v0, "setDefaultPosition"

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iput p2, p0, Lcom/google/android/gms/internal/dn;->rO:I

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v11, 0xc

    const/16 v10, 0xa

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "Not an activity context. Cannot resize."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ay;->oA:Z

    if-eqz v0, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dR()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Is expanded. Cannot resize an expanded banner."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dn;->e(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dn;->bW()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v5, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/hk;->getLocationOnScreen([I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    aget v6, v0, v2

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/dn;->rN:I

    iget-object v5, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    aget v0, v0, v1

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/he;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dn;->rO:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dn;->bX()[I

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/google/android/gms/internal/dn;->li:I

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/google/android/gms/internal/dn;->lj:I

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v8}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/dn;->rR:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/gms/internal/dn;->rR:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v8}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/google/android/gms/internal/dn;->rR:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rj:Lcom/google/android/gms/internal/ay;

    :cond_5
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rV:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rV:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/google/android/gms/internal/dn;->rV:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v8, v6, v7, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->rM:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rV:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v6}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v0, v6, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->rS:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    const/16 v7, 0x32

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v7, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    const/16 v8, 0x32

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_6
    move v0, v3

    :goto_3
    packed-switch v0, :pswitch_data_0

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rS:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/google/android/gms/internal/dn$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/dn$1;-><init>(Lcom/google/android/gms/internal/dn;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rV:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->rS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    aget v4, v5, v2

    aget v6, v5, v1

    invoke-virtual {v0, v3, v2, v4, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    aget v0, v5, v2

    aget v1, v5, v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dn;->c(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    new-instance v1, Lcom/google/android/gms/internal/ay;

    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    iget v4, p0, Lcom/google/android/gms/internal/dn;->li:I

    iget v5, p0, Lcom/google/android/gms/internal/dn;->lj:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ay;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dn;->bY()V

    const-string v0, "resized"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dn;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_2

    :sswitch_0
    const-string v7, "top-left"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :sswitch_1
    const-string v7, "top-center"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :sswitch_2
    const-string v7, "center"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_3
    const-string v7, "bottom-left"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_4
    const-string v7, "bottom-center"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    goto/16 :goto_3

    :sswitch_5
    const-string v7, "bottom-right"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :cond_8
    move-object v4, v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x3c587281 -> :sswitch_0
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_5
        0x4ccee637 -> :sswitch_4
        0x68a23bcd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rU:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->rR:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rW:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->rj:Lcom/google/android/gms/internal/ay;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/ay;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dn;->E(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rT:Lcom/google/android/gms/internal/ds;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->rT:Lcom/google/android/gms/internal/ds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ds;->al()V

    :cond_2
    return-void
.end method
