.class final Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->b(Ljava/lang/String;Ljava/util/Map;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:J

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;JZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->b:Ljava/util/Map;

    iput-wide p3, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->c:J

    iput-boolean p5, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->b:Ljava/util/Map;

    iget-wide v2, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->c:J

    iget-boolean v4, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$1;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;Ljava/util/Map;JZ)J

    .line 95
    return-void
.end method
