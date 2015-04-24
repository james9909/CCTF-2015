.class public Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field protected final b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field protected final c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/data/gson/discover/VideoCatalogResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final g:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final h:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a()Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;-><init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;Ljava/util/Map;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;",
            "Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;",
            "Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/data/gson/discover/VideoCatalogResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "FetchVideoCatalogOperation"

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->d:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$1;-><init>(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 108
    new-instance v0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$2;-><init>(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 155
    new-instance v0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation$3;-><init>(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 51
    iput-object p2, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 52
    iput-object p3, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->g:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 53
    iput-object p4, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->h:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->i:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->e:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->g:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;-><init>(Ljava/lang/String;)V

    .line 187
    const-class v1, Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 188
    invoke-virtual {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogTask;->g()V

    .line 189
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->h:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->g:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b()V

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->h:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->b()V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 65
    return-void
.end method

.method protected a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    const-string v0, "FetchVideoCatalogOperation"

    const-string v1, "DISCOVER-MEDIA: Failed to load long-form URLs for edition %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->i:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    new-array v1, v5, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    iget-object v2, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 222
    return-void
.end method

.method protected a(Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    const-string v0, "FetchVideoCatalogOperation"

    const-string v1, "DISCOVER-MEDIA: Successfully loaded long-form URLs for edition %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->i:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    .line 209
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/data/gson/discover/VideoCatalogResponse;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->f:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    new-array v1, v5, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    iget-object v2, p0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 215
    return-void
.end method

.method public a(Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 193
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a(Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a(Lcom/snapchat/data/gson/discover/VideoCatalogListResponse;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method
