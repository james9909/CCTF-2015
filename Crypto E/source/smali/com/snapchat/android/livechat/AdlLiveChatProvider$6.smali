.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/snapchat/android/livechat/AdlLiveChatProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iput-wide p2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->a:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 962
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iget-object v1, v1, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 974
    return-void
.end method
