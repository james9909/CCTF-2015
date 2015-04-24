.class public Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;


# instance fields
.field private final a:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final b:Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;

.field private final c:Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;

    invoke-direct {v1}, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;-><init>()V

    new-instance v2, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;

    invoke-direct {v2}, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;-><init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;->a:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 30
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;->c:Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;->a:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;->b:Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WifiDSnapLoadingStrategy;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;->c:Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/discover/controller/internal/edition/WanDSnapLoadingStrategy;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v0

    goto :goto_0
.end method
