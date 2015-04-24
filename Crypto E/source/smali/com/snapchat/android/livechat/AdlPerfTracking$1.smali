.class Lcom/snapchat/android/livechat/AdlPerfTracking$1;
.super Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlPerfTracking;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/livechat/AdlPerfTracking;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlPerfTracking;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlPerfTracking$1;->a:Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-direct {p0, p2}, Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x384

    add-long/2addr v0, v2

    .line 65
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlPerfTracking$1;->a:Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-static {v2, p1, v0, v1}, Lcom/snapchat/android/livechat/AdlPerfTracking;->a(Lcom/snapchat/android/livechat/AdlPerfTracking;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlPerfTracking$1;->a:Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-static {v3}, Lcom/snapchat/android/livechat/AdlPerfTracking;->a(Lcom/snapchat/android/livechat/AdlPerfTracking;)Lcom/addlive/service/AddLiveService;

    move-result-object v3

    const-string v4, "flushEvents"

    invoke-static {v4}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v2, v0}, Lcom/addlive/service/AddLiveService;->flushEvents(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlPerfTracking$1;->a:Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlPerfTracking;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to flush performance stats due to security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/livechat/AdlPerfTracking$1;->a(Ljava/lang/String;)V

    return-void
.end method
