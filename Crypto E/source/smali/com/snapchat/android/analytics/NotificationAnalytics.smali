.class public Lcom/snapchat/android/analytics/NotificationAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;
    }
.end annotation


# static fields
.field private static final TIME_UNINITIALIZED:J = -0x1L


# instance fields
.field private mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field private mTimeOnPressed:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    .line 26
    return-void
.end method

.method protected a(JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "context"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 56
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 30
    iget-wide v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    sub-long/2addr v0, v2

    .line 35
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(JLjava/lang/String;)V

    .line 37
    iput-wide v4, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "from_background"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 43
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 47
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "from_background"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 52
    return-void
.end method
