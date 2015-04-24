.class public Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/snapchat/android/model/ProxyEndpoint;


# direct methods
.method public constructor <init>(ZLcom/snapchat/android/model/ProxyEndpoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;->b:Lcom/snapchat/android/model/ProxyEndpoint;

    .line 14
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;->a:Z

    .line 15
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;->a:Z

    return v0
.end method

.method public b()Lcom/snapchat/android/model/ProxyEndpoint;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;->b:Lcom/snapchat/android/model/ProxyEndpoint;

    return-object v0
.end method
