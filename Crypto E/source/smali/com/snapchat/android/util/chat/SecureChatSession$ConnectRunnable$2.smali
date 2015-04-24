.class Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$2;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$2;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession ran into soft-timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable$2;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;

    iget-object v0, v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;->a:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->l(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/ChatConnectionStateListener;

    .line 461
    invoke-interface {v0}, Lcom/snapchat/android/util/chat/ChatConnectionStateListener;->a()V

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method
