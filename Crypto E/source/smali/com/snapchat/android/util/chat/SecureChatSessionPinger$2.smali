.class Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/server/chat/PingMessage;

.field final synthetic b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;Lcom/snapchat/android/model/server/chat/PingMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->a:Lcom/snapchat/android/model/server/chat/PingMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: SUCCEEDED SENDING PING and WAITING for response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->a:Lcom/snapchat/android/model/server/chat/PingMessage;

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/PingMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->a:Lcom/snapchat/android/model/server/chat/PingMessage;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/PingMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: FAILED SENDING PING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->a:Lcom/snapchat/android/model/server/chat/PingMessage;

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/PingMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "with reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->m:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    if-ne p3, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;->b:Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;)Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;->i()V

    goto :goto_0
.end method
