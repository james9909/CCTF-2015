.class Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

.field final synthetic c:Lcom/snapchat/android/analytics/HereAnalytics;

.field final synthetic d:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->d:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->b:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    iput-object p4, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->c:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "AdlConcurrencyLayer Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->d:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->d:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    new-instance v1, Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;-><init>()V

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/livechat/LiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->d:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->b:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;->c:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "AddLive failed to load native lib."

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0
.end method
