.class public Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;


# instance fields
.field private final b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 70
    iput-object p2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 71
    iput-object p3, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 482
    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 485
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    monitor-exit v1

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 464
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    monitor-exit v1

    .line 469
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 492
    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 84
    const-string v0, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    .line 85
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v0, "publisher_name"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "intro_video_url"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "time"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "success"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 102
    :try_start_0
    const-string v3, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v3, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 104
    const-string v3, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v3, v0, v1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 106
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    const-string v0, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 204
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_INTRO_MEDIA_ERROR"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 403
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 248
    const-string v0, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;ZJLcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    const-string v0, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    const-string v1, "success"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    const-string v0, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "intro_video_url"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 218
    const-string v1, "DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME"

    invoke-direct {p0, v1, p1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 219
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_EDITION_STREAMING_DOWNLOADED_BYTES"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "edition_id"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 453
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    const-string v0, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "ad_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 177
    const-string v1, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-direct {p0, v1, p1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 178
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    const-string v0, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_session_id"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "edition_id"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 269
    const-string v1, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v1, p1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 270
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_DSNAP_LOADING_SCREEN_TIME"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "edition_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "has_ad"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "abandoned"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p6}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    const-string v0, "DISCOVER_DSNAP_LOADING_SCREEN_TIME"

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_DSNAP_LOADING_SCREEN_TIME"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "edition_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "has_ad"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 346
    const-string v1, "DISCOVER_DSNAP_LOADING_SCREEN_TIME"

    invoke-direct {p0, v1, p1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 347
    return-void
.end method

.method public a(Ljava/lang/String;ZJZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    const-string v0, "DISCOVER_CHUNK_DOWNLOAD_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    const-string v1, "success"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/snapchat/android/discover/model/MediaState;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    const-string v0, "DISCOVER_DSNAP_LOADING_SCREEN_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loading"

    .line 359
    :goto_0
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "abandoned"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 364
    :cond_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/MediaState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    const-string v0, "DISCOVER_REMOTE_VIDEO_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    const-string v1, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "abandoned"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 287
    :cond_0
    return-void
.end method

.method public b(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 4
    .parameter

    .prologue
    .line 115
    const-string v0, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    .line 116
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 121
    :try_start_0
    const-string v2, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v3, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    .line 123
    const-string v3, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-direct {p0, v3, v0, v2}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 125
    :cond_0
    monitor-exit v1

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 417
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    const-string v0, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_session_id"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "edition_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 308
    const-string v1, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-direct {p0, v1, p1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 309
    return-void
.end method

.method public b(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    const-string v0, "DISCOVER_REMOTE_VIDEO_BUFFER_TIME"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    const-string v1, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "abandoned"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public c(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "DISCOVER_INTRO_MEDIA_DOWNLOAD_TIME"

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    const-string v2, "publisher_name"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "reachability"

    iget-object v3, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v3}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "success"

    iget-object v3, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v3, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 151
    :cond_2
    const-string v1, "DISCOVER_INTRO_MEDIA_UNLOADED_WAIT_TIME"

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    const-string v1, "publisher_name"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "intro_video_url"

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "success"

    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/ChannelPage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_INTRO_MEDIA_PLAYBACK_ERROR"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "edition_id"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 436
    return-void
.end method
