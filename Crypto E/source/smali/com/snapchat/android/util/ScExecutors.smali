.class public Lcom/snapchat/android/util/ScExecutors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;,
        Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/util/concurrent/ExecutorService;

.field public static final d:Ljava/util/concurrent/ExecutorService;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static final f:Ljava/util/concurrent/ExecutorService;

.field public static final g:Ljava/util/concurrent/ExecutorService;

.field public static final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x7fffffff

    const/16 v10, 0x40

    const-wide/16 v4, 0xa

    const/4 v9, 0x1

    const/4 v2, 0x3

    .line 28
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;

    const-string v0, "Thumbnail"

    const/16 v3, 0xa

    invoke-direct {v8, v0, v3}, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;-><init>(Ljava/lang/String;I)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->a:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;

    const-string v0, "Network"

    const/4 v3, 0x0

    invoke-direct {v8, v0, v3}, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;-><init>(Ljava/lang/String;I)V

    move v3, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;

    const-string v0, "Misc"

    const/16 v3, 0xa

    invoke-direct {v8, v0, v3}, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;-><init>(Ljava/lang/String;I)V

    move v3, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    new-instance v8, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;

    const-string v0, "HighPriority"

    const/4 v3, -0x2

    invoke-direct {v8, v0, v3}, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;-><init>(Ljava/lang/String;I)V

    move v3, v10

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->d:Ljava/util/concurrent/ExecutorService;

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    move v2, v9

    move v3, v11

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->e:Ljava/util/concurrent/ExecutorService;

    .line 74
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    move v2, v9

    move v3, v11

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->f:Ljava/util/concurrent/ExecutorService;

    .line 87
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/snapchat/android/util/ScExecutors;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    move v2, v9

    move v3, v11

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/snapchat/android/util/ScExecutors;->g:Ljava/util/concurrent/ExecutorService;

    .line 90
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v9}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/util/ScExecutors;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method private static a()Ljava/util/concurrent/BlockingQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    return-object v0
.end method
