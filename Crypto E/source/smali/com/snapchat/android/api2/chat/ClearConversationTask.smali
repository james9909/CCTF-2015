.class public Lcom/snapchat/android/api2/chat/ClearConversationTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;
    }
.end annotation


# instance fields
.field private mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

.field private mConversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 23
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask;->mConversationId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 50
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c(Ljava/lang/String;)V

    .line 57
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c01b0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask;->mConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->m(Z)V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/snapchat/android/api2/chat/ClearConversationTask;->e()Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/loq/clear_conversation"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;

    iget-object v1, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/chat/ClearConversationTask;Ljava/lang/String;)V

    return-object v0
.end method
