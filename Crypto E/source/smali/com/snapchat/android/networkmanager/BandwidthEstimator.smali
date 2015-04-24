.class public Lcom/snapchat/android/networkmanager/BandwidthEstimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/networkmanager/BandwidthEstimator;


# instance fields
.field private final b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;-><init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->c:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->d:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 46
    return-void
.end method

.method public static a()Lcom/snapchat/android/networkmanager/BandwidthEstimator;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;
    .locals 3
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;

    .line 141
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;-><init>()V

    .line 143
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 151
    const-string v0, "WIFI-%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 9
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->c()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "BandwidthEstimator"

    const-string v2, "BANDWIDTH: Recording BW sample of %d bps (%d kbps) for current network"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->a(J)V

    .line 79
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->c()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;->a()J

    move-result-wide v0

    .line 57
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 63
    :goto_0
    return-wide v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-wide/32 v0, 0x2dc6c0

    goto :goto_0

    .line 63
    :cond_1
    const-wide/32 v0, 0x927c0

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "WAN"

    goto :goto_0

    .line 131
    :cond_1
    const-string v0, "NO_NETWORK"

    goto :goto_0
.end method
