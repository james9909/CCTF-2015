.class public Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/networkmanager/DownloadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/networkmanager/DownloadManager;

.field private final b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final d:Lcom/snapchat/android/util/cache/Cache;

.field private final e:Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;

.field private final f:Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

.field private final i:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field private final j:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/snapchat/android/networkmanager/DownloadPriority;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    .line 63
    invoke-static {}, Lcom/snapchat/android/networkmanager/DownloadManager;->a()Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DiscoverCaches;->b:Lcom/snapchat/android/util/cache/Cache;

    new-instance v5, Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;

    invoke-direct {v5}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;-><init>()V

    new-instance v6, Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

    invoke-direct {v6}, Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;-><init>()V

    new-instance v7, Lcom/snapchat/android/discover/controller/internal/edition/DefaultEndpointProvider;

    invoke-direct {v7}, Lcom/snapchat/android/discover/controller/internal/edition/DefaultEndpointProvider;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v8

    new-instance v9, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v9}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    new-instance v10, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v10}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;-><init>(Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;Ljavax/inject/Provider;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;Ljavax/inject/Provider;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/networkmanager/DownloadManager;",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;",
            "Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;",
            "Lcom/snapchat/android/util/cache/Cache;",
            "Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;",
            "Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->k:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->l:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 75
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a:Lcom/snapchat/android/networkmanager/DownloadManager;

    .line 76
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 77
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 78
    iput-object p4, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->d:Lcom/snapchat/android/util/cache/Cache;

    .line 79
    iput-object p5, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->e:Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;

    .line 80
    iput-object p6, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->f:Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

    .line 81
    iput-object p7, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->g:Ljavax/inject/Provider;

    .line 82
    iput-object p8, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    .line 83
    iput-object p9, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->i:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 84
    iput-object p10, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->j:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 85
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 265
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;

    monitor-exit v1

    return-object v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 273
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadPriority;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 162
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;

    .line 174
    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->b()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 175
    const-string v3, "DSnapDownloader"

    const-string v4, "Attempting to cancel %s priority pending download for %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->b()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a:Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 181
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V
    .locals 5
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;

    move-result-object v0

    .line 252
    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    .line 257
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: DSnap download canceled %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 187
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;

    move-result-object v1

    .line 188
    if-nez v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v8

    .line 194
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-ne v1, v2, :cond_1

    move v6, v0

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v3

    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->e()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;ZJZ)V

    .line 197
    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->g()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/snapchat/android/networkmanager/NetworkTypeDisallowedException;

    if-eqz v1, :cond_2

    .line 202
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: Failed to download %s, network type does not allow the download %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v8, v3, v7

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v8, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 194
    goto :goto_1

    .line 208
    :cond_2
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: %s trying to download %s from %s."

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p3, v3, v7

    aput-object v8, v3, v0

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v8, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0

    .line 213
    :cond_3
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: Downloaded %s (executed with %s priority)."

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v8, v3, v7

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->d:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b()[B

    move-result-object v3

    invoke-virtual {p2}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    if-nez v1, :cond_4

    .line 226
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: Failed to cache %s."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v7

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v8, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    const-string v1, "DSnapDownloader"

    const-string v2, "DISCOVER-MEDIA: Cannot %s, external storage is not available."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v7

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v8, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->e:Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapMetadataExtractor;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/rich_story/RichStoryMetadataResponse;

    move-result-object v2

    .line 232
    if-nez v2, :cond_5

    .line 233
    const-string v2, "DSnapDownloader"

    const-string v3, "DISCOVER-MEDIA: Failed to parse %s directory %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v8, v4, v7

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-string v1, "Bad Discover DSnap metadata! id: %s hash: %s edition_id: %s publisher: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->i:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->j:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->h:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v8, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0, v8, v2}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/data/gson/rich_story/RichStoryMetadataResponse;)V

    .line 243
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v8, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d()V

    goto/16 :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->f:Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Landroid/os/Bundle;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    .line 112
    invoke-virtual {p3}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a()Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 121
    const-string v0, "DSnapDownloader"

    const-string v4, "DISCOVER-MEDIA: Skipping download for %s at %s priority because there is a restriction at %s priority level"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    iget-object v6, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->m:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v6}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    monitor-exit v3

    move v0, v1

    .line 150
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;

    .line 128
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->b()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v4

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 131
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 133
    :cond_1
    const-string v1, "DSnapDownloader"

    const-string v4, "DISCOVER-MEDIA: Attempting to upgrade download priority for %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->b()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x2

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;-><init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a:Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-virtual {v0, v2, p0}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->h:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v6

    .line 148
    goto :goto_0

    .line 137
    :cond_2
    :try_start_1
    const-string v0, "DSnapDownloader"

    const-string v1, "DISCOVER-MEDIA: Queueing download for %s with priority %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 150
    goto/16 :goto_0
.end method
