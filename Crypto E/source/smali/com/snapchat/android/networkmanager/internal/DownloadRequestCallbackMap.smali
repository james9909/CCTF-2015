.class public Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/networkmanager/DownloadManager$Callback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->a:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/networkmanager/DownloadRequest;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/networkmanager/DownloadManager$Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 26
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 28
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
