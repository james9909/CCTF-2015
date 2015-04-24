.class public Lcom/snapchat/android/util/RetryUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 17
    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x7d00

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/util/RetryUtil;->a(Ljava/util/concurrent/Callable;JJ)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/concurrent/Callable;JJ)Ljava/util/concurrent/Callable;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;JJ)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/util/RetryUtil$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/RetryUtil$1;-><init>(Lcom/snapchat/android/util/RetryUtil;JLjava/util/concurrent/Callable;J)V

    return-object v0
.end method
