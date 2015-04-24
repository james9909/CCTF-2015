.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;
.super Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/location/GeofilterManager;

.field private final b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/snapchat/android/location/GeofilterManager;->a()Lcom/snapchat/android/location/GeofilterManager;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;-><init>(Lcom/snapchat/android/location/GeofilterManager;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/location/GeofilterManager;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->a:Lcom/snapchat/android/location/GeofilterManager;

    .line 38
    iput-object p2, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;

    .line 39
    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Geofilter;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 80
    const-string v1, "RefreshGeofilterPagesOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geofilters returned from server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Geofilter;

    .line 83
    invoke-virtual {v0}, Lcom/snapchat/android/model/Geofilter;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;

    new-instance v4, Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-direct {v4, p2, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Geofilter;)V

    invoke-direct {v3, v0, v4}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;-><init>(Lcom/snapchat/android/model/Geofilter;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    const-string v0, "RefreshGeofilterPagesOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofilterPagesFromServer has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current geofilters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-object v1
.end method

.method private a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    return-object v1
.end method

.method private a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 94
    instance-of v2, v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->b(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 96
    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "RefreshGeofilterPagesOperation"

    const-string v1, "Upading geofilter pages"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->a:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->a(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a()Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->a(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-direct {p0, p1, p2, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;Ljava/util/List;)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 59
    invoke-virtual {p0, p2, p1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method protected a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 71
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 72
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    invoke-virtual {p1, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 73
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;

    invoke-interface {v1, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 74
    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 70
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
