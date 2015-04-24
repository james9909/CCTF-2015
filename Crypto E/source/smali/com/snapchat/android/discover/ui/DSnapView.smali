.class public Lcom/snapchat/android/discover/ui/DSnapView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;
    }
.end annotation


# instance fields
.field private A:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

.field private final a:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;

.field protected final b:Lcom/squareup/otto/Bus;

.field protected final c:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field protected final d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

.field protected e:Lcom/snapchat/android/discover/model/ChannelPage;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected f:Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final g:Lcom/snapchat/android/util/system/Clock;

.field protected h:J

.field protected final i:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field private final j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

.field private final k:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

.field private final n:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private final o:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final p:Landroid/view/GestureDetector;

.field private q:Lcom/snapchat/android/discover/model/DSnapPage;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/snapchat/android/discover/model/MediaState;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 117
    new-instance v2, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v2}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    new-instance v3, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;

    invoke-direct {v3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    invoke-direct {v6, p1}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v7}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->a()Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v12

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/discover/ui/DSnapView;-><init>(Landroid/content/Context;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/ui/VerticalSwipeLayout;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/ui/VerticalSwipeLayout;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Z

    .line 94
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:J

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Z

    .line 104
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

    .line 666
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapView$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$4;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    .line 132
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/util/system/Clock;

    .line 133
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;

    .line 134
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/squareup/otto/Bus;

    .line 135
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 136
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ljava/util/Map;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    .line 139
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    .line 140
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 141
    iput-object p9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    .line 142
    iput-object p10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->n:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 143
    iput-object p11, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 144
    iput-object p12, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 147
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapView$2;

    invoke-direct {v1, p0, p0}, Lcom/snapchat/android/discover/ui/DSnapView$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->p:Landroid/view/GestureDetector;

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 294
    if-nez p2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 305
    if-nez v0, :cond_2

    .line 306
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 310
    :cond_2
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 703
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_0

    .line 704
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            "I)",
            "Lcom/snapchat/android/discover/model/MediaState;"
        }
    .end annotation

    .prologue
    .line 712
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 714
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/util/debug/ReleaseManager;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/util/debug/ReleaseManager;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    return-object v0
.end method

.method private d(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 489
    const-string v1, "DSnapView"

    const-string v3, "Enter %s panel %d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v1

    if-ne v1, p1, :cond_2

    move v1, v2

    .line 492
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPanel;->f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v3, v4, :cond_3

    .line 493
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;

    invoke-direct {v4, v2}, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 499
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v0

    .line 491
    goto :goto_0

    .line 496
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;

    invoke-direct {v4, v0}, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 512
    :cond_4
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->m()V

    .line 514
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v3, v4, :cond_5

    .line 515
    const-string v1, "DSnapView"

    const-string v3, "Cannot enter %s panel %d yet, loading state is %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 519
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    if-nez v0, :cond_1

    .line 520
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_6

    .line 522
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->n_()V

    .line 524
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage;->j()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 533
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:J

    .line 534
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    .line 535
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v3, v4, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    .line 538
    if-eqz v1, :cond_1

    .line 539
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Z

    goto/16 :goto_2

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->n()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method private e(I)V
    .locals 13
    .parameter

    .prologue
    .line 558
    const-string v0, "DSnapView"

    const-string v1, "Leaving %s panel %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 562
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_1

    .line 565
    iget-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->g:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v1}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:J

    sub-long/2addr v2, v4

    .line 567
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->s()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->n:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v10}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v10}, Lcom/snapchat/android/discover/model/DSnapPage;->j()I

    move-result v10

    iget-object v11, p0, Lcom/snapchat/android/discover/ui/DSnapView;->n:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v12, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v12}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->g(Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {v1 .. v11}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 597
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->o_()V

    .line 598
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->k()V

    .line 602
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->h:J

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    .line 604
    return-void

    .line 577
    :cond_2
    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->n:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v10}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 585
    :cond_3
    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/discover/ui/DSnapView;->n:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v10, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v10}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;II)V

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/ui/VerticalSwipeLayout;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 163
    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setOnScrolledListener(Lcom/snapchat/android/ui/VerticalSwipeLayout$OnScrolledListener;)V

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DSnapView;)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->B:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;)V

    .line 169
    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    .line 170
    return-void
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Z

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Z

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    iget-boolean v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Z

    invoke-virtual/range {v0 .. v7}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;Z)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v1, v3, v2}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;ZLcom/snapchat/android/discover/model/MediaState;)V

    .line 285
    iput-boolean v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->x:Z

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
    .locals 2
    .parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->a:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;->a(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1

    .line 319
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V

    .line 320
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v1

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 322
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->removeViewAt(I)V

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->addView(Landroid/view/View;I)V

    .line 326
    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 465
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    if-nez v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    .line 471
    const-string v1, "DSnapView"

    const-string v2, "Exit page %s with current panel %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    iget-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v2, v6, v3}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;ZLcom/snapchat/android/discover/model/MediaState;)V

    .line 479
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    .line 480
    iput-boolean v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    goto :goto_0
.end method

.method public a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eq p2, p3, :cond_1

    .line 419
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapView;->e(I)V

    .line 420
    invoke-direct {p0, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 423
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->f()V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->k()V

    .line 724
    new-instance v0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;

    .line 725
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->r:Z

    .line 217
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapView;->c(Ljava/util/List;Lcom/snapchat/android/discover/model/DSnapPage;I)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    .line 220
    const-string v3, "DSnapView"

    const-string v4, "currentLoadingState: %s, adjusted: %s for %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v2, v3, :cond_2

    .line 229
    :goto_0
    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    .line 232
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->n()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-direct {p0, v2, v1, v3}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V

    .line 236
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    sget-object v3, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-direct {p0, v2, v1, v3}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/DSnapPage$Form;)V

    .line 239
    iget-boolean v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 244
    :cond_0
    if-eqz v0, :cond_1

    .line 247
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v0, v1

    .line 224
    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 448
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    if-eqz v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 453
    :cond_0
    iput-boolean v6, p0, Lcom/snapchat/android/discover/ui/DSnapView;->v:Z

    .line 454
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 456
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    .line 457
    const-string v1, "DSnapView"

    const-string v2, "Enter page %s with initial panel %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 402
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(I)V

    .line 403
    return-void
.end method

.method public b(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->u()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;)V

    .line 181
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 435
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->y:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->j()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->canScrollVertically(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    const v0, 0x7f0c00d5

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 347
    iget-object v7, p0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/squareup/otto/Bus;

    new-instance v0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/ChannelPage;->h()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)V

    invoke-virtual {v7, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->z:Z

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->m:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a()V

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    .line 550
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->c()V

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 620
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v1

    .line 626
    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPanel()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->s:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getCurrentPanel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->q:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method public getPublisherPrimaryColor()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public getPublisherSecondaryColor()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Z

    .line 647
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->d()V

    .line 648
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    .line 649
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->k:Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->f:Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->c()V

    .line 731
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->l()V

    .line 160
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 376
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapView$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapView$3;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(I)Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->o:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 397
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->A:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    .line 612
    return-void
.end method

.method setDSnapItemViewAdapterMap(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 736
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 737
    return-void
.end method

.method public setShouldDisplayOnboardingView(Z)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapView;->u:Z

    .line 656
    return-void
.end method
