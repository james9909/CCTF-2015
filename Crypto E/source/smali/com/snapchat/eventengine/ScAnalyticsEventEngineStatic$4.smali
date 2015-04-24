.class final Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 276
    sget-object v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/eventengine/WorkerThread;

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->d()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/eventengine/WorkerThread;->b(Ljava/lang/Runnable;)V

    .line 277
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->e()J

    move-result-wide v0

    .line 278
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->f()J

    move-result-wide v2

    .line 279
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$4;->a:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 281
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/eventengine/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/eventengine/DatabaseHelper;

    move-result-object v2

    .line 282
    invoke-virtual {v2, v0, v1}, Lcom/snapchat/eventengine/DatabaseHelper;->c(J)V

    .line 284
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$4;->a:J

    invoke-static {v0, v1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(J)V

    .line 285
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->h()V

    .line 288
    iget-wide v0, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$4;->a:J

    invoke-static {v0, v1}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(J)V

    .line 290
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a()V

    .line 291
    return-void
.end method
