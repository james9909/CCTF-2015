.class public Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ReleaseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mKnownChatSequenceNumbers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mKnownReceivedSnapsTs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseType:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;


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
    .line 132
    const-string v0, "message_release"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->mReleaseType:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->mKnownChatSequenceNumbers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->mKnownReceivedSnapsTs:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ReleaseMessage;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;-><init>(Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;Lcom/snapchat/android/model/server/chat/ReleaseMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    move-result-object v0

    return-object v0
.end method

.method public setKnownChatSequenceNumbers(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->mKnownChatSequenceNumbers:Ljava/util/Map;

    .line 142
    return-object p0
.end method

.method public setKnownReceivedSnapsTs(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->mKnownReceivedSnapsTs:Ljava/util/Map;

    .line 147
    return-object p0
.end method

.method public setReleaseType(Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->mReleaseType:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    .line 137
    return-object p0
.end method
