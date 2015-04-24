.class public Lcom/snapchat/android/analytics/LifecycleAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field protected mPostEventsAnalyticsPlatform:Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;

.field private mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;)V
    .locals 1
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mPostEventsAnalyticsPlatform:Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "APP_STARTUP_TIMED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "from_background"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    const-string v2, "from_background"

    const-string v3, "false"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 52
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "open_state"

    const-string v2, "NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "intent_action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "APP_OPEN"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mPostEventsAnalyticsPlatform:Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 41
    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v2, "APP_OPEN"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 42
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "APP_STARTUP_TIMED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "from_background"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    const-string v2, "from_background"

    const-string v3, "true"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 59
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 63
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/LifecycleAnalytics;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method
