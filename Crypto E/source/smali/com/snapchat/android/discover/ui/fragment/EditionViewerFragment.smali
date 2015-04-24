.class public Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseChannelListener;
.implements Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;
.implements Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;
.implements Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseChannelListener;",
        "Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;",
        "Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;",
        "Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

.field private b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

.field private final d:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

.field private final e:Lcom/squareup/otto/Bus;

.field private final f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

.field private final g:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field private final h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private i:Lcom/snapchat/android/util/ScreenRotationObserver;

.field private j:Lcom/snapchat/android/discover/model/ChannelPage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:I

.field private l:Z

.field private final m:Lcom/snapchat/android/util/system/Clock;

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 77
    new-instance v1, Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-direct {v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v4}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    new-instance v5, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v5}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;-><init>(Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/bitmap/BitmapRecycling;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:J

    .line 87
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    .line 88
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    .line 89
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 90
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 91
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Lcom/snapchat/android/util/system/Clock;

    .line 92
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 93
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;)I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b(Ljava/lang/String;)Z

    move-result v1

    .line 223
    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 226
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->setAlpha(F)V

    .line 273
    return-void
.end method

.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 365
    :goto_0
    const-string v3, "EditionViewerFragment"

    const-string v4, "onRotate %d with isLandscapeSupported %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    sparse-switch p1, :sswitch_data_0

    .line 386
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setLockedInPlace(Z)V

    .line 389
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 364
    goto :goto_0

    .line 369
    :sswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v3, v1}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 372
    :sswitch_1
    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v3, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v2, v1

    .line 374
    goto :goto_1

    .line 378
    :sswitch_2
    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    move v2, v1

    .line 380
    goto :goto_1

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x1000 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 332
    const-string v1, "EditionViewerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFinished - loaderId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    packed-switch v0, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->a(Landroid/database/Cursor;)V

    .line 337
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:I

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:I

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentItem(IZ)V

    .line 339
    const-string v0, "EditionViewerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening page to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Z

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;)V
    .locals 10
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:J

    sub-long/2addr v2, v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getNumPagesViewed()I

    move-result v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getNumLongformsViewed()I

    move-result v7

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v9

    move-object v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLjava/lang/String;Ljava/lang/String;IILcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->a()V

    .line 288
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne p3, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;Z)V

    .line 303
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/discover/util/eventbus/EditionClosedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/discover/util/eventbus/EditionClosedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->k:I

    goto :goto_0
.end method

.method protected d_()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Lcom/snapchat/android/util/ScreenRotationObserver;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ScreenRotationObserver;->b()V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public e()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v1, v10}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setCurrentPanel(I)V

    .line 197
    :goto_0
    return v10

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v4

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 181
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:J

    sub-long/2addr v2, v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getNumPagesViewed()I

    move-result v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getNumLongformsViewed()I

    move-result v7

    sget-object v8, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->e:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLjava/lang/String;Ljava/lang/String;IILcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;I)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->x:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    if-nez v0, :cond_0

    .line 252
    const-string v0, "EditionViewerFragment"

    const-string v1, "channel page or pager was null when logging app background"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v4

    .line 257
    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->g:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:J

    sub-long/2addr v2, v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getNumPagesViewed()I

    move-result v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getNumLongformsViewed()I

    move-result v7

    sget-object v8, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->d:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->h:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLjava/lang/String;Ljava/lang/String;IILcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;I)V

    goto :goto_0

    .line 266
    :cond_1
    const-string v0, "EditionViewerFragment"

    const-string v1, "edition ID or pager null when logging app background"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->b()V

    .line 293
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 307
    const/16 v1, 0x44c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 308
    return-void
.end method

.method public j()J
    .locals 2

    .prologue
    .line 354
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d()V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->l:Z

    .line 103
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter$EditionCursorPagerAdapterListener;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    .line 104
    new-instance v0, Lcom/snapchat/android/util/ScreenRotationObserver;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x1011

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/ScreenRotationObserver;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Lcom/snapchat/android/util/ScreenRotationObserver;

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Lcom/snapchat/android/util/ScreenRotationObserver;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/ScreenRotationObserver;->a(Lcom/snapchat/android/util/ScreenRotationObserver$ScreenRotationListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i()V

    .line 107
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 312
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 324
    :goto_0
    return-object v0

    .line 314
    :pswitch_0
    const-string v0, "EditionViewerFragment"

    const-string v1, "creating DSnapPageVirtualTable cursor loader"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 318
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 132
    const v0, 0x7f040041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->x:Landroid/view/View;

    .line 133
    const v0, 0x7f0a019e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setOnSwipeOutListener(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$OnSwipeOutListener;)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a:Lcom/snapchat/android/discover/ui/fragment/EditionCursorPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    const v0, 0x7f0a019f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->j:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->setColorFilter(I)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;->setCloseChannelListener(Lcom/snapchat/android/discover/ui/CloseChannelAnimationView$CloseChannelListener;)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->d:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->c:Lcom/snapchat/android/discover/ui/CloseChannelAnimationView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a()V

    .line 243
    :cond_1
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->m:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->n:J

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->b:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    .line 117
    :cond_0
    return-void
.end method

.method protected s_()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->e:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->i:Lcom/snapchat/android/util/ScreenRotationObserver;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ScreenRotationObserver;->a()V

    .line 164
    return-void
.end method

.method protected z()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method
