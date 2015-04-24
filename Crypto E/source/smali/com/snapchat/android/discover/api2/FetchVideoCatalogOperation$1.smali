.class Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;
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
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
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
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 78
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPanel;->f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v4, v5, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v4}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 93
    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->c(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a(Ljava/lang/String;Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_1

    .line 96
    :cond_2
    if-eqz v1, :cond_3

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->d(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->e(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)V

    .line 101
    return-void
.end method
