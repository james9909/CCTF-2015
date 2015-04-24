.class public Lcom/snapchat/android/model/Friend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/sendto/SendToItem;
.implements Lcom/snapchat/android/fragments/stories/StoriesListItem;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/Friend$FriendListSectionizer;,
        Lcom/snapchat/android/model/Friend$Direction;,
        Lcom/snapchat/android/model/Friend$SuggestType;,
        Lcom/snapchat/android/model/Friend$SuggestState;,
        Lcom/snapchat/android/model/Friend$AddSourceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/fragments/sendto/SendToItem;",
        "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Friend"


# instance fields
.field private mActionState:Lcom/snapchat/android/model/FriendAction;

.field private mAddSource:Ljava/lang/String;

.field private mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

.field private mBestFriendIndex:I

.field private mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

.field private mCustomDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCustomTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDirection:Lcom/snapchat/android/model/Friend$Direction;

.field private mDisplayName:Ljava/lang/String;

.field private mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field private mHasBeenAddedAsFriend:Z

.field private mIAddedThemTimestamp:J

.field private mIsBlocked:Z

.field private mIsHidden:Z

.field private mIsIgnored:Z

.field private mIsLocalStory:Z

.field private mIsPending:Z

.field private mIsRecent:Z

.field private mIsSharedStory:Z

.field private mJustAdded:Z

.field private mPendingSnapsCount:I

.field private mPhoneNumber:Ljava/lang/String;

.field private mSharedStoryId:Ljava/lang/String;

.field private mShouldFetchCustomDescription:Z

.field private mStubFriend:Z

.field private mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

.field private mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

.field private mTheyAddedMeTimestamp:J

.field private mUsername:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/server/ServerFriend;)V
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->username:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerFriend;->display:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 170
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->ts:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 160
    iget v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mPendingSnapsCount:I

    iput v0, p0, Lcom/snapchat/android/model/Friend;->mPendingSnapsCount:I

    .line 161
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mIsSharedStory:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    .line 162
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mShouldFetchCustomDescription:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    .line 163
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mSharedStoryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    .line 164
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mIsLocalStory:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    .line 165
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mIsIgnored:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    .line 166
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mIsHidden:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    .line 167
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mAddSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->mAddSourceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$AddSourceType;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 169
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerFriend;->direction:Ljava/lang/String;

    iget v1, p1, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/Friend;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;)V

    .line 207
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 208
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/ServerFriend;Ljava/util/Set;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/server/ServerFriend;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;)V

    .line 212
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 213
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/data/gson/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Integer;)I

    move-result v0

    .line 183
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 188
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/Friend;->mPendingSnapsCount:I

    .line 189
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    .line 190
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    .line 191
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->j()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    .line 193
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    .line 194
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    .line 195
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$Direction;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 196
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$AddSourceType;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 198
    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/Friend;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/Friend;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 40
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->NONE:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 41
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    .line 43
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    .line 57
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 58
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->UNKNOWN:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 61
    sget-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 93
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 96
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    .line 144
    if-nez p1, :cond_0

    const-string p1, ""

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 146
    if-nez p2, :cond_1

    const-string p2, ""

    .line 148
    :cond_1
    iput-object p2, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public B()Lcom/snapchat/android/model/Friend$SuggestType;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    return-object v0
.end method

.method public C()Z
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->NONE:Lcom/snapchat/android/model/Friend$SuggestType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Lcom/snapchat/android/model/Friend$SuggestState;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    return-object v0
.end method

.method public E()Z
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    return v0
.end method

.method public M()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-nez v0, :cond_0

    .line 617
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    return-object v0
.end method

.method public N()V
    .locals 3

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    if-eqz v0, :cond_1

    .line 629
    new-instance v0, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 632
    :cond_1
    return-void
.end method

.method public O()Lcom/snapchat/android/model/FriendAction;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    return-object v0
.end method

.method public P()Lcom/snapchat/android/model/Friend$Direction;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    return-object v0
.end method

.method public Q()Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    return-object v0
.end method

.method public S()Lcom/snapchat/android/model/Friend$AddSourceType;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/Friend;)I
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ScTextUtils;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput p1, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    .line 353
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 224
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 624
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend$AddSourceType;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 678
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend$Direction;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 658
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend$SuggestState;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 527
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend$SuggestType;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 515
    return-void
.end method

.method public a(Lcom/snapchat/android/model/FriendAction;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 642
    return-void
.end method

.method public a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 662
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    .line 248
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 174
    invoke-static {p1}, Lcom/snapchat/android/model/Friend$Direction;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 176
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 178
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    .line 240
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 231
    iput-wide p1, p0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    .line 232
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 345
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    .line 415
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 431
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    if-nez p1, :cond_0

    const-string p1, ""

    .line 366
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    .line 446
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 491
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    .line 494
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_1

    .line 495
    const/4 v0, 0x0

    goto :goto_0

    .line 499
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 501
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    .line 553
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    .line 670
    return-void
.end method

.method public g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    .line 561
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    .line 607
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->b:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    goto :goto_0
.end method

.method public h(Z)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    .line 573
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    return-wide v0
.end method

.method public i(Z)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    .line 581
    return-void
.end method

.method public j()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    return-wide v0
.end method

.method public j(Z)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    .line 589
    return-void
.end method

.method public k(Z)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    .line 597
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 298
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 297
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    goto :goto_0

    .line 298
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->p()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/User;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_1
    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    return v0
.end method

.method public r_()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Friend [mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    return v0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/snapchat/android/model/Friend;->mPendingSnapsCount:I

    return v0
.end method
