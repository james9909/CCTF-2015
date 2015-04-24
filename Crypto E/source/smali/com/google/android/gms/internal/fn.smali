.class public Lcom/google/android/gms/internal/fn;
.super Lcom/google/android/gms/internal/fm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private us:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    return-void
.end method


# virtual methods
.method protected cQ()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/hk;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v0, "Displaying the 1x1 popup off the screen."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method protected h(Lcom/google/android/gms/internal/gn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->us:Landroid/widget/PopupWindow;

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/fm;->h(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method
