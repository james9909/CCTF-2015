.class public Lcom/snapchat/android/camera/AutofocusCrosshair;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/animation/AnimationSet;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const v7, 0x3fcccccd

    const v5, 0x3fa66666

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:Landroid/view/View;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 37
    const/high16 v1, 0x42aa

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 38
    iget-object v1, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v1, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/AutofocusCrosshair;->addView(Landroid/view/View;)V

    .line 41
    int-to-float v1, v0

    mul-float/2addr v1, v7

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float v0, v1, v0

    .line 42
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    div-float v2, v0, v3

    div-float/2addr v0, v3

    invoke-direct {v1, v4, v2, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 44
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 45
    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 47
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v7, v5, v7, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 49
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 50
    invoke-virtual {v0, v6}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 52
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 53
    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 54
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 56
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Landroid/view/animation/AnimationSet;

    .line 57
    iget-object v3, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 58
    iget-object v1, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/snapchat/android/camera/AutofocusCrosshair$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/AutofocusCrosshair$1;-><init>(Lcom/snapchat/android/camera/AutofocusCrosshair;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/AutofocusCrosshair;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:Landroid/view/View;

    return-object v0
.end method

.method private b(FF)Landroid/graphics/Point;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const v2, 0x3fcccccd

    .line 84
    invoke-virtual {p0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 87
    new-instance v2, Landroid/graphics/Point;

    sub-float v0, p1, v0

    float-to-int v0, v0

    sub-float v1, p2, v1

    float-to-int v1, v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:Landroid/view/View;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/camera/AutofocusCrosshair;->b(FF)Landroid/graphics/Point;

    move-result-object v1

    .line 77
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 78
    invoke-virtual {p0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->requestLayout()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
