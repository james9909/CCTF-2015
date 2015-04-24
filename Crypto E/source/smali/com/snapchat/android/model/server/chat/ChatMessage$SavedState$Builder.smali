.class public Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSaved:Z

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->mSaved:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 459
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->mVersion:I

    return v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;)V

    return-object v0
.end method

.method public setSaved(Z)Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->mSaved:Z

    .line 465
    return-object p0
.end method

.method public setVersion(I)Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 469
    iput p1, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->mVersion:I

    .line 470
    return-object p0
.end method
