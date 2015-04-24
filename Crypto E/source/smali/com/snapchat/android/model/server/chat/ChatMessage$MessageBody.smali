.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;,
        Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private media:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mMedia:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->access$600(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->media:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    .line 168
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mType:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->access$700(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->type:Ljava/lang/String;

    .line 169
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mText:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->access$800(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->text:Ljava/lang/String;

    .line 170
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mAttributes:Ljava/util/List;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->access$900(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->attributes:Ljava/util/List;

    .line 171
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getMedia()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->media:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBody{media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->media:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->attributes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
