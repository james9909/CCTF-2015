.class Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->c:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 138
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->c:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->b(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    invoke-interface {v0, p1, v2, p3, p4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->c:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 145
    return-void
.end method
