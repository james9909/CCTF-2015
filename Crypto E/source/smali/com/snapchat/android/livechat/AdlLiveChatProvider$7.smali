.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Z)V
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
    .line 1008
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1011
    const-string v0, "livechat"

    const-string v1, "Running the reconnect task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->b:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 1016
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 1018
    :cond_0
    return-void
.end method
