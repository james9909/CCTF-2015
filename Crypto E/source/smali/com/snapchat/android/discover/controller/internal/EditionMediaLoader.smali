.class public Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;
.implements Lcom/snapchat/android/networkmanager/NetworkStatusListener;


# instance fields
.field protected a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field protected b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field protected c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field private final d:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final f:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final g:Lcom/snapchat/android/util/cache/Cache;

.field private final h:Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;

.field private final i:Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

.field private final j:Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;

.field private k:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/DiscoverCaches;->b:Lcom/snapchat/android/util/cache/Cache;

    new-instance v5, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;

    invoke-direct {v5}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;-><init>()V

    new-instance v6, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

    invoke-direct {v6}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;-><init>()V

    new-instance v7, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;

    invoke-direct {v7}, Lcom/snapchat/android/discover/controller/internal/edition/NetworkAwareDSnapLoadingStrategy;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;-><init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    invoke-direct {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->k:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    .line 152
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$1;-><init>(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 182
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$2;-><init>(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 210
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$3;-><init>(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->d:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 66
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 67
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->f:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 68
    iput-object p4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->g:Lcom/snapchat/android/util/cache/Cache;

    .line 69
    iput-object p5, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->h:Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;

    .line 70
    iput-object p6, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

    .line 71
    iput-object p7, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->j:Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->f:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->b(Ljava/util/List;)V

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
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 120
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 122
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/util/Set;)V

    .line 128
    return-void
.end method

.method private a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->j:Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;

    invoke-interface {v1, p1, p2, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapLoadingStrategy;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

    invoke-virtual {v1, p1, p2, v0}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->h:Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapAdResolver;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

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
    .line 221
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->k:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    .line 222
    const/4 v0, 0x0

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPage;

    .line 225
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 256
    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->c:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_1

    .line 231
    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_4

    .line 237
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 238
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->f:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 241
    :cond_2
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v4}, Lcom/snapchat/android/util/cache/Cache;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 246
    :cond_3
    iget-object v4, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->f:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v4, v5, :cond_7

    .line 253
    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    or-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    .line 259
    :cond_5
    if-eqz v1, :cond_6

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 264
    :cond_6
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Ljava/util/List;)V

    .line 265
    return-void

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)Lcom/snapchat/android/util/cache/Cache;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->g:Lcom/snapchat/android/util/cache/Cache;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 89
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->d:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public a(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b()V

    .line 133
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->k:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->b(Ljava/lang/String;)Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->a()V

    .line 100
    return-void
.end method

.method protected b(Ljava/lang/String;)Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;
    .locals 2
    .parameter

    .prologue
    .line 276
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;

    new-instance v1, Lcom/snapchat/android/discover/controller/internal/ads/PerEditionPredicate;

    invoke-direct {v1, p1}, Lcom/snapchat/android/discover/controller/internal/ads/PerEditionPredicate;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;-><init>(Lcom/snapchat/android/util/Predicate;)V

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 94
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "EditionMediaLoader"

    const-string v1, "DISCOVER-MEDIA: Restricting low and medium priority downloads."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)V

    .line 108
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "EditionMediaLoader"

    const-string v1, "DISCOVER-MEDIA: Removing all download restrictions."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->i:Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;->a(Lcom/snapchat/android/networkmanager/DownloadPriority;)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->e:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b()V

    .line 116
    return-void
.end method

.method public e()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->b:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method
