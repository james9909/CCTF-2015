.class Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 10
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
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 116
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v5}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPanel;->f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v0, v5, :cond_0

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v5, :cond_0

    .line 131
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v5

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    .line 134
    const-string v6, "FetchVideoCatalogOperation"

    const-string v7, "DISCOVER-MEDIA: Successfully loaded metadata for %s, with response %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v6, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v6}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->c(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a(Ljava/lang/String;Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 142
    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "FetchVideoCatalogOperation"

    const-string v5, "DISCOVER-MEDIA: Failed load video URL for %s, it was not in the server response"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v0, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v0

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_1

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->d(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 148
    :cond_3
    return-void
.end method
