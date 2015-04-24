.class public Lcom/snapchat/android/model/FriendStorySnap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsViewed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewed"
    .end annotation
.end field

.field private mStorySnap:Lcom/snapchat/android/model/StorySnap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/StorySnap;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/model/FriendStorySnap;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/snapchat/android/model/FriendStorySnap;->mIsViewed:Z

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/model/FriendStorySnap;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v0

    return-wide v0
.end method
