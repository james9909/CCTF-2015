.class public Lcom/snapchat/android/api2/HideSharedStoryTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;
    }
.end annotation


# instance fields
.field private final mFriend:Ljava/lang/String;

.field private final mHide:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/api2/HideSharedStoryTask;-><init>(Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/api2/HideSharedStoryTask;->mFriend:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/snapchat/android/api2/HideSharedStoryTask;->mHide:Z

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/HideSharedStoryTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/snapchat/android/api2/HideSharedStoryTask;->mFriend:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/HideSharedStoryTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/snapchat/android/api2/HideSharedStoryTask;->mHide:Z

    return v0
.end method


# virtual methods
.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/snapchat/android/api2/HideSharedStoryTask;->e()Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/loq/friend_hide"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/HideSharedStoryTask;)V

    return-object v0
.end method
