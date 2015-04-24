.class public Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;
.implements Lcom/snapchat/android/networkmanager/DownloadManager$Callback;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

.field protected c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

.field protected d:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

.field private final e:Lcom/snapchat/android/networkmanager/DownloadManager;

.field private final f:Lcom/snapchat/android/util/cache/Cache;

.field private final g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final i:Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/networkmanager/DownloadManager;->a()Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DiscoverCaches;->a:Lcom/snapchat/android/util/cache/Cache;

    new-instance v5, Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

    invoke-direct {v5}, Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;-><init>()V

    new-instance v6, Lcom/snapchat/android/discover/controller/internal/edition/DefaultEndpointProvider;

    invoke-direct {v6}, Lcom/snapchat/android/discover/controller/internal/edition/DefaultEndpointProvider;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;Ljavax/inject/Provider;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;Ljavax/inject/Provider;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;)V
    .locals 1
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
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;",
            "Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;",
            "Lcom/snapchat/android/networkmanager/DownloadManager;",
            "Lcom/snapchat/android/util/cache/Cache;",
            "Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a:Ljava/util/Map;

    .line 129
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$1;-><init>(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 153
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$2;-><init>(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 175
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader$3;-><init>(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->d:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 70
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 71
    iput-object p4, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    .line 72
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->e:Lcom/snapchat/android/networkmanager/DownloadManager;

    .line 73
    iput-object p5, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

    .line 74
    iput-object p6, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->j:Ljavax/inject/Provider;

    .line 75
    iput-object p7, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/util/cache/Cache;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 123
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/util/Set;)V

    .line 127
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
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
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 307
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 323
    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_5

    .line 313
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v3, v0, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 315
    :cond_1
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v3}, Lcom/snapchat/android/util/cache/Cache;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    sget-object v3, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p0, v0, v3}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v3, v0, v4}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 325
    :cond_3
    if-eqz v1, :cond_4

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 329
    :cond_4
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a(Ljava/util/List;)V

    .line 330
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 97
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->d:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 81
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/Cache;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 92
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V
    .locals 3
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 247
    if-nez v8, :cond_0

    .line 290
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "IntroVideoMediaLoader"

    const-string v1, "DISCOVER-MEDIA: Downloaded intro video for %s (executed with %s priority)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v8, v1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    or-int/2addr v0, v5

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v4, v8}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v5

    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->e()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v1 .. v8}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;ZJLcom/snapchat/android/discover/model/ChannelPage;)V

    .line 284
    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {v0, v8}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto :goto_0

    .line 261
    :cond_2
    :try_start_1
    const-string v0, "IntroVideoMediaLoader"

    const-string v1, "DISCOVER-MEDIA: Cannot cache intro video for %s, cache write failed."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v8, v1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    :try_end_1
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    or-int/2addr v0, v5

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v0, "IntroVideoMediaLoader"

    const-string v1, "DISCOVER-MEDIA: Cannot cache intro video for %s, external storage is not available."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v8, v1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v5

    .line 271
    goto :goto_1

    .line 275
    :cond_3
    const-string v0, "IntroVideoMediaLoader"

    const-string v1, "DISCOVER-MEDIA: Failed to download intro video for %s."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v8, v1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v0, v5

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 107
    return-void
.end method

.method protected a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    .line 196
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v2, p1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 205
    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 102
    return-void
.end method

.method protected b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 7
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 215
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/controller/internal/ContextAwareParamsProvider;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_0

    .line 217
    const-string v3, "IntroVideoMediaLoader"

    const-string v4, "DISCOVER-MEDIA: Requesting %s priority download for %s intro video (%s)."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    new-instance v3, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    invoke-direct {v3}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Landroid/os/Bundle;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a()Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->e:Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-virtual {v2, v0, p0}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->k:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 240
    :cond_0
    return v0

    .line 225
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public e()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->a:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method
