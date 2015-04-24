.class public Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

.field private final b:Lcom/snapchat/android/util/system/Clock;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a()Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v1}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;-><init>(Lcom/snapchat/android/networkmanager/BandwidthEstimator;Lcom/snapchat/android/util/system/Clock;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/BandwidthEstimator;Lcom/snapchat/android/util/system/Clock;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->c:J

    .line 26
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->a:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    .line 27
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->b:Lcom/snapchat/android/util/system/Clock;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->c:J

    .line 35
    return-void
.end method

.method public a(J)V
    .locals 13
    .parameter

    .prologue
    const/4 v8, 0x0

    const-wide v10, 0x408f400000000000L

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "BandwidthRecorder"

    const-string v1, "Ignoring bandwidth report of 0 bytes downloaded."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call start before stop."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->c:J

    sub-long/2addr v0, v2

    .line 55
    const-wide/16 v2, 0x8

    mul-long/2addr v2, p1

    .line 56
    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v4, v10

    div-double/2addr v2, v4

    double-to-long v2, v2

    .line 58
    const-string v4, "BandwidthRecorder"

    const-string v5, "BANDWIDTH: Downloaded %d bytes in %d milliseconds (%d seconds). Computed bandwidth of %d bps."

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    long-to-double v0, v0

    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->a:Lcom/snapchat/android/networkmanager/BandwidthEstimator;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/networkmanager/BandwidthEstimator;->a(J)V

    goto :goto_0
.end method
