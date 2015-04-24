.class final Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lorg/json/JSONArray;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;->a:Lorg/json/JSONArray;

    iput-wide p2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    const-string v0, "https://sc-analytics.appspot.com/analytic_events"

    iget-object v1, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;->a:Lorg/json/JSONArray;

    iget-wide v2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$7;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;Lorg/json/JSONArray;J)V

    .line 347
    return-void
.end method
