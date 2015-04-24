.class public Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;
.super Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lcom/snapchat/android/discover/model/ChannelPage;

.field private final g:Lcom/snapchat/android/discover/model/DSnapPage;

.field private final h:Lcom/snapchat/android/discover/model/DSnapPanel;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/util/system/Clock;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const-string v1, ""

    invoke-virtual {p4}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;-><init>(Ljava/lang/String;JJ)V

    .line 53
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 55
    iput-object p5, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->c:Lcom/squareup/otto/Bus;

    .line 56
    iput-object p6, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 57
    iput-object p8, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->h:Lcom/snapchat/android/discover/model/DSnapPanel;

    .line 58
    iput-object p7, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 59
    invoke-virtual {p2, p0}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;)V

    .line 60
    iput-object p9, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->e:Landroid/content/res/Resources;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v1, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a()Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v4}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;-><init>(Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/util/system/Clock;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;Landroid/content/res/Resources;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 13
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    if-nez v0, :cond_0

    .line 71
    const-string v0, "DiscoverScreenshotDetectionSession"

    const-string v1, "Could not report screenshot, context is not valid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->h:Lcom/snapchat/android/discover/model/DSnapPanel;

    if-nez v0, :cond_3

    .line 77
    :cond_1
    const-string v0, "splash"

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v2, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v6, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v0

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->e:Landroid/content/res/Resources;

    const v4, 0x7f0c00d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/ChannelPage;->h()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)V

    .line 116
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 119
    :cond_2
    const-string v0, "DiscoverScreenshotDetectionSession"

    const-string v1, "Detected %s screenshot!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->h:Lcom/snapchat/android/discover/model/DSnapPanel;

    if-ne v0, v1, :cond_4

    .line 84
    const-string v11, "longform"

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->h:Lcom/snapchat/android/discover/model/DSnapPanel;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPanel;->f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v6

    iget-object v7, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v7}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v9, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v9}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v9}, Lcom/snapchat/android/discover/model/DSnapPage;->j()I

    move-result v9

    iget-object v10, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v12, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v12}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->g(Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/snapchat/android/discover/model/DSnapPanel$MediaType;IIII)V

    move-object v7, v11

    goto/16 :goto_1

    .line 97
    :cond_4
    const-string v10, "top snap"

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v6}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v8, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->j()I

    move-result v8

    iget-object v9, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->d:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v11, p0, Lcom/snapchat/android/discover/controller/DiscoverScreenshotDetectionSession;->g:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->g(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    move-object v7, v10

    goto/16 :goto_1
.end method
