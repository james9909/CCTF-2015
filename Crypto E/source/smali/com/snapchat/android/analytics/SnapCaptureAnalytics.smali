.class public Lcom/snapchat/android/analytics/SnapCaptureAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final SELECT_FRIEND_EVENT:Ljava/lang/String; = "SELECT_FRIEND"

.field protected static final SNAP_CAPTURE_EVENT:Ljava/lang/String; = "SNAP_CAPTURED_TO_PREVIEW"

.field private static final sInstance:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;


# instance fields
.field private mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private mNumBestFriends:I

.field private mNumJustAddedFriends:I

.field private mNumOtherFriends:I

.field private mNumRecentFriends:I

.field private mNumSearchedFriends:I

.field private mNumSelectFriendSession:I

.field private mNumStories:I

.field private mNumTotalActions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->sInstance:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 46
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/SnapCaptureAnalytics;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->sInstance:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SELECT_FRIEND"

    const-string v2, "exit_reason"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "session_number"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSelectFriendSession:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "actions"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumTotalActions:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "stories"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumStories:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "just_added"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumJustAddedFriends:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "recent_friends"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumRecentFriends:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "best_friends"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumBestFriends:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "other_friends"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumOtherFriends:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "SELECT_FRIEND"

    const-string v2, "searched_friends"

    iget v3, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSearchedFriends:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SELECT_FRIEND"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;Z)V

    .line 210
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSelectFriendSession:I

    .line 113
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumTotalActions:I

    .line 120
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumStories:I

    .line 121
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumJustAddedFriends:I

    .line 122
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumRecentFriends:I

    .line 123
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumBestFriends:I

    .line 124
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumOtherFriends:I

    .line 125
    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSearchedFriends:I

    .line 126
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumTotalActions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumTotalActions:I

    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSearchedFriends:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSearchedFriends:I

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumBestFriends:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumBestFriends:I

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumRecentFriends:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumRecentFriends:I

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumJustAddedFriends:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumJustAddedFriends:I

    goto :goto_0

    .line 181
    :cond_3
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumOtherFriends:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumOtherFriends:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SNAP_CAPTURED_TO_PREVIEW"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a(ZZ)V

    .line 59
    return-void
.end method

.method protected a(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SNAP_CAPTURED_TO_PREVIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "SNAP_CAPTURED_TO_PREVIEW"

    const-string v3, "type"

    if-eqz p1, :cond_0

    const-string v0, "video"

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SNAP_CAPTURED_TO_PREVIEW"

    const-string v2, "filtersEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 66
    return-void

    .line 64
    :cond_0
    const-string v0, "image"

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->h()V

    .line 105
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->i()V

    .line 106
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SNAP_CAPTURED_TO_PREVIEW"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 93
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "SNAP_CAPTURED_TO_PREVIEW"

    const-string v3, "orientation"

    if-eqz p1, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SNAP_CAPTURED_TO_PREVIEW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->b()V

    .line 97
    return-void

    .line 93
    :cond_0
    const-string v0, "landscape"

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "SELECT_FRIEND"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->i()V

    .line 134
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSelectFriendSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumSelectFriendSession:I

    .line 135
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 141
    const-string v0, "send"

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->c(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->b()V

    .line 143
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 149
    const-string v0, "back_to_preview"

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->c(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->i()V

    .line 151
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "add_friend"

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->c(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->i()V

    .line 159
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumTotalActions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumTotalActions:I

    .line 190
    iget v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumStories:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->mNumStories:I

    .line 191
    return-void
.end method
