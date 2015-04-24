.class Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;
.super Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;
.source "SourceFile"


# instance fields
.field private final e:Lcom/snapchat/android/util/system/Clock;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    new-instance v1, Lcom/snapchat/android/model/UserPrefs;

    invoke-direct {v1}, Lcom/snapchat/android/model/UserPrefs;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-direct {v3}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;-><init>()V

    new-instance v4, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;

    invoke-direct {v4}, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;-><init>()V

    new-instance v5, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v5}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;Lcom/snapchat/android/util/system/Clock;)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;Lcom/snapchat/android/util/system/Clock;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;)V

    .line 32
    iput-object p5, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->e:Lcom/snapchat/android/util/system/Clock;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->b(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string v2, "WifiDSnapLoadingStrategy"

    const-string v3, "DISCOVER-MEDIA: Elected to download %s at %s priority, it is in the selected edition"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->c(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "WifiDSnapLoadingStrategy"

    const-string v3, "DISCOVER-MEDIA: Elected to download %s at %s priority, user has been to discover recently"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->d(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const-string v2, "WifiDSnapLoadingStrategy"

    const-string v3, "DISCOVER-MEDIA: Elected to download %s at %s priority, user has seen this channel recently"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Z)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 67
    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p3, v1}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->a:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->ar()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->e:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->d:Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->b()I

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p3, v7}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Z)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 88
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move v0, v7

    .line 92
    :goto_1
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->a:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->ar()J

    move-result-wide v2

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected d(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->d:Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->c:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->c()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->d()I

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p3, v7}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Z)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 106
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move v0, v7

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
