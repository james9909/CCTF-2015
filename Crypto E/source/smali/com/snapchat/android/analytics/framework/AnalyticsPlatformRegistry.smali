.class public Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "AnalyticsPlatformRegistry"

    const-string v1, "User is logged into SnapKidz. Aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;

    .line 44
    invoke-interface {v0, p1}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "AnalyticsPlatformRegistry"

    const-string v1, "User is logged into SnapKidz. Aborting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;

    .line 55
    invoke-interface {v0, p1}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
