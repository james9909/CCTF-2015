.class public Lcom/snapchat/android/api/SendSnapWithMediaTask;
.super Lcom/snapchat/android/api/SendSnapTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;
    }
.end annotation


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapWithMediaTask"


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/api/SendSnapTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    .line 21
    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mData:[B

    .line 23
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mData:[B

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 25
    new-instance v0, Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;

    const-string v1, "Snap media is no longer accessible :("

    invoke-direct {v0, v1}, Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "/loq/retry"

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->e(Z)V

    .line 56
    :try_start_0
    new-instance v0, Lcom/snapchat/android/api/SendSnapWithMediaTask;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapWithMediaTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapWithMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Lcom/snapchat/android/api/SendSnapTask;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-string v1, "type"

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snapbryo;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "data"

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapWithMediaTask;->mData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 47
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "SendSnapWithMediaTask"

    return-object v0
.end method
