.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

.field private mEnd:I

.field private mStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 340
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mStart:I

    return v0
.end method

.method static synthetic access$1500(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 340
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mEnd:I

    return v0
.end method

.method static synthetic access$1600(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mAttribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;)V

    return-object v0
.end method

.method public setAttribute(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mAttribute:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    .line 357
    return-object p0
.end method

.method public setEnd(I)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;
    .locals 0
    .parameter

    .prologue
    .line 351
    iput p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mEnd:I

    .line 352
    return-object p0
.end method

.method public setStart(I)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;
    .locals 0
    .parameter

    .prologue
    .line 346
    iput p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Builder;->mStart:I

    .line 347
    return-object p0
.end method
