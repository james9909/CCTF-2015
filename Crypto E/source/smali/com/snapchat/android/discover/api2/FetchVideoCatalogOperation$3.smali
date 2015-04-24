.class Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;
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
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

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
    .line 158
    const/4 v0, 0x0

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 161
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v4}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->o()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel;->f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne v3, v4, :cond_0

    .line 171
    iget-object v3, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v3}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_0

    .line 175
    iget-object v3, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v3}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v3, v0, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 176
    goto :goto_0

    .line 179
    :cond_1
    if-eqz v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;->a:Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-static {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->d(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 182
    :cond_2
    return-void
.end method
