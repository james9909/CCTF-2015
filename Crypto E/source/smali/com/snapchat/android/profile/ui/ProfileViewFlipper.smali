.class public Lcom/snapchat/android/profile/ui/ProfileViewFlipper;
.super Lcom/snapchat/android/ui/VerticalSwipeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;

    invoke-direct {v0, p0}, Lcom/snapchat/android/profile/ui/ProfileScrolledListener;-><init>(Lcom/snapchat/android/profile/ui/ProfileViewFlipper;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a:I

    .line 51
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->b:I

    .line 52
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->c:I

    .line 53
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getMeasuredHeight()I

    move-result v0

    .line 67
    mul-int/lit8 v1, p1, 0x2

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 68
    iget v1, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 72
    iget v2, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->b:I

    iget v3, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->c:I

    iget v4, p0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->d:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setBackgroundColor(I)V

    .line 76
    const v1, 0x7f0a0084

    invoke-virtual {p0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 84
    :cond_0
    const v1, 0x7f0a0085

    invoke-virtual {p0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    const/high16 v2, 0x3f80

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 88
    :cond_1
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->onScrollChanged(IIII)V

    .line 62
    invoke-direct {p0, p2}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->b(I)V

    .line 63
    return-void
.end method

.method protected setFullscreenWindowParams(Z)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 42
    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Z)V

    .line 43
    return-void
.end method
