.class public Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mIv:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mMediaId:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mIv:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;)V

    return-object v0
.end method

.method public setIv(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mIv:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mKey:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mMediaId:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->mUrl:Ljava/lang/String;

    .line 279
    return-object p0
.end method
