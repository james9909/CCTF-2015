.class public Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/MessageStateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChatMessageId:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 1
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
    .line 72
    const-string v0, "message_state"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mChatMessageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    iget v0, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mVersion:I

    return v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/MessageStateMessage;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;-><init>(Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;Lcom/snapchat/android/model/server/chat/MessageStateMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    move-result-object v0

    return-object v0
.end method

.method public setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mChatMessageId:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mState:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public setVersion(I)Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->mVersion:I

    .line 87
    return-object p0
.end method
