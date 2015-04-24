.class public Lcom/snapchat/android/model/server/chat/MessageStateMessage;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/MessageStateMessage$1;,
        Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;,
        Lcom/snapchat/android/model/server/chat/MessageStateMessage$StateType;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "message_state"


# instance fields
.field private chat_message_id:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private version:I


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)V

    .line 24
    #getter for: Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mChatMessageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->access$000(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    #getter for: Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mChatMessageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->access$000(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->chat_message_id:Ljava/lang/String;

    .line 29
    :goto_0
    #getter for: Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mState:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->access$100(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->state:Ljava/lang/String;

    .line 30
    #getter for: Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mVersion:I
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->access$200(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->version:I

    .line 31
    return-void

    .line 27
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->chat_message_id:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;Lcom/snapchat/android/model/server/chat/MessageStateMessage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;-><init>(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)V

    return-void
.end method


# virtual methods
.method public canSendOverHTTP()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getChatMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->chat_message_id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->version:I

    return v0
.end method

.method public needsACK()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageStateMessage{chat_message_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->chat_message_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conv_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
