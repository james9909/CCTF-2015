.class public Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;,
        Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;,
        Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemWithClickInterface;
    }
.end annotation


# instance fields
.field private a:I

.field protected b:I

.field protected c:Landroid/widget/ListView;

.field protected d:Z

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field protected g:Z

.field private h:I

.field private i:I

.field private j:F

.field private k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:I

.field private v:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:I

    .line 145
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    .line 148
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:I

    .line 150
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    .line 151
    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    .line 152
    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;FF)Ljava/lang/Boolean;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 365
    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    move v0, v1

    .line 366
    :goto_0
    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->a(Landroid/view/View;)F

    move-result v5

    float-to-int v5, v5

    .line 370
    if-nez v5, :cond_0

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v7, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-eq v6, v7, :cond_1

    :cond_0
    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v6, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v5, v6, :cond_3

    .line 372
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 417
    :goto_1
    return-object v0

    :cond_2
    move v0, v2

    .line 365
    goto :goto_0

    .line 375
    :cond_3
    iget-boolean v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    iget v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    if-ltz v5, :cond_5

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:I

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    .line 379
    :cond_4
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d()V

    .line 380
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 384
    iput-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    .line 385
    if-eqz v0, :cond_e

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    :goto_2
    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:I

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 390
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/lit8 v5, v5, 0x3

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 393
    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 397
    :cond_6
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:Z

    if-eqz v0, :cond_10

    .line 398
    :cond_7
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->u:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v5, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v0, v5, :cond_8

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    iput v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    .line 400
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v5, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v0, v5, :cond_9

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    iput v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v0

    .line 402
    iget v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    neg-float v5, v5

    int-to-float v0, v0

    div-float v0, v5, v0

    .line 403
    cmpg-float v5, v0, v4

    if-gez v5, :cond_a

    move v0, v4

    .line 404
    :cond_a
    cmpl-float v4, v0, v3

    if-lez v4, :cond_11

    .line 406
    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->a(Landroid/view/View;)F

    move-result v0

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v4, v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_f

    .line 408
    :goto_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:Z

    if-nez v0, :cond_b

    if-eqz v1, :cond_d

    .line 409
    :cond_b
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->n:Z

    if-eqz v0, :cond_c

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 412
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->c(Landroid/view/View;)V

    .line 414
    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    iget v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->s:F

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->a(Landroid/view/View;FFFF)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 385
    :cond_e
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b:I

    neg-int v0, v0

    goto/16 :goto_2

    :cond_f
    move v1, v2

    .line 406
    goto :goto_4

    .line 417
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_11
    move v3, v0

    goto :goto_3
.end method

