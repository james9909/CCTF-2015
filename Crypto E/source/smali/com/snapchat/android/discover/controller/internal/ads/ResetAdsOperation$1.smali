.class Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 51
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;

    invoke-static {v3}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->a(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)Lcom/snapchat/android/util/Predicate;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/snapchat/android/util/Predicate;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;

    invoke-static {v3}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->b(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->c:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v3, v0, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 54
    goto :goto_0

    .line 57
    :cond_0
    if-eqz v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;->a:Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->c(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 60
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
