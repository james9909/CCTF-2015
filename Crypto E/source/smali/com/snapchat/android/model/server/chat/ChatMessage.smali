.class public Lcom/snapchat/android/model/server/chat/ChatMessage;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ChatMessage$1;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "chat_message"


# instance fields
.field private final body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

.field private final chat_message_id:Ljava/lang/String;

.field private final saved_state:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private seq_num:J

.field private timestamp:J


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)V

    .line 32
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mMessageBody:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->access$000(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    .line 33
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mSavedState:Ljava/util/Map;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->access$100(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->saved_state:Ljava/util/Map;

    .line 34
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mChatMessageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->access$200(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->chat_message_id:Ljava/lang/String;

    .line 35
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mTimestamp:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->access$300(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->timestamp:J

    .line 36
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mSeqNum:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->access$400(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->seq_num:J

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;Lcom/snapchat/android/model/server/chat/ChatMessage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)V

    return-void
.end method


# virtual methods
.method public canSendOverHTTP()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    return-object v0
.end method

.method public getBodyType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->chat_message_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->saved_state:Ljava/util/Map;

    return-object v0
.end method

.method public getSeqNum()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->seq_num:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->timestamp:J

    return-wide v0
.end method

.method public needsACK()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public setSeqNum(J)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->seq_num:J

    .line 69
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->timestamp:J

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 84
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v0, "type"

    iget-object v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v2, "text"

    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "chat_message_id"

    iget-object v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->chat_message_id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "timestamp"

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->timestamp:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    const-string v0, "sequence"

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->seq_num:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    const-string v0, "conversation_id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatMessage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    return-object v0

    .line 86
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatMessage{\"type\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"text\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->body:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"chat_message_id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->chat_message_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"timestamp\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"sequence\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/ChatMessage;->seq_num:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"conversation_id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2
.end method
