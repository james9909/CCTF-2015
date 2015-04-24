.class public Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;,
        Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;,
        Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private b:Lcom/snapchat/android/util/system/Clock;

.field private c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:Landroid/view/View;

.field private q:I

.field private r:Landroid/view/VelocityTracker;

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:I

    .line 45
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    .line 48
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    .line 49
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    .line 51
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    .line 70
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->v:Z

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->w:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->x:Ljava/util/Set;

    .line 123
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOffscreenPageLimit(I)V

    .line 124
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setPageMargin(I)V

    .line 125
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setPageMarginDrawable(I)V

    .line 127
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b:Lcom/snapchat/android/util/system/Clock;

    .line 128
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 129
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e()V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/DSnapView;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    return-object v0
.end method

.method private a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    .line 247
    iput p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    .line 248
    return-void
.end method

.method private a(FFI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 256
    if-nez p3, :cond_1

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 258
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    .line 259
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:Z

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:Z

    goto :goto_0

    .line 265
    :cond_2
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 267
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    .line 268
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 487
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->u:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    return-object v0
.end method

.method private b(FF)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->j:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_0
    move v0, v1

    .line 286
    :cond_1
    :goto_0
    return v0

    .line 282
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private c(FF)F
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 383
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    if-nez v0, :cond_0

    .line 384
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:F

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 388
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    if-nez v0, :cond_1

    .line 386
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->k:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:F

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 388
    :cond_1
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->l:F

    sub-float v0, p2, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->o:F

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->u:I

    return v0
.end method

.method private c(I)Lcom/snapchat/android/discover/ui/DSnapView;
    .locals 1
    .parameter

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->j:I

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->q:I

    .line 143
    const/high16 v0, 0x442f

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->s:I

    .line 145
    const/high16 v0, 0x4348

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->t:I

    .line 148
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 149
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/high16 v1, 0x4100

    .line 241
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->n:F

    .line 242
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->o:F

    .line 243
    return-void
.end method

.method private g()Z
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    .line 395
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->q:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 396
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 397
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 401
    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->s:I

    if-le v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->s:I

    neg-int v2, v2

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->t:I

    if-le v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(I)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    .line 408
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    .line 409
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    .line 413
    :cond_0
    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(I)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->f()V

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(I)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b()V

    .line 536
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 538
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e(Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->v:Z

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->v:Z

    .line 454
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    sget-object v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->f:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(I)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a()V

    .line 549
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 563
    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d:I

    if-eqz v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/DSnapView;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public getExitMethod()Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i:Z

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    .line 236
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h:Z

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    goto :goto_0

    .line 236
    :cond_1
    sget-object v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    goto :goto_0
.end method

.method public getNumLongformsViewed()I
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    .line 504
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v1

    .line 505
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/DSnapView;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->x:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getNumPagesViewed()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 179
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v2

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 210
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-nez v2, :cond_0

    .line 212
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 218
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FF)V

    .line 188
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->m:F

    .line 189
    invoke-direct {p0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(I)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/View;

    goto :goto_1

    .line 194
    :pswitch_2
    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->p:Landroid/view/View;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 196
    :cond_3
    invoke-direct {p0, v3, v4, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FFI)V

    .line 198
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-eqz v2, :cond_2

    .line 199
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FF)V

    goto :goto_1

    .line 219
    :catch_0
    move-exception v2

    .line 220
    const-string v3, "EditionViewerPager"

    const-string v4, "Swallowing exception from ViewPager.onInterceptTouchEvent: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v0, v1

    .line 223
    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 135
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f()V

    .line 136
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Landroid/view/MotionEvent;)V

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 308
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    .line 310
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 313
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v2

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 316
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v5

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 363
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-nez v2, :cond_0

    .line 368
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-nez v2, :cond_9

    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(FF)Z

    move-result v2

    if-nez v2, :cond_9

    .line 373
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-boolean v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->m:F

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-nez v5, :cond_4

    .line 323
    invoke-direct {p0, v3, v4, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(FFI)V

    .line 326
    :cond_4
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-eqz v2, :cond_3

    .line 327
    invoke-direct {p0, v3, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(FF)F

    move-result v2

    .line 328
    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    invoke-interface {v5, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;->a(F)V

    .line 329
    :cond_5
    const/high16 v5, 0x3f80

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getExitMethod()Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    move-result-object v2

    .line 331
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h()V

    .line 332
    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    invoke-interface {v5, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 333
    :cond_6
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    goto :goto_1

    .line 340
    :pswitch_1
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->f:Z

    if-eqz v2, :cond_7

    .line 341
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    if-eqz v2, :cond_7

    .line 342
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 343
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getExitMethod()Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V

    .line 344
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->g:Z

    .line 350
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h()V

    goto :goto_1

    .line 346
    :cond_8
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    invoke-interface {v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;->h()V

    goto :goto_2

    .line 355
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->h()V

    .line 356
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    invoke-interface {v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;->h()V

    goto :goto_1

    .line 374
    :catch_0
    move-exception v2

    .line 375
    const-string v3, "EditionViewerPager"

    const-string v4, "Swallowing exception from ViewPager.onTouchEvent: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    move v0, v1

    .line 378
    goto/16 :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 1
    .parameter

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(IZ)V

    .line 438
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)V

    .line 430
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 431
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    .line 433
    :cond_0
    return-void
.end method

.method public setCurrentPanel(I)V
    .locals 1
    .parameter

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentView()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)V

    .line 526
    :cond_0
    return-void
.end method

.method public setLockedInPlace(Z)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->e:Z

    .line 470
    return-void
.end method

.method public setOnSwipeOutListener(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;

    .line 168
    return-void
.end method
