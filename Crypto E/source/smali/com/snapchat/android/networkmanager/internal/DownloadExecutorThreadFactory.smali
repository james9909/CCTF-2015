.class Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final a:Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;->a:Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    return-void
.end method

.method public static a()Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;->a:Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6
    .parameter

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    .line 34
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "DownloadExecutor Thread"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/networkmanager/internal/DownloadExecutorThreadFactory;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
