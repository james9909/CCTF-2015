.class final Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/ScExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScThreadFactory"
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    iput-object p1, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->c:Ljava/lang/String;

    .line 123
    iput p2, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->d:I

    .line 124
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 129
    sget-object v1, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 130
    const-string v2, "ScExecutors"

    const-string v3, "Creating new thread in %s pool, local count:%d, global count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->c:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v1, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;

    iget v2, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->d:I

    invoke-direct {v1, p1, v2}, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    .line 134
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "%s-Pool-%d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/util/ScExecutors$ScThreadFactory;->c:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 135
    return-object v2
.end method
