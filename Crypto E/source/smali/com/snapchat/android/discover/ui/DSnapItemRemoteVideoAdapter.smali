.class public Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/BufferingEventListener$BufferingCallback;


# instance fields
.field protected final a:Lcom/brightcove/player/event/EventListener;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/widget/MediaController;

.field private final e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

.field private final f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

.field private final g:Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;

.field private final h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

.field private final i:Lcom/snapchat/android/discover/ui/BufferingEventListener;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field private l:Landroid/view/View;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/FrameLayout;

.field private o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

.field private p:Lcom/snapchat/android/discover/model/DSnapPage;

.field private q:Lcom/snapchat/android/discover/model/MediaState;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    new-instance v3, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-direct {v3}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;-><init>()V

    new-instance v4, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;

    invoke-direct {v4}, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v6

    new-instance v7, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v7}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;-><init>(Landroid/view/LayoutInflater;Landroid/widget/MediaController;Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;)V

    .line 78
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/widget/MediaController;Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;-><init>()V

    .line 55
    new-instance v0, Lcom/snapchat/android/discover/ui/BufferingEventListener;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/BufferingEventListener;-><init>(Lcom/snapchat/android/discover/ui/BufferingEventListener$BufferingCallback;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i:Lcom/snapchat/android/discover/ui/BufferingEventListener;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j:Ljava/util/Map;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 65
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->q:Lcom/snapchat/android/discover/model/MediaState;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->s:Z

    .line 319
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a:Lcom/brightcove/player/event/EventListener;

    .line 88
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->c:Landroid/view/LayoutInflater;

    .line 89
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    .line 90
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    .line 91
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->g:Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;

    .line 92
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 93
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    .line 94
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->n:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private a(Lcom/brightcove/player/event/Event;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 355
    .line 360
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 362
    if-eqz v0, :cond_3

    .line 363
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 366
    :goto_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v3, "source"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 367
    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_1
    iget-object v3, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v4, "errorCode"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v4, "errorCode"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    :goto_2
    iget-object v4, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v5, "errorMessage"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    iget-object v2, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v4, "errorMessage"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    move-object v7, v3

    move-object v5, v0

    move-object v4, v1

    .line 380
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v8}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    :cond_0
    move-object v8, v2

    move-object v7, v3

    move-object v5, v0

    move-object v4, v1

    goto :goto_3

    :cond_1
    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v8, v2

    move-object v7, v2

    move-object v5, v2

    move-object v4, v2

    goto :goto_3
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;Lcom/brightcove/player/event/Event;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Lcom/brightcove/player/event/Event;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Landroid/widget/MediaController;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i()V

    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Showing media controller indefinitely for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->s:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    invoke-virtual {v0, v4}, Landroid/widget/MediaController;->show(I)V

    .line 273
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->g:Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->q:Lcom/snapchat/android/discover/model/MediaState;

    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;->a(Lcom/snapchat/android/discover/model/MediaState;Z)V

    .line 296
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestLayout()V

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->post(Ljava/lang/Runnable;)Z

    .line 317
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 132
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    goto :goto_0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    .line 388
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i()V

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 260
    const-string v0, "DSnapItemRemoteVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 263
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 114
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPanel;->e()Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->q:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPanel;->i()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPanel;->e()Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a(Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)V

    .line 120
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPanel;->i()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->q:Lcom/snapchat/android/discover/model/MediaState;

    .line 121
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i()V

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->s:Z

    .line 287
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->l:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->l:Landroid/view/View;

    const v1, 0x7f0a01b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->m:Landroid/view/ViewGroup;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->l:Landroid/view/View;

    const v1, 0x7f0a01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->n:Landroid/widget/FrameLayout;

    .line 102
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j()V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->g:Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/RemoteVideoLoadingOverlayPresenter;->a(Landroid/view/View;)V

    .line 104
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 105
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i()V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 396
    iput-boolean v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    .line 397
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i()V

    .line 398
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;ZZ)V

    .line 400
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->l:Landroid/view/View;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 201
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Remote video scrolled - hiding controller."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 206
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public n_()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Entering view for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->s:Z

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "View already entered for %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View for %s is already entered!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-virtual {p0, v5}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Z)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->q:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->q:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_2

    .line 159
    :cond_1
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "User entered view for a failed long form video - attempting to acquire urls again."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Ljava/lang/String;)V

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f040009

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->m:Landroid/view/ViewGroup;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 174
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j()V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->n:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->setMediaController(Landroid/widget/MediaController;Landroid/view/View;Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j:Ljava/util/Map;

    const-string v2, "*"

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "*"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j:Ljava/util/Map;

    const-string v2, "progress"

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i:Lcom/snapchat/android/discover/ui/BufferingEventListener;

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "progress"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a(Lcom/brightcove/player/view/BrightcoveTextureVideoView;)V

    .line 182
    iput-boolean v5, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a(Z)V

    .line 185
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->i()V

    .line 186
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h()V

    .line 189
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->d()V

    .line 196
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->n_()V

    .line 197
    :cond_3
    return-void
.end method

.method public o_()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "Leaving view for %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->s:Z

    if-nez v0, :cond_0

    .line 212
    const-string v0, "DSnapItemRemoteVideoAdapter"

    const-string v1, "View was entered for %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View for %s not entered."

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->b(Z)V

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->d:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->p:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->e:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->b()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v3

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    invoke-virtual {v0, v8}, Lcom/brightcove/player/view/BrightcoveTextureVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 234
    iput-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->o:Lcom/brightcove/player/view/BrightcoveTextureVideoView;

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->f:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e()V

    .line 241
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->r:Z

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v6}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;ZZ)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v6}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;ZZ)V

    .line 247
    :cond_3
    iput-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->t:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v6}, Lcom/snapchat/android/discover/ui/DSnapItemRemoteVideoAdapter;->a(Z)V

    .line 250
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->o_()V

    .line 251
    :cond_4
    return-void
.end method
