.class public Lcom/snapchat/android/networkmanager/DownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;,
        Lcom/snapchat/android/networkmanager/DownloadManager$Callback;
    }
.end annotation


# static fields
.field private static final b:Lcom/snapchat/android/networkmanager/DownloadManager;


# instance fields
.field protected final a:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;

.field private final c:Ljava/lang/Object;

.field private final d:Lcom/snapchat/android/util/memory/ResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/memory/ResourcePool",
            "<",
            "Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;

.field private final f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/DownloadManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadManager;->b:Lcom/snapchat/android/networkmanager/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/util/memory/ResourcePool;

    sget-object v1, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a:Ljavax/inject/Provider;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/memory/ResourcePool;-><init>(Ljavax/inject/Provider;I)V

    new-instance v1, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;

    invoke-direct {v1}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;-><init>()V

    new-instance v2, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-direct {v2}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/networkmanager/DownloadManager;-><init>(Lcom/snapchat/android/util/memory/ResourcePool;Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/memory/ResourcePool;Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/util/memory/ResourcePool",
            "<",
            "Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;",
            ">;",
            "Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;",
            "Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->c:Ljava/lang/Object;

    .line 186
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/networkmanager/DownloadManager$1;-><init>(Lcom/snapchat/android/networkmanager/DownloadManager;)V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->a:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;

    .line 66
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    .line 67
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->e:Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;

    .line 68
    iput-object p3, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    .line 69
    return-void
.end method

.method public static a()Lcom/snapchat/android/networkmanager/DownloadManager;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadManager;->b:Lcom/snapchat/android/networkmanager/DownloadManager;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/snapchat/android/networkmanager/DownloadManager;->a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 167
    invoke-virtual {p5}, Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;->a()Ljava/util/Set;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadManager$Callback;

    .line 169
    invoke-interface {v0, p2, p3, p4}, Lcom/snapchat/android/networkmanager/DownloadManager$Callback;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/memory/ResourcePool;->a(Ljava/lang/Object;)V

    .line 177
    const-string v0, "DownloadManager"

    const-string v2, "DOWNLOAD-MANAGER: Request %s completed. Download executor pool size now %d/%d, queue size now %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v5}, Lcom/snapchat/android/util/memory/ResourcePool;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v5}, Lcom/snapchat/android/util/memory/ResourcePool;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v5}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-direct {p0}, Lcom/snapchat/android/networkmanager/DownloadManager;->c()V

    .line 184
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 8
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v0}, Lcom/snapchat/android/util/memory/ResourcePool;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;

    .line 137
    if-eqz v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->b()Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_1

    .line 143
    const-string v3, "DownloadManager"

    const-string v4, "DOWNLOAD-MANAGER: Request %s starting. Download executor pool size now %d/%d, queue size now %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v7}, Lcom/snapchat/android/util/memory/ResourcePool;->b()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v7}, Lcom/snapchat/android/util/memory/ResourcePool;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v7}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v3, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->e:Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Ljava/util/Set;

    move-result-object v3

    .line 148
    new-instance v4, Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;

    invoke-direct {v4, v3}, Lcom/snapchat/android/networkmanager/DownloadManager$DownloadExecutionContext;-><init>(Ljava/util/Set;)V

    .line 150
    iget-object v3, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->a:Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    monitor-exit v1

    .line 157
    return-void

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->d:Lcom/snapchat/android/util/memory/ResourcePool;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/util/memory/ResourcePool;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V
    .locals 6
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->e:Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadManager$Callback;)V

    .line 83
    const-string v0, "DownloadManager"

    const-string v2, "DOWNLOAD-MANAGER: Request %s queued. Queue size now %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v5}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-direct {p0}, Lcom/snapchat/android/networkmanager/DownloadManager;->c()V

    .line 87
    return-void

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    const-string v3, "DownloadManager"

    const-string v4, "DOWNLOAD-MANAGER: Attempting to cancel request for key %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v3, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v3, p1}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_1

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->e:Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestCallbackMap;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Ljava/util/Set;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadManager$Callback;

    .line 120
    invoke-interface {v0, v3}, Lcom/snapchat/android/networkmanager/DownloadManager$Callback;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 123
    :cond_0
    :try_start_1
    const-string v0, "DownloadManager"

    const-string v4, "DOWNLOAD-MANAGER: Request %s canceled. Queue size now %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v6}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    monitor-exit v2

    move v0, v1

    .line 128
    :goto_1
    return v0

    .line 127
    :cond_1
    const-string v1, "DownloadManager"

    const-string v3, "DOWNLOAD-MANAGER: No request to cancel for key %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b()V
    .locals 6
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    const-string v0, "DownloadManager"

    const-string v2, "DOWNLOAD-MANAGER: Signaling context changed with %d queued requests"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v5}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadManager;->f:Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestQueue;->c()V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
