.class abstract Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;


# instance fields
.field protected final a:Lcom/snapchat/android/model/UserPrefs;

.field protected final b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

.field protected final c:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field protected final d:Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;->a:Lcom/snapchat/android/model/UserPrefs;

    .line 19
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;->c:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 20
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    .line 21
    iput-object p4, p0, Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;->d:Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;

    .line 22
    return-void
.end method
