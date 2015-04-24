.class public Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lin/srain/cube/views/ptr/PtrUIHandler;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->setBackgroundColor(I)V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04006f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 69
    const v1, 0x7f0a025c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method


# virtual methods
.method protected a(I)V
    .locals 4
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->setBackgroundResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 100
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 104
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;-><init>(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->d()V

    .line 41
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->e()V

    .line 61
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 78
    :cond_0
    const v0, 0x7f0201fd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    .line 79
    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->c()V

    .line 46
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 85
    :cond_0
    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->b()V

    .line 51
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->setBackgroundColor(I)V

    .line 93
    return-void
.end method

.method public d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->c()V

    .line 56
    return-void
.end method
