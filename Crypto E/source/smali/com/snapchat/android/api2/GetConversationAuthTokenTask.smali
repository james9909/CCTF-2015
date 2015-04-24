.class public Lcom/snapchat/android/api2/GetConversationAuthTokenTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;,
        Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->mConversationId:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/GetConversationAuthTokenTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->mConversationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;->messagingAuth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p1, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;->messagingAuth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->a(Lcom/snapchat/android/api2/GetConversationAuthTokenTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/GetConversationAuthTokenTask;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/loq/conversation_auth_token"

    return-object v0
.end method
