.class public Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChatMessageId:Ljava/lang/String;

.field private mMessageBody:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

.field private mSavedState:Ljava/util/Map;
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

.field private mSeqNum:J

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/model/server/chat/SignedPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "chat_message"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 113
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mChatMessageId:Ljava/lang/String;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mTimestamp:J

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mMessageBody:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    return-object v0
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mSavedState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mChatMessageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mSeqNum:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ChatMessage;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;Lcom/snapchat/android/model/server/chat/ChatMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mChatMessageId:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setMessageBody(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mMessageBody:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    .line 123
    return-object p0
.end method

.method public setSavedState(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;",
            ">;)",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mSavedState:Ljava/util/Map;

    .line 128
    return-object p0
.end method

.method public setSeqNum(J)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mSeqNum:J

    .line 143
    return-object p0
.end method

.method public setTimestamp(J)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->mTimestamp:J

    .line 138
    return-object p0
.end method
