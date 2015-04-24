.class public Lcom/snapchat/android/model/chat/ChatMedia$Builder;
.super Lcom/snapchat/android/model/chat/Chat$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private iv:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mediaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/Chat$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->iv:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$Builder;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->mediaId:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/chat/ChatMedia;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$Builder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->key:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$Builder;
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->iv:Ljava/lang/String;

    .line 128
    return-object p0
.end method
