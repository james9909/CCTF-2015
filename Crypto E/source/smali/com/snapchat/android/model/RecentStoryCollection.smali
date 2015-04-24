.class public Lcom/snapchat/android/model/RecentStoryCollection;
.super Lcom/snapchat/android/model/StoryCollection;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/stories/StoriesListItem;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/RecentStoryCollection;-><init>(Lcom/snapchat/android/model/StoryCollection;Ljavax/inject/Provider;)V

    .line 16
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StoryCollection;Ljavax/inject/Provider;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p1, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    iget-object v1, p1, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-direct {p0, v0, v1, p2}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljava/util/List;Ljavax/inject/Provider;)V

    .line 23
    iget-object v0, p1, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUsername:Ljava/lang/String;

    .line 24
    iget-boolean v0, p1, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUserHasSeenInFeed:Z

    .line 25
    iget v0, p1, Lcom/snapchat/android/model/StoryCollection;->mIndexOfLastStoryViewed:I

    iput v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mIndexOfLastStoryViewed:I

    .line 26
    return-void
.end method


# virtual methods
.method public a(ILcom/snapchat/android/model/StorySnap;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/snapchat/android/model/StorySnap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->z()Ljava/util/List;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 127
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUsername:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {p1}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic f()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->r()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public h()Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->b:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 135
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    const-string v1, "recentStoryCollection"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    return v0
.end method

.method public synthetic i()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->q()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    monitor-exit v2

    .line 33
    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->J()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->H()Z

    move-result v0

    return v0
.end method

.method public q()Lcom/snapchat/android/model/StorySnap;
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 104
    if-ltz v0, :cond_0

    .line 105
    iget-object v2, p0, Lcom/snapchat/android/model/RecentStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    monitor-exit v1

    .line 109
    :goto_0
    return-object v0

    .line 107
    :cond_0
    monitor-exit v1

    .line 109
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Lcom/snapchat/android/model/StorySnap;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->G()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    return-object v0
.end method

.method public r_()Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->c(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    return v0
.end method
