.class Lcom/snapchat/android/ads/AdManager$AdResponseController$1;
.super Lcom/snapchat/android/api2/framework/HyperRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ads/AdManager$AdResponseController;->a(Ljava/lang/String;Lcom/snapchat/android/ads/AdPlacement;)Lcom/snapchat/android/api2/framework/HyperRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/ads/AdPlacement;

.field final synthetic c:Lcom/snapchat/android/ads/AdManager$AdResponseController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ads/AdManager$AdResponseController;Ljava/lang/String;Lcom/snapchat/android/ads/AdPlacement;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->c:Lcom/snapchat/android/ads/AdManager$AdResponseController;

    iput-object p2, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->b:Lcom/snapchat/android/ads/AdPlacement;

    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 423
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 424
    const-string v0, "AdManager"

    const-string v1, "onResult recordImpression: %s, url: %s, result: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->b:Lcom/snapchat/android/ads/AdPlacement;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    const-string v0, "AdManager"

    const-string v1, "onResult recordImpression: %s, url: %s, result: %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->b:Lcom/snapchat/android/ads/AdPlacement;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public m_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$AdResponseController$1;->a:Ljava/lang/String;

    return-object v0
.end method
