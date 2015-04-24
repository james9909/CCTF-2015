.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;",
            ">;"
        }
    .end annotation
.end field

.field private mMedia:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

.field private mText:Ljava/lang/String;

.field private mType:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mMedia:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    return-object v0
.end method

.method static synthetic access$700(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mType:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    return-object v0
.end method

.method static synthetic access$800(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mAttributes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;)V

    return-object v0
.end method

.method public setAttributes(Ljava/util/List;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;",
            ">;)",
            "Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;"
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mAttributes:Ljava/util/List;

    .line 224
    return-object p0
.end method

.method public setMedia(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;
    .locals 1
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mMedia:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    .line 207
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mType:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 208
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;
    .locals 1
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mText:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mType:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 219
    return-object p0
.end method

.method public setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->mType:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    .line 213
    return-object p0
.end method
