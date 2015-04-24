.class public Lcom/snapchat/android/analytics/SendingMailmanAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSendingChatTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->mSendingChatTimers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/chat/ChatMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->mSendingChatTimers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 58
    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>()V

    .line 59
    :cond_0
    const-string v1, "CHAT_SENT"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "success"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "protocol"

    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 60
    const-string v1, "CHAT_SENT_SUCCESS"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBodyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_SENT_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 62
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ChatMessage;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 23
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_SENT_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "story_reply"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 24
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBodyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_SENT_ATTEMPT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 25
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->mSendingChatTimers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>()V

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v4, "reachability"

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void

    .line 23
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 46
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    check-cast p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->b(Lcom/snapchat/android/model/server/chat/ChatMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->needsACK()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    if-ne p3, v0, :cond_1

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_1

    .line 33
    if-eqz p2, :cond_2

    .line 34
    check-cast p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {p0, p1, p3}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    check-cast p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {p0, p1, p3}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->b(Lcom/snapchat/android/model/server/chat/ChatMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V

    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/model/server/chat/ChatMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->mSendingChatTimers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 67
    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>()V

    .line 68
    :cond_0
    const-string v1, "CHAT_SENT"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "protocol"

    invoke-virtual {p2}, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 69
    const-string v1, "CHAT_SENT_FAILED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBodyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_SENT_FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 71
    return-void
.end method
