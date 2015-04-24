.class public Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;


# instance fields
.field private final a:Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/eventengine/ScAnalyticsEventEngine;)V
    .locals 1
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;-><init>(Lcom/snapchat/eventengine/ScAnalyticsEventEngine;Ljavax/inject/Provider;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/snapchat/eventengine/ScAnalyticsEventEngine;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/eventengine/ScAnalyticsEventEngine;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->a:Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    .line 43
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->b:Ljavax/inject/Provider;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->c:Z

    .line 45
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 50
    if-nez v0, :cond_0

    .line 52
    const-string v0, "ScAnalyticsPlatform"

    const-string v1, "User instance was null during initialization - aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->t()I

    move-result v0

    .line 59
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    const-string v1, "null"

    .line 61
    const/4 v0, -0x1

    .line 64
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string v4, "user_agent"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "user_id"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "friend_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->a:Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    invoke-virtual {v0, p1, v3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngine;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->c:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->c:Z

    if-nez v0, :cond_0

    .line 108
    const-string v0, "ScAnalyticsPlatform"

    const-string v1, "Attempting to log without being initialized - aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->a:Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/eventengine/ScAnalyticsEventEngine;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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
    .line 85
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->c:Z

    if-nez v0, :cond_0

    .line 86
    const-string v0, "ScAnalyticsPlatform"

    const-string v1, "Attempting to log without being initialized - aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    if-eqz p2, :cond_1

    .line 93
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_1
    if-eqz p3, :cond_2

    .line 96
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 75
    return-void
.end method
