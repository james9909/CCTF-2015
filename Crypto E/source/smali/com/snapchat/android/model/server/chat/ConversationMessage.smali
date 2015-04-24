.class public abstract Lcom/snapchat/android/model/server/chat/ConversationMessage;
.super Lcom/snapchat/android/model/server/chat/SCMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ConversationMessage$1;,
        Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;,
        Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
    }
.end annotation


# instance fields
.field private header:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

.field private retried:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 19
    #getter for: Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;->mHeader:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;->access$000(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage;->header:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-static {p2, v0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setTo(Ljava/util/List;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setFrom(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->setConvId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header$Builder;->build()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage;->header:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract canSendOverHTTP()Z
.end method

.method public getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage;->header:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    return-object v0
.end method

.method public isRetried()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage;->retried:Z

    return v0
.end method

.method public abstract needsACK()Z
.end method

.method public setRetried(Z)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage;->retried:Z

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationMessage{header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConversationMessage;->header:Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
