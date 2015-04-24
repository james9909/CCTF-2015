.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;",
        ">;"
    }
.end annotation


# instance fields
.field private attribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

.field private end:I

.field private start:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mStart:I
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->access$1400(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->start:I

    .line 310
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mEnd:I
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->access$1500(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->end:I

    .line 311
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mAttribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->access$1600(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->attribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    .line 312
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;)I
    .locals 2
    .parameter

    .prologue
    .line 328
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->start:I

    iget v1, p1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 303
    check-cast p1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->compareTo(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;)I

    move-result v0

    return v0
.end method

.method public getAttribute()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->attribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;->attribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
