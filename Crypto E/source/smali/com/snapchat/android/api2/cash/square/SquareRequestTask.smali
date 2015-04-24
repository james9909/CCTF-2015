.class public abstract Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
.super Lcom/snapchat/android/api2/framework/HyperRequestTask;
.source "SourceFile"


# instance fields
.field protected mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEntityFactory:Lcom/snapchat/android/api2/framework/EntityFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareOkHttpClientFactory:Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;-><init>()V

    .line 33
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mEntityFactory:Lcom/snapchat/android/api2/framework/EntityFactory;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mSquareOkHttpClientFactory:Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;-><init>(Lcom/snapchat/android/api2/framework/EntityFactory;Lcom/snapchat/android/api2/framework/HttpClientFactory;)V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mNetworkInterface:Lcom/snapchat/android/api2/framework/NetworkInterface;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract e()Ljava/lang/String;
.end method

.method public j_()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthManager;->a()Lcom/snapchat/android/cash/CashAuthToken;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We shouldn\'t ever be creating a SquareRequestTask with a null CashAuthToken!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->m_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 52
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthToken;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Accept"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->g()Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    const-string v2, "X-SQ-DEVICE-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    return-object v1
.end method

.method public m_()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/util/network/EndpointManager;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "v1/me"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 40
    const-string v1, "/"

    invoke-static {v0, v1}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
