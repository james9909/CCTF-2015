.class public Lcom/snapchat/android/util/network/EndpointManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api/GetEndpointSetTask$GetEndpointSetTaskCallback;
.implements Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/network/EndpointManager$EndpointsRefreshedEvent;
    }
.end annotation


# static fields
.field protected static a:Lcom/snapchat/android/model/ProxyEndpoint;

.field private static b:Lcom/snapchat/android/util/network/EndpointManager;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/snapchat/android/model/EndpointSet;


# instance fields
.field private e:Lcom/snapchat/android/model/EndpointSet;

.field private f:Lcom/snapchat/android/model/ProxyEndpoint;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/EndpointSet;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "snapchat.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suproo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "feelinsonice-hrd.appspot.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "addlive.io"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/util/network/EndpointManager;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->g:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->i:Ljava/util/Map;

    .line 73
    invoke-direct {p0}, Lcom/snapchat/android/util/network/EndpointManager;->m()V

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/android/util/network/EndpointManager;->e()Lcom/snapchat/android/model/EndpointSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/snapchat/android/util/network/EndpointManager;->d:Lcom/snapchat/android/model/EndpointSet;

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/util/network/EndpointManager;->f()Lcom/snapchat/android/model/ProxyEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Lcom/snapchat/android/util/network/EndpointManager;->a:Lcom/snapchat/android/model/ProxyEndpoint;

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/util/network/EndpointManager;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->k:Ljava/util/Map;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->k:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->k:Ljava/util/Map;

    .line 90
    :cond_2
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/util/network/EndpointManager;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/snapchat/android/util/network/EndpointManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/network/EndpointManager;->b:Lcom/snapchat/android/util/network/EndpointManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/snapchat/android/util/network/EndpointManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/network/EndpointManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/network/EndpointManager;->b:Lcom/snapchat/android/util/network/EndpointManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/network/EndpointManager;->b:Lcom/snapchat/android/util/network/EndpointManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 382
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/snapchat/android/util/network/EndpointManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :cond_1
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    .line 388
    :catch_0
    move-exception v0

    move v0, v1

    .line 389
    goto :goto_0

    :cond_2
    move v0, v1

    .line 391
    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/ProxyEndpoint;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    .line 199
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/network/EndpointManager;->a(Lcom/snapchat/android/model/ProxyEndpoint;)V

    .line 200
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/network/EndpointManager$EndpointsRefreshedEvent;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/network/EndpointManager$EndpointsRefreshedEvent;-><init>(Lcom/snapchat/android/util/network/EndpointManager;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method private m()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "https://cnc.addlive.io"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "https://test.suproo.com/proxy/cnc"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    new-instance v2, Lcom/snapchat/android/model/ProxyEndpoint;

    const-string v3, "https://feelinsonice-hrd.appspot.com"

    const-string v4, "https://feelinsonice-hrd.appspot.com"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/snapchat/android/model/ProxyEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 107
    new-instance v0, Lcom/snapchat/android/model/ProxyEndpoint;

    const-string v3, "https://test.suproo.com"

    const-string v4, "https://test.suproo.com"

    invoke-direct {v0, v3, v4, v1, v6}, Lcom/snapchat/android/model/ProxyEndpoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/snapchat/android/model/ProxyEndpoint;

    aput-object v2, v3, v5

    aput-object v0, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "https://list.suproo.com"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    new-instance v3, Lcom/snapchat/android/model/EndpointSet;

    const-wide/16 v4, -0x1

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/snapchat/android/model/EndpointSet;-><init>(JLjava/util/List;Ljava/util/List;)V

    sput-object v3, Lcom/snapchat/android/util/network/EndpointManager;->d:Lcom/snapchat/android/model/EndpointSet;

    .line 113
    sput-object v2, Lcom/snapchat/android/util/network/EndpointManager;->a:Lcom/snapchat/android/model/ProxyEndpoint;

    .line 114
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Lcom/snapchat/android/model/ProxyEndpoint;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/snapchat/android/model/ProxyEndpoint;"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v2, 0x0

    .line 247
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 250
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->a()I

    move-result v1

    invoke-virtual {v2}, Lcom/snapchat/android/model/ProxyEndpoint;->a()I

    move-result v6

    if-lt v1, v6, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->a()I

    move-result v1

    invoke-virtual {v2}, Lcom/snapchat/android/model/ProxyEndpoint;->a()I

    move-result v6

    if-ne v1, v6, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    :cond_0
    :goto_1
    move-object v2, v0

    .line 256
    goto :goto_0

    .line 257
    :cond_1
    return-object v2

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method protected a(Lcom/snapchat/android/model/EndpointSet;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 180
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->h:J

    .line 181
    iput v4, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    .line 182
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->c(Ljava/util/Map;)V

    .line 187
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 188
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->b(Lcom/snapchat/android/model/ProxyEndpoint;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 193
    new-instance v2, Lcom/snapchat/android/api/PingProxyEndpointTask;

    invoke-direct {v2, v0, p0}, Lcom/snapchat/android/api/PingProxyEndpointTask;-><init>(Lcom/snapchat/android/model/ProxyEndpoint;Lcom/snapchat/android/api/PingProxyEndpointTask$PingProxyEndpointTaskCallback;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/api/PingProxyEndpointTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected a(Lcom/snapchat/android/model/ProxyEndpoint;)V
    .locals 4
    .parameter

    .prologue
    .line 371
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->S:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    return-void
.end method

.method public declared-synchronized a(Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    .line 144
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/GetEndpointSetTaskEvent;->a()Lcom/snapchat/android/model/EndpointSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    iget-object v1, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    invoke-virtual {v1}, Lcom/snapchat/android/model/EndpointSet;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    .line 263
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snapchat/android/util/network/EndpointManager;->h:J

    sub-long/2addr v0, v2

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/util/network/EndpointManager;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/PingProxyEndpointTaskEvent;->b()Lcom/snapchat/android/model/ProxyEndpoint;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->j:I

    iget-object v1, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    invoke-virtual {v1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->i:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    monitor-exit p0

    return-void

    .line 263
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/EndpointSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/EndpointSet;

    .line 164
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->b(Lcom/snapchat/android/model/EndpointSet;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/network/EndpointManager;->b(Ljava/util/List;)Lcom/snapchat/android/model/EndpointSet;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    invoke-virtual {v1}, Lcom/snapchat/android/model/EndpointSet;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/EndpointSet;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 171
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->c(Lcom/snapchat/android/model/EndpointSet;)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->a(Lcom/snapchat/android/model/EndpointSet;)V

    goto :goto_0
.end method

.method protected b(Ljava/util/List;)Lcom/snapchat/android/model/EndpointSet;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/EndpointSet;",
            ">;)",
            "Lcom/snapchat/android/model/EndpointSet;"
        }
    .end annotation

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/EndpointSet;

    .line 236
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/EndpointSet;->c()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/snapchat/android/model/EndpointSet;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 239
    goto :goto_0

    .line 240
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iput-object p1, p0, Lcom/snapchat/android/util/network/EndpointManager;->k:Ljava/util/Map;

    .line 277
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/network/EndpointManager;->c(Ljava/util/Map;)V

    .line 278
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/network/EndpointManager;->a(Ljava/util/Map;)Lcom/snapchat/android/model/ProxyEndpoint;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/network/EndpointManager;->b(Lcom/snapchat/android/model/ProxyEndpoint;)V

    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/model/EndpointSet;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    invoke-static {v0}, Lcom/snapchat/android/util/network/EndpointManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 229
    :goto_0
    return v0

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 212
    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/util/network/EndpointManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 213
    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/util/network/EndpointManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-static {v0}, Lcom/snapchat/android/util/network/EndpointManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 220
    goto :goto_0

    .line 224
    :cond_6
    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->a()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/network/EndpointManager;->a:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/snapchat/android/model/EndpointSet;->b()Ljava/util/List;

    move-result-object v0

    const-string v2, "https://list.suproo.com"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 0

    .prologue
    .line 126
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected c(Lcom/snapchat/android/model/EndpointSet;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/snapchat/android/util/network/EndpointManager;->e:Lcom/snapchat/android/model/EndpointSet;

    .line 293
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/network/EndpointManager;->d(Lcom/snapchat/android/model/EndpointSet;)V

    .line 294
    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/snapchat/android/util/network/EndpointManager$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/network/EndpointManager$2;-><init>(Lcom/snapchat/android/util/network/EndpointManager;)V

    invoke-virtual {v1}, Lcom/snapchat/android/util/network/EndpointManager$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 325
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 327
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->R:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    return-void
.end method

.method protected d()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 302
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->R:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-object v0

    .line 306
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/network/EndpointManager$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/network/EndpointManager$1;-><init>(Lcom/snapchat/android/util/network/EndpointManager;)V

    invoke-virtual {v0}, Lcom/snapchat/android/util/network/EndpointManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v5, Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 316
    goto :goto_0
.end method

.method protected d(Lcom/snapchat/android/model/EndpointSet;)V
    .locals 3
    .parameter

    .prologue
    .line 347
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/snapchat/android/model/EndpointSet;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 351
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->T:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    return-void
.end method

.method protected e()Lcom/snapchat/android/model/EndpointSet;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 337
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->T:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_0

    .line 339
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/snapchat/android/model/EndpointSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/EndpointSet;

    .line 341
    :cond_0
    return-object v0
.end method

.method protected f()Lcom/snapchat/android/model/ProxyEndpoint;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 361
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->S:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    .line 363
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ProxyEndpoint;

    .line 365
    :cond_0
    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->k:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/resolve_streamer.do"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_0
    return-object v1
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/snapchat/android/util/network/EndpointManager;->f:Lcom/snapchat/android/model/ProxyEndpoint;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ProxyEndpoint;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/snapchat/android/util/debug/DevUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "https://cash.square-sandbox.com"

    .line 498
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://sc-connect.squareup.com"

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/snapchat/android/util/debug/DevUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const-string v0, "https://cash.square-sandbox.com"

    .line 505
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://cash.square.com"

    goto :goto_0
.end method
