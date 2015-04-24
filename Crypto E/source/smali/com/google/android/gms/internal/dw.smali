.class public Lcom/google/android/gms/internal/dw;
.super Lcom/google/android/gms/internal/ee$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dw$b;,
        Lcom/google/android/gms/internal/dw$c;,
        Lcom/google/android/gms/internal/dw$a;
    }
.end annotation


# static fields
.field private static final sx:I


# instance fields
.field private mj:Lcom/google/android/gms/internal/hk;

.field private final nL:Landroid/app/Activity;

.field private rV:Landroid/widget/RelativeLayout;

.field private sA:Lcom/google/android/gms/internal/dw$c;

.field private sB:Lcom/google/android/gms/internal/eb;

.field private sC:Z

.field private sD:Z

.field private sE:Landroid/widget/FrameLayout;

.field private sF:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private sG:Z

.field private sH:Z

.field private sI:Z

.field private sJ:Z

.field private sK:Z

.field private sy:Lcom/google/android/gms/internal/dy;

.field private sz:Lcom/google/android/gms/internal/ea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/dw;->sx:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ee$a;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/dw;->sD:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/dw;->sG:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/dw;->sH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sI:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/dw;->sJ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/dy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/dw;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dy;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/dy;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/dy;->lH:Lcom/google/android/gms/internal/hg;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/hg;->xS:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/dy;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/dy;)V

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static b(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method


# virtual methods
.method public X()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sC:Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->X()V

    iput-object p2, p0, Lcom/google/android/gms/internal/dw;->sF:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sD:Z

    return-void
.end method

.method public c(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/dw;->b(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public cl()Lcom/google/android/gms/internal/ea;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public cm()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->X()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/dw;->sE:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sF:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sF:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/dw;->sF:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sD:Z

    return-void
.end method

.method public cn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->sB:Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->q(Z)V

    return-void
.end method

.method co()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sH:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->cr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sA:Lcom/google/android/gms/internal/dw$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->z(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sA:Lcom/google/android/gms/internal/dw$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/dw$c;->sN:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->sA:Lcom/google/android/gms/internal/dw$c;

    iget v2, v2, Lcom/google/android/gms/internal/dw$c;->index:I

    iget-object v3, p0, Lcom/google/android/gms/internal/dw;->sA:Lcom/google/android/gms/internal/dw$c;

    iget-object v3, v3, Lcom/google/android/gms/internal/dw$c;->sM:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sQ:Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sQ:Lcom/google/android/gms/internal/dz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dz;->ae()V

    goto :goto_0
.end method

.method public cp()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->cq()V

    :cond_0
    return-void
.end method

.method cq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->cq()V

    return-void
.end method

.method cr()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->cr()V

    return-void
.end method

.method public d(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ea;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ea;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/dw;->b(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hl;->A(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sG:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dy;->b(Landroid/content/Intent;)Lcom/google/android/gms/internal/dy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/dw$a;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dw$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/dw$a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sI:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->ta:Lcom/google/android/gms/internal/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->ta:Lcom/google/android/gms/internal/y;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/y;->mb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sJ:Z

    :goto_1
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sQ:Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sI:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sQ:Lcom/google/android/gms/internal/dz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dz;->af()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->sX:I

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sP:Lcom/google/android/gms/internal/t;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sP:Lcom/google/android/gms/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/t;->onAdClicked()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->sX:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/dw$a;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dw$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sJ:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->s(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/dw$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v1, v1, Lcom/google/android/gms/internal/dy;->sR:Lcom/google/android/gms/internal/hk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dw$c;-><init>(Lcom/google/android/gms/internal/hk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->sA:Lcom/google/android/gms/internal/dw$c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->s(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->s(Z)V

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sG:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v1, v1, Lcom/google/android/gms/internal/dy;->sO:Lcom/google/android/gms/internal/dv;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->sW:Lcom/google/android/gms/internal/ec;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/dt;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dv;Lcom/google/android/gms/internal/ec;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/dw$a; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->co()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sz:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ea;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->cm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sA:Lcom/google/android/gms/internal/dw$c;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->a(Landroid/webkit/WebView;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->co()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->sX:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->b(Landroid/webkit/WebView;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sG:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/dw;->sG:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->co()V

    return-void
.end method

.method public q(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/eb;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/eb;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/dw;->sB:Lcom/google/android/gms/internal/eb;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sB:Lcom/google/android/gms/internal/eb;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/dy;->sU:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/eb;->r(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->sB:Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sB:Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sB:Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/eb;->r(Z)V

    :cond_0
    return-void
.end method

.method s(Z)V
    .locals 15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sJ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->ta:Lcom/google/android/gms/internal/y;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/y;->mn:Z

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x400

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->orientation:I

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gy;->dF()I

    move-result v2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delay onShow to next orientation change: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gy;->a(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/dw$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->sZ:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dw$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sJ:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->X()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->dT()Z

    move-result v4

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aH()Lcom/google/android/gms/internal/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v2, v2, Lcom/google/android/gms/internal/dy;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/hk;->aa()Lcom/google/android/gms/internal/ay;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v6, v6, Lcom/google/android/gms/internal/dy;->lH:Lcom/google/android/gms/internal/hg;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hm;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v8, v0, Lcom/google/android/gms/internal/dy;->sS:Lcom/google/android/gms/internal/cf;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v9, v0, Lcom/google/android/gms/internal/dy;->sW:Lcom/google/android/gms/internal/ec;

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v11, v0, Lcom/google/android/gms/internal/dy;->sY:Lcom/google/android/gms/internal/ci;

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->dS()Lcom/google/android/gms/internal/v;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/ec;ZLcom/google/android/gms/internal/ci;Lcom/google/android/gms/internal/ck;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/ds;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dw$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dw$1;-><init>(Lcom/google/android/gms/internal/dw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->st:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v1, v1, Lcom/google/android/gms/internal/dy;->st:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->loadUrl(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/internal/dw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sJ:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    sget v1, Lcom/google/android/gms/internal/dw;->sx:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->setBackgroundColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dw;->cq()V

    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/dw;->q(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dO()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dw;->r(Z)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget v0, v0, Lcom/google/android/gms/internal/dy;->orientation:I

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gy;->dG()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dw;->sK:Z

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->rV:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/dw;->sx:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sV:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v5, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v6, v0, Lcom/google/android/gms/internal/dy;->sT:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v7, v0, Lcom/google/android/gms/internal/dy;->sV:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/hk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/dw$a;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dw$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->sy:Lcom/google/android/gms/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/internal/dy;->sR:Lcom/google/android/gms/internal/hk;

    iput-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->mj:Lcom/google/android/gms/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hk;->setContext(Landroid/content/Context;)V

    goto/16 :goto_3
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw;->nL:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
