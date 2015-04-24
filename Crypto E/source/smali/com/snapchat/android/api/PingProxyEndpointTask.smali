.class public Lcom/snapchat/android/api/PingProxyEndpointTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/ping"


# instance fields
.field private mCallback:Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;

.field private mProxyEndpoint:Lcom/snapchat/android/model/ProxyEndpoint;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/ProxyEndpoint;Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mProxyEndpoint:Lcom/snapchat/android/model/ProxyEndpoint;

    .line 32
    iput-object p2, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mCallback:Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;

    .line 33
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mProxyEndpoint:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;-><init>(ZLcom/snapchat/android/model/ProxyEndpoint;)V

    .line 69
    iget-object v1, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mCallback:Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;

    invoke-interface {v1, v0}, Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;->a(Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/loq/ping"

    return-object v0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/snapchat/android/api/PingProxyEndpointTask;->k()V

    .line 65
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PingProxyEndpointTask for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/api/PingProxyEndpointTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/snapchat/android/api/PingProxyEndpointTask$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/PingProxyEndpointTask$1;-><init>(Lcom/snapchat/android/api/PingProxyEndpointTask;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api/PingProxyEndpointTask$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mResultJson:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 54
    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/snapchat/android/api/PingProxyEndpointTask;->k()V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mProxyEndpoint:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;-><init>(ZLcom/snapchat/android/model/ProxyEndpoint;)V

    .line 58
    iget-object v1, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mCallback:Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;

    invoke-interface {v1, v0}, Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;->a(Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;)V

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/api/PingProxyEndpointTask;->mProxyEndpoint:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
