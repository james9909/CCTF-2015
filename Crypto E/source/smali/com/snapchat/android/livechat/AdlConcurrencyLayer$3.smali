.class Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

.field final synthetic b:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;->b:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;->a:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;->b:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;->b:Lcom/snapchat/android/livechat/AdlConcurrencyLayer;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;->a:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    invoke-interface {v0, v1}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 84
    :cond_0
    return-void
.end method