.method private a(Landroid/view/View;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    .line 446
    return-void
.end method

.method private a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    if-nez p2, :cond_0

    move v0, v1

    .line 450
    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    float-to-int v4, v4

    aput v4, v3, v2

    aput p2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 451
    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 462
    new-instance v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 483
    invoke-virtual {v1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 485
    return-void

    :cond_0
    move v0, v2

    .line 449
    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    return v0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 437
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    return-object v0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 440
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, v0

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 351
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 353
    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    int-to-float v1, v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    .line 361
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    iget v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:I

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    .line 362
    return-void

    .line 357
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    return v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 491
    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->s:F

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 497
    iput-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    .line 498
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:F

    .line 499
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->r:F

    .line 500
    iput-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    .line 501
    iput-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    .line 502
    iput-boolean v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:Z

    .line 503
    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    .line 504
    iput v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    .line 505
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 425
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;-><init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)V

    return-object v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Z

    .line 157
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->n:Z

    .line 161
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 169
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->g:Z

    .line 170
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:I

    if-ge v0, v5, :cond_0

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->l:I

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :cond_1
    :goto_0
    return v2

    .line 203
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    .line 204
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->g:Z

    if-nez v0, :cond_1

    .line 211
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 213
    new-array v0, v5, [I

    .line 214
    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    aget v6, v0, v2

    sub-int/2addr v5, v6

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    aget v0, v0, v1

    sub-int/2addr v6, v0

    move v1, v2

    .line 218
    :goto_1
    if-ge v1, v4, :cond_3

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 221
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 223
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c:Landroid/widget/ListView;

    instance-of v1, v1, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:F

    .line 230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->r:F

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->q:F

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->s:F

    .line 233
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Z

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->a(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    .line 238
    :goto_2
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    .line 239
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 236
    :cond_5
    iput v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->i:I

    goto :goto_2

    :pswitch_1
    move v0, v1

    .line 248
    :goto_3
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->g:Z

    if-nez v3, :cond_1

    .line 252
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:F

    sub-float v5, v3, v4

    .line 253
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 254
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 255
    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 256
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 257
    iget-object v6, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 261
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v9, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    .line 266
    cmpl-float v3, v5, v10

    if-lez v3, :cond_6

    move v3, v1

    .line 277
    :goto_4
    if-eqz v1, :cond_12

    .line 278
    iget-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->m:Z

    if-eqz v1, :cond_f

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->o:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    sget-object v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    if-ne v0, v1, :cond_e

    if-eqz v3, :cond_e

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:I

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    .line 317
    :goto_5
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    .line 318
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d()V

    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 266
    goto :goto_4

    .line 267
    :cond_7
    iget v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    int-to-float v7, v7

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_9

    .line 270
    cmpl-float v3, v5, v10

    if-lez v3, :cond_8

    move v3, v1

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_4

    .line 271
    :cond_9
    iget v7, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a:I

    int-to-float v7, v7

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_16

    cmpg-float v4, v6, v4

    if-gez v4, :cond_16

    iget-boolean v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d:Z

    if-eqz v4, :cond_16

    .line 273
    cmpg-float v3, v3, v10

    if-gez v3, :cond_a

    move v4, v1

    :goto_6
    cmpg-float v3, v5, v10

    if-gez v3, :cond_b

    move v3, v1

    :goto_7
    if-ne v4, v3, :cond_c

    move v3, v1

    .line 274
    :goto_8
    cmpl-float v4, v5, v10

    if-lez v4, :cond_d

    :goto_9
    move v11, v1

    move v1, v3

    move v3, v11

    goto :goto_4

    :cond_a
    move v4, v2

    .line 273
    goto :goto_6

    :cond_b
    move v3, v2

    goto :goto_7

    :cond_c
    move v3, v2

    goto :goto_8

    :cond_d
    move v1, v2

    .line 274
    goto :goto_9

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:I

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    goto :goto_5

    .line 285
    :cond_f
    if-nez v0, :cond_10

    cmpl-float v0, v5, v10

    if-lez v0, :cond_10

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->h:I

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;II)V

    .line 287
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UserFlingedIntoChatEvent;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/UserFlingedIntoChatEvent;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_5

    .line 290
    :cond_10
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:Z

    if-eqz v0, :cond_11

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    iget-object v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v1, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v1

    const/16 v3, 0x32

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    goto/16 :goto_5

    .line 303
    :cond_11
    iput v10, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->j:F

    goto/16 :goto_5

    .line 308
    :cond_12
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    instance-of v0, v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemWithClickInterface;

    if-eqz v0, :cond_13

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;)I

    move-result v1

    .line 310
    const/4 v0, -0x1

    if-eq v1, v0, :cond_13

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->k:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    check-cast v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemWithClickInterface;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemWithClickInterface;->a(I)V

    .line 315
    :cond_13
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b()V

    goto/16 :goto_5

    .line 323
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->g:Z

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->v:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 328
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->p:F

    sub-float v3, v0, v3

    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->r:F

    sub-float v4, v0, v4

    .line 331
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:Z

    if-nez v0, :cond_14

    .line 332
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c()Z

    move-result v5

    .line 333
    const/high16 v0, 0x4248

    cmpl-float v0, v3, v0

    if-lez v0, :cond_15

    move v0, v1

    .line 334
    :goto_a
    if-eqz v0, :cond_14

    if-eqz v5, :cond_14

    .line 335
    iput-boolean v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->t:Z

    .line 339
    :cond_14
    invoke-direct {p0, p2, v3, v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/MotionEvent;FF)Ljava/lang/Boolean;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_0

    :cond_15
    move v0, v2

    .line 333
    goto :goto_a

    :cond_16
    move v3, v2

    move v1, v2

    goto/16 :goto_4

    :pswitch_3
    move v0, v2

    goto/16 :goto_3

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
