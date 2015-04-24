.class public Lcom/snapchat/android/api2/chat/PostChatsTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/chat/PostChatsTask$1;,
        Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;,
        Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:Ljava/lang/String; = "/loq/conversation_post_messages"

.field private static final TAG:Ljava/lang/String; = "PostChatsTask"


# instance fields
.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteCompletedCallback:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mMessages:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iput-object p2, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mWriteCompletedCallback:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 35
    const-class v0, Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/chat/PostChatsTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 36
    return-void
.end method

.method private c(Lcom/snapchat/android/api2/framework/NetworkResult;)Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 86
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->i:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 88
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_1

    .line 89
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->g:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->b:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mWriteCompletedCallback:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->a:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;->mConversations:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;->mConversations:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/List;ZZI)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mWriteCompletedCallback:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    invoke-direct {p0, p2}, Lcom/snapchat/android/api2/chat/PostChatsTask;->c(Lcom/snapchat/android/api2/framework/NetworkResult;)Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/chat/PostChatsTask;->a(Lcom/snapchat/android/api2/chat/PostChatsTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/api2/chat/PostChatsTask;->e()Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v0, "PostChatsTask was"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " successful. "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "Response message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "Network Type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "Status Code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "PostChatsTask"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void

    .line 57
    :cond_0
    const-string v0, "unsuccessful. "

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/loq/conversation_post_messages"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/chat/PostChatsTask$1;)V

    .line 46
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;->mUsername:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;->mAuthToken:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    iget-object v2, p0, Lcom/snapchat/android/api2/chat/PostChatsTask;->mMessages:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/api2/chat/PostChatsTask$RequestPayload;->mMessageJson:Ljava/lang/String;

    .line 51
    :cond_0
    return-object v0
.end method
