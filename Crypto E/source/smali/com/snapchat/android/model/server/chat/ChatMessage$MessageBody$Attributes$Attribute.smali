.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$AttributeType;
    }
.end annotation


# instance fields
.field private android_href:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private ios_href:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mType:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->access$1700(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->type:Ljava/lang/String;

    .line 377
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mIosHref:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->access$1800(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->ios_href:Ljava/lang/String;

    .line 378
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mAndroidHref:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->access$1900(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->android_href:Ljava/lang/String;

    .line 379
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mHref:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->access$2000(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->href:Ljava/lang/String;

    .line 380
    return-void
.end method


# virtual methods
.method public getAndroidHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->android_href:Ljava/lang/String;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getIosHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->ios_href:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attribute{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ios_href=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->ios_href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", android_href=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->android_href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", href=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;->href:Ljava/lang/String;

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
