.class public Lcom/snapchat/android/api2/chat/LoadConversationPageTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;,
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;,
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;,
        Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/conversation"

.field private static final TAG:Ljava/lang/String; = "LoadConversationPageTask"


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;

.field private final mConversationId:Ljava/lang/String;

.field private final mConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

.field private final mIterToken:Ljava/lang/String;

.field private final mWithPrefetch:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/squareup/otto/Bus;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/squareup/otto/Bus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mIterToken:Ljava/lang/String;

    .line 56
    iput-boolean p3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mWithPrefetch:Z

    .line 57
    iput-object p4, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;

    .line 58
    iput-object p5, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 59
    iput-object p6, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    .line 61
    const-class v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 7
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    if-nez p1, :cond_2

    .line 78
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "NULL_LOAD_CONVERSATION_RESPONSE"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;->a(Z)V

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 79
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;->mConversation:Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "LoadConversationPageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHAT-LOG: LoadConversationPageTask onSuccess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    iget-object v4, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    iget-object v5, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;->mConversation:Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    iget-boolean v6, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mWithPrefetch:Z

    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mIterToken:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v4, v3, v5, v6, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;ZZ)V

    .line 94
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const-string v0, "LoadConversationPageTask"

    const-string v4, "CHAT-LOG: LoadConversationPageTask sending release message for %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-direct {v0}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>()V

    sget-object v2, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 101
    iget-object v0, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;->mConversation:Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;->mConversation:Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;->messages:Ljava/util/List;

    .line 104
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;

    sget-object v3, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 86
    goto :goto_2

    .line 107
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;

    .line 109
    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatOrSnapMessage;->iter_token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;

    sget-object v3, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;

    sget-object v3, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mCallback:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;

    invoke-interface {v0, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;->a(Z)V

    goto/16 :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->e()Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "/loq/conversation"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;

    iget-object v1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mConversationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask;->mIterToken:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
