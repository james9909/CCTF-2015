.class public Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;
    }
.end annotation


# instance fields
.field private saved:Z

.field private version:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->mSaved:Z
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->access$2100(Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->saved:Z

    .line 448
    #getter for: Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->mVersion:I
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;->access$2200(Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->version:I

    .line 449
    return-void
.end method


# virtual methods
.method public getVersion()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->version:I

    return v0
.end method

.method public isSaved()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/ChatMessage$SavedState;->saved:Z

    return v0
.end method
