.class public Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;


# instance fields
.field private final a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final b:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->c:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->d:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->b:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 39
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 40
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->b:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/ads/AdTransformResponse;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 66
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    .line 68
    if-nez v0, :cond_0

    .line 69
    monitor-exit v1

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Timed out while resolving ad for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    .line 89
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/snapchat/android/ads/AdTransformResponse;->b()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Exception caught while resolving ad for %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/ads/AdTransformResponse;->b()Ljava/lang/Exception;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/ads/AdTransformResponse;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Resolved ad for %s, url: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/ads/AdTransformResponse;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {p2}, Lcom/snapchat/android/ads/AdTransformResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/ads/AdTransformResponse;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Lcom/snapchat/android/discover/model/DSnapPage;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_1

    .line 85
    :cond_3
    const-string v0, "DSnapAdResolver"

    const-string v2, "DISCOVER-MEDIA: Null ad url for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v1, "DSnapAdResolver"

    const-string v3, "DISCOVER-MEDIA: Skipping resolve for ad %s since there is a pending request for it."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    monitor-exit v2

    .line 59
    :goto_0
    return v0

    .line 54
    :cond_0
    const-string v0, "DSnapAdResolver"

    const-string v3, "DISCOVER-MEDIA: Requesting resolve for ad %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->b(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    move-result-object v0

    .line 56
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->b:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->d:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v3, p1, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 58
    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a()V

    .line 59
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;-><init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;)V

    return-object v0
.end method
