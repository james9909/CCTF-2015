.class public Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;-><init>(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "edition"

    iget-object v2, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/snapchat/android/util/HttpUtils;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
