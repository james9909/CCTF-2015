.class public Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/snapchat/android/networkmanager/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/snapchat/android/networkmanager/DownloadRequest;",
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
            "Lcom/snapchat/android/networkmanager/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestComparator;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestComparator;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 96
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    .line 100
    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v1

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    .line 71
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object p1

    .line 78
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/snapchat/android/networkmanager/DownloadRequest;
    .locals 4

    .prologue
    .line 47
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 9

    .prologue
    .line 115
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 120
    new-instance v3, Ljava/util/PriorityQueue;

    sget-object v4, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a:Ljava/util/Comparator;

    invoke-direct {v3, v2, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v3, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    .line 122
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    .line 123
    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->g()Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/networkmanager/DownloadPriority;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    const-string v4, "DownloadRequestQueue"

    const-string v5, "DOWNLOAD-MANAGER: Degraded priority of %s from %s to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v3}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v8

    invoke-virtual {v8}, Lcom/snapchat/android/networkmanager/DownloadPriority;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v4, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void
.end method
