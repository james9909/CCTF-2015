.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAndroidHref:Ljava/lang/String;

.field private mHref:Ljava/lang/String;

.field private mIosHref:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mIosHref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mAndroidHref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mHref:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;
    .locals 1

    .prologue
    .line 435
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;)V

    return-object v0
.end method

.method public setAndroidHref(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mAndroidHref:Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public setHref(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mHref:Ljava/lang/String;

    .line 431
    return-object p0
.end method

.method public setIosHref(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mIosHref:Ljava/lang/String;

    .line 421
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Attributes$Attribute$Builder;->mType:Ljava/lang/String;

    .line 416
    return-object p0
.end method
