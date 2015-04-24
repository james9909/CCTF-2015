.class public Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;
.super Lcom/snapchat/android/discover/ui/DSnapView;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field private final j:Lcom/snapchat/android/discover/ui/media/VideoViewController;

.field private final k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field private final l:Lcom/squareup/otto/Bus;

.field private final m:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private n:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

.field private o:Z

.field private p:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

.field private q:Landroid/view/View;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 42
    new-instance v3, Lcom/snapchat/android/discover/ui/media/VideoViewController;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;-><init>(Z)V

    new-instance v4, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v4}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/discover/ui/media/VideoViewController;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/snapchat/android/discover/ui/media/VideoViewController;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;)V
    .locals 1
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

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->o:Z

    .line 38
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Z

    .line 151
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    .line 52
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    .line 53
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 54
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->p:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    .line 55
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->l:Lcom/squareup/otto/Bus;

    .line 56
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->m:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->p:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->n:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->q:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Z

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->p:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->m:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v8, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(JLcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    :cond_1
    iput-wide v10, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-virtual {v0, v9}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k()V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->setCanAdvance(Z)V

    .line 121
    iput-boolean v9, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 70
    const-string v0, "DSnapIntroVideoView"

    const-string v1, "Initializing for intro video URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const v0, 0x7f0a01a1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    .line 73
    const v1, 0x7f0a01a2

    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->q:Landroid/view/View;

    .line 74
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->q:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/ui/TextureVideoView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V

    .line 77
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->r:Z

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->l:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;

    invoke-direct {v1, v4}, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->g:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->h:J

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->k:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->e:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->j:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Z)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->o:Z

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoAdvanceListener(Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->n:Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    .line 87
    return-void
.end method

.method public setCanAdvance(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapIntroVideoView;->o:Z

    .line 149
    return-void
.end method
