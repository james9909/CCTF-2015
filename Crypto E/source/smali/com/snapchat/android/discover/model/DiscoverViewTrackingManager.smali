.class public Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$1;,
        Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;,
        Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;,
        Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;


# instance fields
.field private final b:Lcom/snapchat/android/util/system/Clock;

.field private final c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;-><init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    .line 191
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f:Ljava/util/Map;

    .line 195
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b:Lcom/snapchat/android/util/system/Clock;

    .line 196
    iput-object p2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 197
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    return-object v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e:Ljava/util/Map;

    new-instance v1, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    invoke-direct {v1, p1, p2, p3}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method private b(Ljava/lang/String;J)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f:Ljava/util/Map;

    new-instance v1, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;

    invoke-direct {v1, p1, p2, p3}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 279
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 280
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b()I

    move-result v0

    :goto_1
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    monitor-enter v1

    .line 242
    :try_start_0
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    move-result-object v0

    .line 247
    iget-object v2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    monitor-enter v1

    .line 347
    :try_start_0
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->c(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->b(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 260
    if-nez p2, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c()Z

    move-result p2

    .line 265
    :cond_1
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a(Z)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    move-result-object v0

    .line 270
    iget-object v2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 205
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;I)V

    .line 206
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 210
    return-void
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    .line 218
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->b()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 222
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 288
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 289
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;J)V

    .line 297
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;

    .line 230
    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;->b()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)J
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;

    .line 309
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 382
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b(Ljava/lang/String;J)V

    .line 318
    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 363
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    .line 372
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
