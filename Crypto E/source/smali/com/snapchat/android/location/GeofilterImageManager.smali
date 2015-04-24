.class public Lcom/snapchat/android/location/GeofilterImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/location/GeofilterImageManager;


# instance fields
.field private final b:Lcom/snapchat/android/util/cache/Cache;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/location/DownloadGeofilterTask;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lcom/squareup/otto/Bus;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache;Ljava/util/concurrent/ExecutorService;Lcom/squareup/otto/Bus;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/snapchat/android/location/GeofilterImageManager;->b:Lcom/snapchat/android/util/cache/Cache;

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/location/GeofilterImageManager;->c:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/snapchat/android/location/GeofilterImageManager;->e:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->d:Ljava/util/Map;

    .line 41
    iput-object p4, p0, Lcom/snapchat/android/location/GeofilterImageManager;->f:Lcom/squareup/otto/Bus;

    .line 42
    return-void
.end method

.method public static a()Lcom/snapchat/android/location/GeofilterImageManager;
    .locals 5

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/location/GeofilterImageManager;->a:Lcom/snapchat/android/location/GeofilterImageManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/snapchat/android/location/GeofilterImageManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->l:Lcom/snapchat/android/util/cache/Cache;

    sget-object v3, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/location/GeofilterImageManager;-><init>(Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache;Ljava/util/concurrent/ExecutorService;Lcom/squareup/otto/Bus;)V

    sput-object v0, Lcom/snapchat/android/location/GeofilterImageManager;->a:Lcom/snapchat/android/location/GeofilterImageManager;

    .line 59
    :cond_0
    sget-object v0, Lcom/snapchat/android/location/GeofilterImageManager;->a:Lcom/snapchat/android/location/GeofilterImageManager;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/snapchat/android/model/Geofilter;)V
    .locals 7
    .parameter

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Geofilter;->b()Ljava/lang/String;

    move-result-object v2

    .line 94
    if-nez v2, :cond_0

    .line 95
    const-string v0, "GeofilterImageManager"

    const-string v1, "Geofilter did not have a valid URL"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v6, p0, Lcom/snapchat/android/location/GeofilterImageManager;->d:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/location/DownloadGeofilterTask;

    .line 101
    if-eqz v0, :cond_1

    .line 102
    const-string v0, "GeofilterImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Geofilter request is pending for URL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_2
    new-instance v0, Lcom/snapchat/android/location/DownloadGeofilterTask;

    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterImageManager;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/snapchat/android/location/GeofilterImageManager;->b:Lcom/snapchat/android/util/cache/Cache;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/location/DownloadGeofilterTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/model/Geofilter;Lcom/snapchat/android/location/GeofilterImageManager;Lcom/snapchat/android/util/cache/Cache;)V

    .line 106
    const-string v1, "GeofilterImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading geofilter from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterImageManager;->d:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterImageManager;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/location/DownloadGeofilterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private c(Lcom/snapchat/android/model/Geofilter;)V
    .locals 4
    .parameter

    .prologue
    .line 117
    const-string v0, "GeofilterImageManager"

    const-string v1, "Setting geofilter from cache"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->b:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterImageManager;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Geofilter;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/Geofilter;->a(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/GeofilterLoadedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/GeofilterLoadedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method private d(Lcom/snapchat/android/model/Geofilter;)Z
    .locals 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Geofilter;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Geofilter;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/snapchat/android/location/GeofilterImageManager;->d(Lcom/snapchat/android/model/Geofilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/snapchat/android/location/GeofilterImageManager;->c(Lcom/snapchat/android/model/Geofilter;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/location/GeofilterImageManager;->b(Lcom/snapchat/android/model/Geofilter;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    const-string v0, "GeofilterImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done downloading geofilter from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterImageManager;->d:Ljava/util/Map;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterImageManager;->f:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/GeofilterLoadedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/GeofilterLoadedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Geofilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Geofilter;

    .line 68
    invoke-virtual {p0, v0}, Lcom/snapchat/android/location/GeofilterImageManager;->a(Lcom/snapchat/android/model/Geofilter;)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
