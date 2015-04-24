.class Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;
.super Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Lcom/snapchat/android/model/UserPrefs;

    invoke-direct {v0}, Lcom/snapchat/android/model/UserPrefs;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-direct {v2}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;-><init>()V

    new-instance v3, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;

    invoke-direct {v3}, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/controller/internal/edition/BaseNetworkLoadingStrategy;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;)V

    .line 28
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

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->b(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "WanDSnapLoadingStrategy"

    const-string v3, "DISCOVER-MEDIA: Elected to download %s at %s priority, it is in range in the selected edition"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->c(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    const-string v2, "WanDSnapLoadingStrategy"

    const-string v3, "DISCOVER-MEDIA: Elected to download %s at %s priority, user has seen this channel recently"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->b()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->b()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->g()I

    move-result v2

    sub-int v2, v0, v2

    .line 61
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->h()I

    move-result v3

    add-int/2addr v0, v3

    .line 62
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 66
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 70
    invoke-virtual {p3, v1}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Z)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 71
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 72
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 59
    goto :goto_1
.end method

.method protected c(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->d:Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->c:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->e()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->f()I

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;->a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p3, v7}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Z)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 86
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 87
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method
