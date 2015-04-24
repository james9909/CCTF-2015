.class final Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Ljava/lang/String;Lorg/json/JSONArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 394
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/eventengine/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/eventengine/DatabaseHelper;

    move-result-object v0

    .line 395
    iget-wide v2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/eventengine/DatabaseHelper;->b(J)V

    .line 396
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->m()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 397
    invoke-virtual {v0}, Lcom/snapchat/eventengine/DatabaseHelper;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 398
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    new-instance v1, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8$1;

    invoke-direct {v1, p0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8$1;-><init>(Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/eventengine/WorkerThread;->a(Ljava/lang/Runnable;)V

    .line 405
    :cond_0
    return-void
.end method
