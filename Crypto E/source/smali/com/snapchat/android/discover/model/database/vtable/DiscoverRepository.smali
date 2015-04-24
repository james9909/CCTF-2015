.class public Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DiscoverContentObserver;,
        Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;,
        Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;
    }
.end annotation


# static fields
.field private static final b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;


# instance fields
.field protected a:Ljava/lang/Runnable;

.field private final c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

.field private final d:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

.field private final e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

.field private final f:Lcom/snapchat/android/discover/model/database/table/EditionTable;

.field private final g:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

.field private final h:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

.field private final i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final j:Landroid/os/HandlerThread;

.field private final k:Ljava/lang/Object;

.field private final l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field private final n:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/os/Handler;

.field private s:Landroid/content/Context;

.field private t:Landroid/content/ContentResolver;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    .line 121
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->e()Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->e()Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->b()Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "DiscoverRepository"

    const/16 v10, 0xa

    invoke-direct {v9, v0, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v10}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    new-instance v11, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    invoke-direct {v11}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;-><init>(Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;Lcom/snapchat/android/discover/model/database/table/DSnapTable;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Ljavax/inject/Provider;Landroid/os/HandlerThread;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;)V

    .line 132
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;Lcom/snapchat/android/discover/model/database/table/EditionTable;Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;Lcom/snapchat/android/discover/model/database/table/DSnapTable;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Ljavax/inject/Provider;Landroid/os/HandlerThread;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;)V
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
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;",
            "Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;",
            "Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;",
            "Lcom/snapchat/android/discover/model/database/table/EditionTable;",
            "Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;",
            "Lcom/snapchat/android/discover/model/database/table/DSnapTable;",
            "Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;",
            "Landroid/os/HandlerThread;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->k:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->o:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->p:Ljava/util/Set;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->q:Ljava/util/Set;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->u:Z

    .line 566
    new-instance v0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    .line 147
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    .line 148
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    .line 149
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->f:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    .line 150
    iput-object p5, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->g:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    .line 151
    iput-object p6, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->h:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    .line 152
    iput-object p7, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 153
    iput-object p8, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->l:Ljavax/inject/Provider;

    .line 154
    iput-object p9, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->j:Landroid/os/HandlerThread;

    .line 155
    iput-object p10, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->m:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 156
    iput-object p11, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->n:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    .line 157
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->h()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->u:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->o:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Ljavax/inject/Provider;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->l:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 552
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->p:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 553
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 561
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->q:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    .line 562
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 564
    return-void

    .line 562
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 6
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v3

    .line 264
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    :goto_0
    if-eqz v1, :cond_0

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->h(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    .line 271
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    .line 272
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a()Lcom/snapchat/android/discover/model/DSnapPage;
    :try_end_0
    .catch Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 279
    :goto_1
    return-object v0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->m:Lcom/snapchat/android/util/debug/ExceptionReporter;

    iget-object v3, v1, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;->a:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 275
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->n:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->a:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->g:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 165
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->s:Landroid/content/Context;

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->t:Landroid/content/ContentResolver;

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->t:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    new-instance v2, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$1;

    iget-object v3, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$1;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->t:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    new-instance v2, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$2;

    iget-object v3, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$2;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/data/gson/rich_story/RichStoryMetadataResponse;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->h:Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->s:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/data/gson/rich_story/RichStoryMetadataResponse;)V

    .line 375
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 364
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->g:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->s:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V
    .locals 2
    .parameter

    .prologue
    .line 218
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    monitor-exit v1

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V
    .locals 2
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;[Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public varargs a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$7;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$7;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;[Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    return-void
.end method

.method public b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 7
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v3

    .line 296
    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->a:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->h(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 298
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 301
    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    :goto_0
    invoke-virtual {v2, v4}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->i(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 313
    invoke-virtual {v2, v5}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->j(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 314
    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->k(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 315
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 316
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 317
    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->i:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->d(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/ChannelPage$Builder;

    .line 319
    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a()Lcom/snapchat/android/discover/model/ChannelPage;
    :try_end_0
    .catch Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    .line 310
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->m:Lcom/snapchat/android/util/debug/ExceptionReporter;

    iget-object v3, v1, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;->a:Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 322
    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->n:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->a:Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable$ChannelSchema;->b()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 238
    const-string v0, "DiscoverRepository"

    const-string v1, "Manually triggering update of channel and dsnap lists."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$3;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public varargs b([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V
    .locals 11
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 435
    array-length v0, p1

    if-nez v0, :cond_0

    .line 436
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of channel repository - no listeners were specified."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->u:Z

    if-nez v0, :cond_2

    .line 443
    :cond_1
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of channel repository - user is not logged in."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_2
    const-string v0, "DiscoverRepository"

    const-string v1, "Beginning refresh of channel repository."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 449
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->t:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 456
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 458
    :cond_3
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_5

    .line 460
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 468
    :cond_4
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Landroid/database/Cursor;)V

    .line 472
    array-length v1, p1

    move v0, v7

    :goto_2
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 473
    invoke-interface {v2, v10}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;->a(Ljava/util/List;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 462
    :cond_5
    :try_start_2
    const-string v0, "DiscoverRepository"

    const-string v2, "Invalid ChannelPage found in queryChannelList!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 468
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Landroid/database/Cursor;)V

    throw v0

    .line 476
    :cond_6
    const-string v0, "DiscoverRepository"

    const-string v1, "Completed query of channel repository, took %dms."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 468
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public varargs b([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V
    .locals 14
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 501
    array-length v0, p1

    if-nez v0, :cond_0

    .line 502
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of edition repository - no listeners were specified."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->u:Z

    if-nez v0, :cond_2

    .line 509
    :cond_1
    const-string v0, "DiscoverRepository"

    const-string v1, "Skipping query of edition repository - user is not logged in."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 514
    const-string v0, "DiscoverRepository"

    const-string v1, "Beginning refresh of edition repository."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->t:Landroid/content/ContentResolver;

    sget-object v1, Lcom/snapchat/android/content/SnapchatProvider;->c:Landroid/net/Uri;

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 522
    :try_start_1
    const-string v0, "DiscoverRepository"

    const-string v2, "Query for refresh of edition repository took %dms."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    :cond_3
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_5

    .line 528
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 537
    :cond_4
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Landroid/database/Cursor;)V

    .line 541
    array-length v1, p1

    move v0, v7

    :goto_2
    if-ge v0, v1, :cond_6

    aget-object v2, p1, v0

    .line 542
    invoke-interface {v2, v10}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;->a(Ljava/util/List;)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 530
    :cond_5
    :try_start_2
    const-string v0, "DiscoverRepository"

    const-string v2, "Invalid DSnapPage found in queryDSnapList!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 537
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Landroid/database/Cursor;)V

    throw v0

    .line 545
    :cond_6
    const-string v0, "DiscoverRepository"

    const-string v1, "Completed refresh of edition repository, took %dms."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 537
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public c()V
    .locals 5
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 334
    const-string v0, "DiscoverRepository"

    const-string v1, "Signaling data model changed from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/snapchat/android/Timber;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    .line 339
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    const-string v0, "DiscoverRepository"

    const-string v1, "Persisting data model changed from %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/snapchat/android/Timber;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 349
    if-eqz v0, :cond_0

    .line 350
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->N:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v4

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->L:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->M:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 355
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->r:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$4;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->f:Lcom/snapchat/android/discover/model/database/table/EditionTable;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->s:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->a(Landroid/content/Context;)V

    .line 393
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method
