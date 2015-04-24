.class public abstract Lcom/snapchat/android/api2/framework/HyperRequestTask;
.super Lcom/snapchat/android/api2/framework/HyperRequest;
.source "SourceFile"


# instance fields
.field public mNetworkInterface:Lcom/snapchat/android/api2/framework/NetworkInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequest;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequestTask;->mProvider:Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;->a()Lcom/snapchat/android/api2/framework/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequestTask;->mNetworkInterface:Lcom/snapchat/android/api2/framework/NetworkInterface;

    .line 54
    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/api2/framework/HyperRequestTask$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask$1;-><init>(Lcom/snapchat/android/api2/framework/HyperRequestTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public k()Lcom/snapchat/android/api2/framework/NetworkResult;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->m_()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->c()Lcom/snapchat/android/api2/framework/HttpMethod;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->j_()Ljava/util/Map;

    move-result-object v3

    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->f_()Lcom/snapchat/android/util/memory/Buffer;

    move-result-object v4

    .line 80
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->b()Ljava/lang/Object;

    move-result-object v5

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequestTask;->mNetworkInterface:Lcom/snapchat/android/api2/framework/NetworkInterface;

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/api2/framework/NetworkInterface;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lcom/snapchat/android/util/memory/Buffer;Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred while executing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
