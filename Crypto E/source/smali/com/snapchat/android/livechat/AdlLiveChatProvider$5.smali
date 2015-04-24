.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$5;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$5;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->e:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 620
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$5;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 621
    return-void
.end method
