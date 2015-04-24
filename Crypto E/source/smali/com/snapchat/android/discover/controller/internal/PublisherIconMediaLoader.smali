.class public Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;
.implements Lcom/snapchat/android/networkmanager/DownloadManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$4;
    }
.end annotation


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

.field private final i:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/networkmanager/DownloadManager;->a()Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-static {}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->a()Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a:Ljava/util/Map;

    .line 136
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$1;-><init>(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 180
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$2;-><init>(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 217
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$3;-><init>(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->d:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 60
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 61
    iput-object p4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    .line 62
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->e:Lcom/snapchat/android/networkmanager/DownloadManager;

    .line 63
    iput-object p5, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->i:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/util/cache/Cache;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
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
    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 126
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/util/Set;)V

    .line 134
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p1, p2}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    invoke-virtual {p1, p2}, Lcom/snapchat/android/discover/model/ChannelPage;->b(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    .line 342
    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-eq v3, v4, :cond_0

    .line 344
    sget-object v4, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v4, :cond_0

    .line 348
    invoke-direct {p0, v2}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v4, v3}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v1, p2}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 353
    :cond_2
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v4}, Lcom/snapchat/android/util/cache/Cache;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    const-string v4, "PublisherIconMediaLoader"

    const-string v5, "BRAND-ICON: Missing file for publisher icon %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v4, v3}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 356
    const-string v3, "PublisherIconMediaLoader"

    const-string v4, "DISCOVER-MEDIA-BRAND-ICON: Icon missing in cache for publisher icon %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {p0, p1, v0, p2}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V

    move v0, v1

    .line 362
    goto :goto_0

    .line 366
    :cond_3
    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v1, p2}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    sget-object v1, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader$4;->a:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 411
    :goto_0
    return v0

    .line 397
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 398
    goto :goto_0

    .line 401
    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 402
    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 406
    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->h:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
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
    .line 310
    const/4 v0, 0x0

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 313
    sget-object v3, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 314
    sget-object v3, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 315
    sget-object v3, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 316
    goto :goto_0

    .line 318
    :cond_0
    if-eqz v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 322
    :cond_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Ljava/util/List;)V

    .line 323
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 100
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->d:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 69
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/Cache;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v2

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->p()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 77
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v3, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-virtual {p0, v2, v0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V

    move v0, v1

    .line 81
    :cond_0
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->q()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 82
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v3, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-virtual {p0, v2, v0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V

    move v0, v1

    .line 86
    :cond_1
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->r()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 87
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v3, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-virtual {p0, v2, v0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V

    move v0, v1

    .line 91
    :cond_2
    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 95
    :cond_3
    return-void
.end method

.method protected a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p1, p3}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "PublisherIconMediaLoader"

    const-string v2, "DISCOVER-MEDIA-BRAND-ICON: Requesting %s priority download for %s publisher icon (%s)."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, p1, v1, p3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    .line 240
    new-instance v1, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a()Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->e:Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-virtual {v1, v0, p0}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->i:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 249
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V
    .locals 5
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 304
    const-string v0, "PublisherIconMediaLoader"

    const-string v1, "DISCOVER-MEDIA-BRAND-ICON: Download cancelled for publisher icon %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
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
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 256
    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/ChannelPage;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v1

    .line 261
    if-nez v1, :cond_1

    .line 262
    const-string v0, "PublisherIconMediaLoader"

    const-string v1, "BRAND-ICON: Unknown URL %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p3}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Downloaded publisher icon %s for %s (executed with %s priority)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b()[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v2

    .line 272
    if-eqz v2, :cond_3

    .line 273
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    or-int/2addr v1, v7

    .line 293
    :goto_1
    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 295
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d()V

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->i:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c(Lcom/snapchat/android/discover/model/ChannelPage;)V

    goto :goto_0

    .line 275
    :cond_3
    :try_start_1
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Cannot cache publisher icon %s for %s, cache write failed."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z
    :try_end_1
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    or-int/2addr v1, v7

    goto :goto_1

    .line 281
    :catch_0
    move-exception v2

    .line 282
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "BDISCOVER-MEDIA-BRAND-ICON: annot cache publisher icon %s, external storage is not available."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/2addr v1, v7

    .line 285
    goto :goto_1

    .line 289
    :cond_4
    const-string v2, "PublisherIconMediaLoader"

    const-string v3, "DISCOVER-MEDIA-BRAND-ICON: Failed to download publisher icon %s %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p3, v4, v8

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0, v0, v2, v1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Z

    move-result v1

    or-int/2addr v1, v7

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 110
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 105
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public e()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->a:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method
