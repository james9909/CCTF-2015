.class public Lcom/snapchat/android/discover/operation/ChannelListOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/data/gson/discover/ChannelListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/snapchat/android/model/User;

.field private final c:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/operation/ChannelListOperation;-><init>(Landroid/content/Intent;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->e:I

    .line 38
    const-class v0, Lcom/snapchat/data/gson/discover/ChannelListResponse;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/discover/operation/ChannelListOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 39
    iput-object p2, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->c:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->b:Lcom/snapchat/android/model/User;

    .line 50
    invoke-super {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method protected a(Lcom/snapchat/data/gson/discover/ChannelListResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->e:I

    .line 77
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->b:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;Lcom/snapchat/data/gson/discover/ChannelListResponse;)V

    .line 78
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/ChannelListResponse;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/data/gson/discover/ChannelListResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/operation/ChannelListOperation;->a(Lcom/snapchat/data/gson/discover/ChannelListResponse;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/operation/ChannelListOperation;->b(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/snapchat/data/gson/discover/ChannelListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/operation/ChannelListOperation;->a(Lcom/snapchat/data/gson/discover/ChannelListResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method protected b(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 82
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->c:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/snapchat/android/discover/operation/ChannelListOperation;->e:I

    return v0
.end method
