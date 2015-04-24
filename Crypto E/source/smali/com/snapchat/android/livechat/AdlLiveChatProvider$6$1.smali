.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;

    iput-boolean p2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 967
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;

    iget-object v0, v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iget-object v0, v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;

    iget-wide v2, v2, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->a:J

    sub-long/2addr v0, v2

    .line 969
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;

    iget-object v0, v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;->b:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iget-boolean v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Z)V

    .line 972
    :cond_0
    return-void
.end method
