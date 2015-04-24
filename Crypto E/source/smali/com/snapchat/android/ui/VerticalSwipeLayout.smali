.class public Lcom/snapchat/android/ui/VerticalSwipeLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/widget/Scroller;

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Landroid/view/VelocityTracker;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 79
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a()V

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3fb33333

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    .line 85
    iput v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 87
    iput-boolean v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    .line 89
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:F

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:I

    .line 93
    const/high16 v0, 0x4248

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    .line 95
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e()V

    .line 96
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/R$styleable;->VerticalSwipeLayout:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 102
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-void

    .line 104
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 232
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 236
    :cond_0
    iput p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FZZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    if-eqz p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 151
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 152
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 154
    :cond_0
    return-void
.end method

.method private b(FZZ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->h:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    if-nez p3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 445
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:Z

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 452
    :cond_0
    return-void
.end method

.method private getAnimationDurationMultiplier()D
    .locals 8

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 399
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getYVelocity()I

    move-result v0

    .line 400
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 409
    :goto_0
    return-wide v0

    .line 403
    :cond_0
    const-wide/high16 v4, 0x4000

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    int-to-double v6, v1

    mul-double/2addr v4, v6

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 404
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_1

    .line 405
    neg-double v0, v0

    .line 407
    :cond_1
    const-wide/high16 v4, 0x3fe0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 408
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlingType()I
    .locals 2

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getYVelocity()I

    move-result v0

    .line 386
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    if-lez v1, :cond_0

    .line 387
    const/4 v0, -0x1

    .line 391
    :goto_0
    return v0

    .line 388
    :cond_0
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->n:I

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 389
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getYVelocity()I
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 376
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 377
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 338
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0, p1, v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 339
    return-void
.end method

.method public a(ID)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 349
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    if-eq p1, v0, :cond_2

    move v0, v6

    .line 352
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 354
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    const/4 v2, 0x2

    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-interface {v0, v2, v3, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;->a(III)V

    .line 359
    :cond_1
    iput p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    .line 361
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    mul-int/2addr v0, p1

    .line 362
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v2

    sub-int v4, v0, v2

    .line 363
    const-wide/high16 v2, 0x4079

    mul-double/2addr v2, p2

    double-to-int v0, v2

    .line 364
    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    if-nez v2, :cond_3

    move v5, v1

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 366
    iput-boolean v6, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    .line 367
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->invalidate()V

    .line 368
    return-void

    :cond_2
    move v0, v1

    .line 349
    goto :goto_0

    .line 364
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    div-int v5, v0, v2

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 3
    .parameter

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 436
    :cond_0
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 438
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :cond_3
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->j:Z

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;->c(I)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->scrollTo(II)V

    .line 426
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    return v0
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 182
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 223
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v2

    .line 181
    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 190
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 195
    :cond_4
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 202
    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    .line 203
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v5

    .line 204
    invoke-direct {p0, v3, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(FZZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 205
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 210
    :cond_5
    invoke-direct {p0, v3, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b(FZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    .line 213
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 214
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    if-eqz v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    iget v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-interface {v0, v1, v2, v7}, Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;->a(III)V

    .line 219
    :cond_6
    iput-boolean v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:Z

    move v2, v1

    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 139
    :goto_0
    if-ge v1, v3, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 142
    sub-int v5, p4, p2

    iget v6, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v2, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 143
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    add-int/2addr v0, v4

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b()V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x4000

    .line 114
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v2

    .line 117
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    .line 118
    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    move v1, v0

    .line 120
    :goto_0
    if-ge v1, v2, :cond_1

    .line 121
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->measureChild(Landroid/view/View;II)V

    .line 125
    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c:I

    add-int/2addr v0, v3

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 130
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 262
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 268
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    .line 334
    goto :goto_0

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->g:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 273
    :cond_2
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    goto :goto_1

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 280
    invoke-direct {p0, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float v0, v3, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    if-eqz v0, :cond_1

    :cond_3
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float v0, v3, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 288
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:Z

    if-nez v0, :cond_6

    .line 289
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_1

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    invoke-direct {p0, v3, v1, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b(FZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iput v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    .line 295
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    .line 296
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    invoke-interface {v0, v2, v1, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;->a(III)V

    .line 300
    :cond_5
    iput-boolean v2, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:Z

    goto :goto_1

    .line 306
    :cond_6
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->f:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollY(I)V

    goto :goto_1

    .line 311
    :pswitch_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->i:Z

    if-eqz v0, :cond_9

    .line 312
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    .line 313
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float/2addr v4, v3

    iget v5, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 314
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 318
    :cond_7
    :goto_2
    iget v3, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    if-ne v0, v3, :cond_8

    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getFlingType()I

    move-result v3

    add-int/2addr v0, v3

    .line 321
    :cond_8
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 323
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getAnimationDurationMultiplier()D

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 325
    :cond_9
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e()V

    goto/16 :goto_1

    .line 315
    :cond_a
    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->d:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 316
    iget v0, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 330
    :pswitch_3
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->e()V

    goto/16 :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;

    .line 456
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->k:Z

    .line 165
    return-void
.end method
