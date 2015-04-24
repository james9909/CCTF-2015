.class public Lcom/snapchat/android/model/EndpointSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDirectoryUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:J


# direct methods
.method public constructor <init>(JLjava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/snapchat/android/model/EndpointSet;->mVersion:J

    .line 25
    iput-object p3, p0, Lcom/snapchat/android/model/EndpointSet;->mProxyEndpoints:Ljava/util/List;

    .line 26
    iput-object p4, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/ServerEndpointSet;)V
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/ServerEndpointSet;->getVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/EndpointSet;->mVersion:J

    .line 19
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/ServerEndpointSet;->getProxies()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/EndpointSet;->mProxyEndpoints:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/ServerEndpointSet;->getDirectoryUrls()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/model/EndpointSet;->mProxyEndpoints:Ljava/util/List;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/snapchat/android/model/EndpointSet;->mVersion:J

    .line 70
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    .line 75
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/snapchat/android/model/EndpointSet;->mVersion:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    instance-of v2, p1, Lcom/snapchat/android/model/EndpointSet;

    if-nez v2, :cond_2

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    check-cast p1, Lcom/snapchat/android/model/EndpointSet;

    .line 49
    iget-object v2, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/model/EndpointSet;->mProxyEndpoints:Ljava/util/List;

    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/model/EndpointSet;->mProxyEndpoints:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/snapchat/android/model/EndpointSet;->mVersion:J

    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/model/EndpointSet;->mDirectoryUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/model/EndpointSet;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/EndpointSet;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
