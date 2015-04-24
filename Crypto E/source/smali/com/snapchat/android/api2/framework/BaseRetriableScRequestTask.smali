.class public abstract Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# static fields
.field public static final DEFAULT_RETRIES:I = 0x2

.field public static final EXPONENTIAL_STRATEGY:Lcom/snapchat/android/api2/framework/backoffs/ExponentialStrategy; = null

.field private static final TAG:Ljava/lang/String; = "BaseRetriableScRequestTask"

.field protected static sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final mBackoffStrategy:Lcom/snapchat/android/api2/framework/backoffs/IStrategy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mCurrentRetryAttempt:I

.field protected mIsExecutedAsynchronous:Z

.field private final mNumRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/api2/framework/backoffs/ExponentialStrategy;

    invoke-direct {v0}, Lcom/snapchat/android/api2/framework/backoffs/ExponentialStrategy;-><init>()V

    sput-object v0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->EXPONENTIAL_STRATEGY:Lcom/snapchat/android/api2/framework/backoffs/ExponentialStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>(Lcom/snapchat/android/api2/framework/backoffs/IStrategy;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/api2/framework/backoffs/IStrategy;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>(Lcom/snapchat/android/api2/framework/backoffs/IStrategy;I)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/api2/framework/backoffs/IStrategy;I)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 48
    iput p2, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mNumRetries:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    .line 50
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mBackoffStrategy:Lcom/snapchat/android/api2/framework/backoffs/IStrategy;

    .line 51
    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sput-object v0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mIsExecutedAsynchronous:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    iget v1, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mNumRetries:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_1

    .line 68
    iget v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mBackoffStrategy:Lcom/snapchat/android/api2/framework/backoffs/IStrategy;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mBackoffStrategy:Lcom/snapchat/android/api2/framework/backoffs/IStrategy;

    iget v1, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/framework/backoffs/IStrategy;->a(I)J

    move-result-wide v0

    .line 74
    :goto_0
    const-string v4, "NETWORK-LOG: %s is failed to complete. Going for %d attempt, backingoff for %d seconds"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 78
    sget-object v2, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->sScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->h()Ljava/lang/Runnable;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 89
    :goto_1
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->g()V

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->b(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 88
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 105
    return-void
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 56
    iput-boolean v5, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mIsExecutedAsynchronous:Z

    .line 57
    const-string v0, "BaseRetriableScRequestTask"

    const-string v1, "NETWORK-LOG: %s is executing for first attempt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;->g()V

    .line 59
    return-void
.end method

.method protected h()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask$1;-><init>(Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;)V

    return-object v0
.end method
