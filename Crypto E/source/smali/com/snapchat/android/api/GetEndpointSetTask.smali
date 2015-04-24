.class public Lcom/snapchat/android/api/GetEndpointSetTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;,
        Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/gae_server_list"

.field private static final TASK_NAME:Ljava/lang/String; = "GetEndpointSetTask"


# instance fields
.field private mBaseUrl:Ljava/lang/String;

.field private mCallback:Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/snapchat/android/api/GetEndpointSetTask;->mBaseUrl:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/snapchat/android/api/GetEndpointSetTask;->mCallback:Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;

    .line 38
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/loq/gae_server_list"

    return-object v0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 81
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/network/EndpointManager;->g()Ljava/util/Map;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 88
    new-instance v0, Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;

    invoke-virtual {v1}, Lcom/snapchat/android/model/ProxyEndpoint;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6, v7}, Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;-><init>(Lcom/snapchat/android/api/GetEndpointSetTask;Ljava/lang/String;J)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    const-string v0, "last_ping_results"

    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v2
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;-><init>(ZLcom/snapchat/android/model/EndpointSet;I)V

    .line 60
    iget-object v1, p0, Lcom/snapchat/android/api/GetEndpointSetTask;->mCallback:Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;

    invoke-interface {v1, v0}, Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;->a(Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;)V

    .line 61
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "GetEndpointSetTask"

    return-object v0
.end method

.method protected c(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/snapchat/android/model/EndpointSet;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->gae_proxy_update:Lcom/snapchat/android/model/server/ServerEndpointSet;

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/EndpointSet;-><init>(Lcom/snapchat/android/model/server/ServerEndpointSet;)V

    .line 53
    new-instance v1, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;-><init>(ZLcom/snapchat/android/model/EndpointSet;I)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api/GetEndpointSetTask;->mCallback:Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;->a(Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;)V

    .line 55
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api/GetEndpointSetTask;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method
