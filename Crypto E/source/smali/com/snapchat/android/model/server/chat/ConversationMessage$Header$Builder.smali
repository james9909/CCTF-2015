.class public Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuth:Lcom/snapchat/android/model/server/chat/SignedPayload;

.field private mConnSeqNum:J

.field private mConvId:Ljava/lang/String;

.field private mFrom:Ljava/lang/String;

.field private mTo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mTo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mConvId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mConnSeqNum:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Lcom/snapchat/android/model/server/chat/SignedPayload;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mAuth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;Lcom/snapchat/android/model/server/chat/ConversationMessage$1;)V

    return-object v0
.end method

.method public setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mAuth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 161
    return-object p0
.end method

.method public setConnSeqNum(J)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
    .locals 1
    .parameter

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mConnSeqNum:J

    .line 156
    return-object p0
.end method

.method public setConvId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mConvId:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mFrom:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setTo(Ljava/util/List;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mTo:Ljava/util/List;

    .line 146
    return-object p0
.end method
