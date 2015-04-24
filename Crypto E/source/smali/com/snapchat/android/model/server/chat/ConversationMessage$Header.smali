.class public Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ConversationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;
    }
.end annotation


# instance fields
.field private auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

.field private conn_seq_num:J

.field private conv_id:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private to:Ljava/util/List;
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
.method private constructor <init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    #getter for: Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mFrom:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->access$100(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->from:Ljava/lang/String;

    .line 87
    #getter for: Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mTo:Ljava/util/List;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->access$200(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->to:Ljava/util/List;

    .line 88
    #getter for: Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mConvId:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->access$300(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conv_id:Ljava/lang/String;

    .line 89
    #getter for: Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mConnSeqNum:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->access$400(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conn_seq_num:J

    .line 90
    #getter for: Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->mAuth:Lcom/snapchat/android/model/server/chat/SignedPayload;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->access$500(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;Lcom/snapchat/android/model/server/chat/ConversationMessage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;)V

    return-void
.end method


# virtual methods
.method public getAuth()Lcom/snapchat/android/model/server/chat/SignedPayload;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    return-object v0
.end method

.method public getConnSeqNum()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conn_seq_num:J

    return-wide v0
.end method

.method public getConvId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conv_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->to:Ljava/util/List;

    return-object v0
.end method

.method public setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 119
    return-void
.end method

.method public setConnSeqNum(J)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conn_seq_num:J

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header{from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->to:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conv_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conv_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conn_seq_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->conn_seq_num:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
