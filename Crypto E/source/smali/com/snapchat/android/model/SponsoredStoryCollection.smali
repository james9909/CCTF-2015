.class public Lcom/snapchat/android/model/SponsoredStoryCollection;
.super Lcom/snapchat/android/model/RecentStoryCollection;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/RecentStoryCollection;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    .line 17
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v1, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 26
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->g()Ljava/lang/String;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    monitor-exit v1

    .line 35
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 32
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->g()Ljava/lang/String;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 35
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUsername:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public h()Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    return-object v0
.end method

.method public s()V
    .locals 5

    .prologue
    .line 40
    iget-object v1, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 42
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v3, v4, :cond_0

    .line 43
    iget-object v3, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->av()V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 47
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lcom/snapchat/android/model/StorySnap;)V

    .line 50
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    return-void
.end method

.method public t()V
    .locals 5

    .prologue
    .line 54
    iget-object v1, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 56
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v3

    .line 57
    sget-object v4, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v3, v4, :cond_0

    .line 58
    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/SponsoredStoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 73
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 78
    :goto_0
    return-object v0

    .line 77
    :cond_1
    monitor-exit v1

    .line 78
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
