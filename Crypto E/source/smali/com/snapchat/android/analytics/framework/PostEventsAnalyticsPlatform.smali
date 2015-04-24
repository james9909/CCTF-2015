.class public Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/util/system/Clock;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/util/system/Clock;)V
    .locals 0
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;->a:Lcom/snapchat/android/util/system/Clock;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    invoke-direct {v0}, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v1}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->a(Ljava/lang/Long;)Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->a(Ljava/util/Map;)Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/snapchat/android/api2/PostEventsTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/android/api2/PostEventsTask;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/PostEventsTask;->g()V

    .line 45
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 35
    return-void
.end method
