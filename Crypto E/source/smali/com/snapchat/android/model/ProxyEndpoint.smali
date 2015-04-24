.class public Lcom/snapchat/android/model/ProxyEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAddliveBaseUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addlive_proxy_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy"
    .end annotation
.end field

.field private mMediaBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_proxy"
    .end annotation
.end field

.field private mPriority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mBaseUrl:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mMediaBaseUrl:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mAddliveBaseUrls:Ljava/util/List;

    .line 28
    iput p4, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mPriority:I

    .line 29
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mPriority:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mPriority:I

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mBaseUrl:Ljava/lang/String;

    .line 77
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
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mAddliveBaseUrls:Ljava/util/List;

    .line 82
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
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mAddliveBaseUrls:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mMediaBaseUrl:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mMediaBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/snapchat/android/model/ProxyEndpoint;

    if-nez v2, :cond_2

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 61
    iget-object v2, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ProxyEndpoint;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mMediaBaseUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ProxyEndpoint;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mAddliveBaseUrls:Ljava/util/List;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ProxyEndpoint;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/ProxyEndpoint;->b()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mAddliveBaseUrls:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mPriority:I

    invoke-virtual {p1}, Lcom/snapchat/android/model/ProxyEndpoint;->a()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/model/ProxyEndpoint;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
