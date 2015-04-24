.class public Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatSharedDSnap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChatMessage:Lcom/snapchat/android/model/server/chat/ChatMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;)Lcom/snapchat/android/model/server/chat/ChatMessage;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;->mChatMessage:Lcom/snapchat/android/model/server/chat/ChatMessage;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/server/chat/ChatMessage;)Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;->mChatMessage:Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 56
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/chat/ChatSharedDSnap;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;-><init>(Lcom/snapchat/android/model/chat/ChatSharedDSnap$Builder;)V

    return-object v0
.end method
