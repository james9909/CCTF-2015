.class public Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
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
            "Lcom/snapchat/android/discover/model/MediaState;",
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
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->e:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->f:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->g:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->h:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 210
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 290
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 67
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated intro video loading state for %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 72
    :goto_1
    return v0

    .line 68
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 72
    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 222
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated loading state for %s media from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 227
    :goto_1
    return v0

    .line 223
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 227
    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPanel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 302
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated loading state for %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 307
    :goto_1
    return v0

    .line 303
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 307
    goto :goto_1
.end method

.method public b(Lcom/snapchat/android/discover/model/DSnapPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 243
    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    return-void
.end method

.method public b(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 95
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated filled icon loading state for %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 100
    :goto_1
    return v0

    .line 96
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_1
.end method

.method public b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 264
    :goto_0
    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 259
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated loading state for %s placeholder from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 262
    goto :goto_0

    .line 260
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    :cond_2
    move v0, v2

    .line 264
    goto :goto_0
.end method

.method public c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 55
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 123
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated inverted icon loading state for %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 128
    :goto_1
    return v0

    .line 124
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 128
    goto :goto_1
.end method

.method public d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 83
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 151
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    const-string v3, "DiscoverMediaStateTracker"

    const-string v4, "DISCOVER-MEDIA: Updated loading icon loading state for %s from %s to %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 156
    :goto_1
    return v0

    .line 152
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 156
    goto :goto_1
.end method

.method public e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 111
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 139
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method
