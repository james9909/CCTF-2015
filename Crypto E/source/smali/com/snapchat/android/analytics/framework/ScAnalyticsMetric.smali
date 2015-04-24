.class public Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Ljavax/validation/constraints/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Lcom/snapchat/android/util/system/Clock;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->f:J

    .line 43
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->c:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->d:Z

    .line 47
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->e:Lcom/snapchat/android/util/system/Clock;

    .line 48
    return-void
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 5
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->g:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 103
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->e:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->f:J

    .line 67
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->g:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 84
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 3
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    goto :goto_0

    .line 96
    :cond_0
    return-object p0
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "ScAnalyticsMetric"

    const-string v1, "User is logged into SnapKidz. Aborting."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->d:Z

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "ScAnalyticsMetric"

    const-string v1, "Metric has already been previously reported. Aborting"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->e:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->f:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 128
    :cond_2
    const-string v0, "ScAnalyticsMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->c:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a:Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->c:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->d:Z

    goto :goto_0
.end method
