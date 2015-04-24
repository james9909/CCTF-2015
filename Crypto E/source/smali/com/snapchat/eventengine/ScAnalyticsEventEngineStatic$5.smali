.class final Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$5;
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 303
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "session_end"

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;Ljava/util/Map;JZ)J

    move-result-wide v0

    .line 306
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 308
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/eventengine/Constants;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/eventengine/Constants;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    :cond_0
    invoke-static {}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->k()V

    .line 313
    return-void
.end method
