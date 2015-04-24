.class public Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;
    }
.end annotation


# static fields
.field public static final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final c:Lcom/snapchat/android/util/memory/DynamicByteBuffer;

.field private final d:Lcom/snapchat/android/api2/ApiTaskFactory;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$1;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 55
    new-instance v1, Lcom/snapchat/android/api2/ApiTaskFactory;

    invoke-direct {v1}, Lcom/snapchat/android/api2/ApiTaskFactory;-><init>()V

    new-instance v2, Lcom/snapchat/android/util/memory/DynamicByteBuffer;

    const v0, 0x3e800

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;-><init>(I)V

    invoke-static {}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;->a()Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;

    invoke-direct {v5}, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;-><init>(Lcom/snapchat/android/api2/ApiTaskFactory;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Ljava/util/concurrent/ExecutorService;Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/api2/ApiTaskFactory;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Ljava/util/concurrent/ExecutorService;Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p4, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->d:Lcom/snapchat/android/api2/ApiTaskFactory;

    .line 70
    iput-object p3, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->e:Ljava/util/concurrent/ExecutorService;

    .line 71
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->c:Lcom/snapchat/android/util/memory/DynamicByteBuffer;

    .line 72
    iput-object p5, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->f:Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;)Lcom/snapchat/android/util/memory/DynamicByteBuffer;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->c:Lcom/snapchat/android/util/memory/DynamicByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Lcom/snapchat/android/api2/framework/NetworkResult;
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 128
    iget-object v4, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v4}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 129
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 130
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 133
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to download media when user is logged out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Ljava/lang/Exception;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a()Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v0

    .line 164
    :goto_2
    return-object v0

    .line 129
    :cond_1
    const-string v4, "Unknown"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 130
    goto :goto_1

    .line 141
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    new-instance v0, Lcom/snapchat/android/networkmanager/NetworkTypeDisallowedException;

    const-string v1, "Operation only allowed on wifi"

    invoke-direct {v0, v1}, Lcom/snapchat/android/networkmanager/NetworkTypeDisallowedException;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Ljava/lang/Exception;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a()Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v0

    goto :goto_2

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->d:Lcom/snapchat/android/api2/ApiTaskFactory;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->c:Lcom/snapchat/android/util/memory/DynamicByteBuffer;

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/api2/ApiTaskFactory;->a(Ljava/lang/String;Lcom/snapchat/android/util/memory/Buffer;)Lcom/snapchat/android/api2/MediaDownloadTask;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->f:Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;

    invoke-virtual {v1}, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->a()V

    .line 152
    const/4 v1, 0x0

    .line 154
    :try_start_0
    invoke-virtual {v0}, Lcom/snapchat/android/api2/MediaDownloadTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 160
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/snapchat/android/api2/framework/NetworkResult;->e()I

    move-result v0

    int-to-long v0, v0

    .line 161
    :goto_3
    iget-object v2, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->f:Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->a(J)V

    move-object v0, v4

    .line 162
    goto :goto_2

    :cond_5
    move-wide v0, v2

    .line 160
    goto :goto_3

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_1
    const-string v5, "DownloadExecutor"

    const-string v6, "DOWNLOAD-MANAGER: Exception caught executing download request %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v5, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a(Ljava/lang/Exception;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->a()Lcom/snapchat/android/api2/framework/NetworkResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 160
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult;->e()I

    move-result v1

    int-to-long v2, v1

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->f:Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->a(J)V

    goto :goto_2

    .line 160
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/snapchat/android/api2/framework/NetworkResult;->e()I

    move-result v1

    int-to-long v2, v1

    .line 161
    :cond_7
    iget-object v1, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->f:Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/networkmanager/internal/BandwidthRecorder;->a(J)V

    .line 162
    throw v0
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$2;-><init>(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    return v0
.end method
