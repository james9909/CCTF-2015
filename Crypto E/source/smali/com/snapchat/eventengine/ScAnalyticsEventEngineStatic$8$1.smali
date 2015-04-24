.class Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;


# direct methods
.method constructor <init>(Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8$1;->a:Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/eventengine/ScAnalyticsEventEngineStatic;->a(Z)V

    .line 402
    return-void
.end method
