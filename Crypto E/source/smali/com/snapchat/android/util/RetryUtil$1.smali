.class Lcom/snapchat/android/util/RetryUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/RetryUtil;->a(Ljava/util/concurrent/Callable;JJ)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/concurrent/Callable;

.field final synthetic c:J

.field final synthetic d:Lcom/snapchat/android/util/RetryUtil;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/RetryUtil;JLjava/util/concurrent/Callable;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/snapchat/android/util/RetryUtil$1;->d:Lcom/snapchat/android/util/RetryUtil;

    iput-wide p2, p0, Lcom/snapchat/android/util/RetryUtil$1;->a:J

    iput-object p4, p0, Lcom/snapchat/android/util/RetryUtil$1;->b:Ljava/util/concurrent/Callable;

    iput-wide p5, p0, Lcom/snapchat/android/util/RetryUtil$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/snapchat/android/util/RetryUtil$1;->a:J

    .line 31
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/util/RetryUtil$1;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v2

    .line 36
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/snapchat/android/util/RetryUtil$1;->c:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    :cond_0
    throw v2

    .line 39
    :catch_1
    move-exception v2

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    goto :goto_0
.end method
