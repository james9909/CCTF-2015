.class public Lcom/snapchat/android/analytics/SnapbryoAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TIME_UNINITIALIZED:J = -0x1L


# instance fields
.field private mReachability:Ljava/lang/String;

.field private mTimePressSend:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    .line 24
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mReachability:Ljava/lang/String;

    .line 25
    return-void
.end method

.method protected a(J)V
    .locals 3
    .parameter

    .prologue
    .line 56
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAP_SEND_TIMED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 57
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 28
    iget-wide v0, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 35
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    sub-long/2addr v0, v2

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->a(J)V

    .line 37
    iput-wide v4, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    .line 38
    :cond_1
    return-void
.end method

.method protected b(J)V
    .locals 3
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAP_SEND_TIMED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 60
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 41
    iget-wide v0, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    sub-long/2addr v0, v2

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->b(J)V

    .line 50
    iput-wide v4, p0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->mTimePressSend:J

    .line 51
    :cond_1
    return-void
.end method
