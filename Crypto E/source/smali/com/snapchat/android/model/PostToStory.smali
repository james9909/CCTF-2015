.class public Lcom/snapchat/android/model/PostToStory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/sendto/SendToItem;


# instance fields
.field private mCustomDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCustomTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation
.end field

.field private mFriendName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_name"
    .end annotation
.end field

.field private mGeofence:Lcom/snapchat/android/util/Geofence;

.field private mIsLocalStory:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local_story"
    .end annotation
.end field

.field private mServerGeofence:Lcom/snapchat/android/model/server/ServerGeofence;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geofence"
    .end annotation
.end field

.field private mStoryGroupDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "my_stories_display_name"
    .end annotation
.end field

.field private mStoryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_id"
    .end annotation
.end field

.field private mTimestamp:J

.field private mVenue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "venue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/Geofence;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/snapchat/android/model/PostToStory;->mStoryId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/snapchat/android/model/PostToStory;->mDisplayName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/snapchat/android/model/PostToStory;->mGeofence:Lcom/snapchat/android/util/Geofence;

    .line 54
    iput-object p4, p0, Lcom/snapchat/android/model/PostToStory;->mVenue:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/snapchat/android/model/PostToStory;->mTimestamp:J

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/snapchat/android/model/PostToStory;->mCustomTitle:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snapchat/android/model/PostToStory;->mCustomDescription:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/model/PostToStory;->mTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/util/Geofence;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mServerGeofence:Lcom/snapchat/android/model/server/ServerGeofence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mGeofence:Lcom/snapchat/android/util/Geofence;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/snapchat/android/util/Geofence;

    iget-object v1, p0, Lcom/snapchat/android/model/PostToStory;->mServerGeofence:Lcom/snapchat/android/model/server/ServerGeofence;

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/Geofence;-><init>(Lcom/snapchat/android/model/server/ServerGeofence;)V

    iput-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mGeofence:Lcom/snapchat/android/util/Geofence;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mGeofence:Lcom/snapchat/android/util/Geofence;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 122
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 124
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/PostToStory;

    if-nez v0, :cond_1

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/PostToStory;

    .line 129
    invoke-virtual {p0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mVenue:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mFriendName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mStoryGroupDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/snapchat/android/model/PostToStory;->mIsLocalStory:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mCustomTitle:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/model/PostToStory;->mCustomDescription:Ljava/lang/String;

    return-object v0
.end method
