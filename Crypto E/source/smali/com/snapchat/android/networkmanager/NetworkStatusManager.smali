.class public Lcom/snapchat/android/networkmanager/NetworkStatusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/networkmanager/NetworkStatusManager;


# instance fields
.field private final b:Landroid/net/ConnectivityManager;

.field private final c:Landroid/net/wifi/WifiManager;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/networkmanager/NetworkStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/net/NetworkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;-><init>(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;)V

    .line 48
    return-void

    :cond_0
    move-object v2, v1

    .line 46
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->e:Ljava/util/Set;

    .line 52
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b:Landroid/net/ConnectivityManager;

    .line 53
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->c:Landroid/net/wifi/WifiManager;

    .line 54
    return-void
.end method

.method public static a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    return-object v0
.end method

.method private static b(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 157
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "None"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 143
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    const-string v0, "NetworkStatusManager"

    const-string v2, "Network status changed from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f:Landroid/net/NetworkInfo;

    invoke-static {v5}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f:Landroid/net/NetworkInfo;

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/NetworkStatusListener;

    .line 151
    iget-object v3, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f:Landroid/net/NetworkInfo;

    invoke-interface {v0, v3}, Lcom/snapchat/android/networkmanager/NetworkStatusListener;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method

.method public a(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f:Landroid/net/NetworkInfo;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f:Landroid/net/NetworkInfo;

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Landroid/net/wifi/WifiInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    const/4 v0, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 76
    :cond_0
    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 101
    const-string v0, "unknown"

    .line 102
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 104
    const-string v0, "wifi"

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v0, "wwan"

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "not_reachable"

    goto :goto_0
.end method
