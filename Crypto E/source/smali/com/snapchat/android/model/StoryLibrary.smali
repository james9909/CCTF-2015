.class public Lcom/snapchat/android/model/StoryLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "StoryLibrary"

.field private static sInstance:Lcom/snapchat/android/model/StoryLibrary;


# instance fields
.field private final mFriendStoriesForDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFriendStoryCollections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field

.field private mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field private final mPostToStories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field

.field private mStories:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mStoryGroupStoryCollections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStoryGroupStoryCollections:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    invoke-static {}, Lcom/snapchat/android/model/MyPostToStory;->a()Lcom/snapchat/android/model/MyPostToStory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/PostToStoriesUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/PostToStoriesUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/model/StoryLibrary;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/snapchat/android/model/StoryLibrary;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/model/StoryLibrary;->sInstance:Lcom/snapchat/android/model/StoryLibrary;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/snapchat/android/model/StoryLibrary;

    invoke-direct {v0}, Lcom/snapchat/android/model/StoryLibrary;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/StoryLibrary;->sInstance:Lcom/snapchat/android/model/StoryLibrary;

    .line 69
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/StoryLibrary;->sInstance:Lcom/snapchat/android/model/StoryLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 4
    .parameter

    .prologue
    .line 490
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 491
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 492
    iget-object v3, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    return-void
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 73
    const-class v0, Lcom/snapchat/android/model/StoryLibrary;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/model/StoryLibrary;->sInstance:Lcom/snapchat/android/model/StoryLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->d()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnap;->f(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 168
    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryLibrary;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 97
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

    .line 98
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    .line 480
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 481
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 483
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 484
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 485
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 487
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryGroup;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/PostToStory;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    invoke-static {}, Lcom/snapchat/android/model/MyPostToStory;->a()Lcom/snapchat/android/model/MyPostToStory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/PostToStory;->a(J)V

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/PostToStoriesUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/PostToStoriesUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 3
    .parameter

    .prologue
    .line 173
    new-instance v1, Lcom/snapchat/android/model/StorySnapLogbook;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/snapchat/android/model/StorySnapExtra;

    invoke-direct {v2}, Lcom/snapchat/android/model/StorySnapExtra;-><init>()V

    invoke-direct {v1, p1, v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lcom/snapchat/android/model/StorySnap;Ljava/util/List;Lcom/snapchat/android/model/StorySnapExtra;)V

    .line 174
    const-string v0, "my_story_ads79sdf"

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    const-string v2, "my_story_ads79sdf"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 176
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    .line 177
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 179
    invoke-direct {p0, v1}, Lcom/snapchat/android/model/StoryLibrary;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 180
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryLibrary;->k()V

    .line 181
    return-void
.end method

.method public a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 3
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->d()Ljava/lang/String;

    move-result-object v1

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 204
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    instance-of v2, v0, Lcom/snapchat/android/model/MyStoryGroup;

    if-nez v2, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->m()I

    move-result v0

    .line 208
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryLibrary;->k()V

    .line 211
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 185
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryGroup;

    .line 186
    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 189
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    :goto_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryLibrary;->d(Ljava/util/List;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryLibrary;->k()V

    .line 199
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 225
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v2

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 230
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v3

    .line 231
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v4

    const-string v5, "my_story_ads79sdf"

    invoke-virtual {v3}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "my_story_ads79sdf"

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryLibrary;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 235
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/model/MyStoryGroup;->a()Lcom/snapchat/android/model/MyStoryGroup;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/MyStoryGroup;->a(Ljava/util/List;)V

    .line 237
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MyStoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    if-eqz p2, :cond_3

    .line 241
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 242
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 243
    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v1

    .line 244
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 248
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/model/StoryLibrary;->d(Ljava/util/List;)V

    .line 249
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    new-instance v1, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 257
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 261
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/SnapWomb;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 262
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 263
    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->q()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 270
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 273
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/SnapWomb;->e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_4

    .line 276
    :cond_7
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryLibrary;->k()V

    .line 277
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapNote;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v4, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v4

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 310
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aC()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aI()Ljava/lang/String;

    move-result-object v6

    .line 312
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryGroup;

    .line 313
    if-nez v1, :cond_5

    .line 317
    new-instance v1, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v1, v6}, Lcom/snapchat/android/model/StoryGroup;-><init>(Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 321
    :goto_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 323
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 324
    :goto_2
    new-instance v7, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {v7, v0, v1, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lcom/snapchat/android/model/StorySnap;Ljava/util/List;Lcom/snapchat/android/model/StorySnapExtra;)V

    .line 325
    invoke-virtual {v7, v6}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-direct {p0, v7}, Lcom/snapchat/android/model/StoryLibrary;->b(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 323
    :cond_1
    :try_start_1
    new-instance v2, Lcom/snapchat/android/model/StorySnapExtra;

    invoke-direct {v2, v1}, Lcom/snapchat/android/model/StorySnapExtra;-><init>(Ljava/util/List;)V

    goto :goto_2

    .line 330
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 333
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 335
    instance-of v2, v0, Lcom/snapchat/android/model/MyStoryGroup;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->m()I

    move-result v2

    if-nez v2, :cond_3

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 338
    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_3

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryLibrary;->k()V

    .line 343
    return-void

    :cond_5
    move-object v3, v1

    goto :goto_1
.end method

.method public a(Ljava/util/List;Z)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/FriendStoryBook;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 447
    :cond_0
    const-string v0, "StoryLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating friend stories with isDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 452
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendStoryBook;

    .line 453
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendStoryBook;->a()Ljava/lang/String;

    move-result-object v1

    .line 454
    iget-object v4, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    .line 455
    if-eqz v1, :cond_1

    .line 456
    iget-object v4, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    monitor-enter v4

    .line 457
    :try_start_0
    iget-object v5, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-virtual {v1, v0, v5, p2}, Lcom/snapchat/android/model/StoryCollection;->a(Lcom/snapchat/android/model/FriendStoryBook;Ljava/util/List;Z)V

    .line 458
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :goto_2
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 460
    :cond_1
    new-instance v1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Lcom/snapchat/android/model/FriendStoryBook;)V

    .line 461
    invoke-direct {p0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Lcom/snapchat/android/model/StoryCollection;)V

    goto :goto_2

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 467
    if-nez p2, :cond_3

    .line 468
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 471
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 472
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryLibrary;->k()V

    .line 473
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryLibrary;->s()V

    goto :goto_0

    .line 471
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    const-string v1, "my_story_ads79sdf"

    invoke-static {}, Lcom/snapchat/android/model/MyStoryGroup;->a()Lcom/snapchat/android/model/MyStoryGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 284
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ak()V

    .line 82
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 417
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 418
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aC()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    .line 423
    if-nez v1, :cond_1

    .line 424
    new-instance v1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v1}, Lcom/snapchat/android/model/StoryCollection;-><init>()V

    .line 425
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryCollection;->a(Lcom/snapchat/android/model/StorySnap;)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 433
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->x()V

    goto :goto_1

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryLibrary;->s()V

    .line 438
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryLibrary;->r()V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 382
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 384
    :cond_1
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 108
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 110
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 113
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SanitizeStoriesFragmentEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SanitizeStoriesFragmentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 122
    :cond_1
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    monitor-enter v1

    .line 131
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mPostToStories:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 148
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 155
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 215
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    new-instance v2, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method public j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 290
    const-string v1, "my_story_ads79sdf"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public k()V
    .locals 5

    .prologue
    .line 346
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 347
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    .line 348
    iget-object v3, p0, Lcom/snapchat/android/model/StoryLibrary;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 356
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    :cond_1
    new-instance v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v0, v3}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;)V

    .line 360
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/StoryCollection;->a(Z)V

    .line 361
    iget-object v3, p0, Lcom/snapchat/android/model/StoryLibrary;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    :cond_2
    return-void
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mStories:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public m()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 5

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    iget-object v2, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 394
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->v()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->N()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 397
    goto :goto_0

    .line 398
    :cond_0
    monitor-exit v2

    .line 399
    return v1

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public o()V
    .locals 4

    .prologue
    .line 403
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 405
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/StoryCollection;->a(Z)V

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    return-void
.end method

.method public p()Ljava/util/List;
    .locals 2
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
    .line 411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/RecentStoryCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 499
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 502
    iget-object v5, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v5

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 504
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/snapchat/android/model/StoryLibrary;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 506
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->y()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    new-instance v1, Lcom/snapchat/android/model/SponsoredStoryCollection;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/SponsoredStoryCollection;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    move-object v0, v1

    .line 516
    :goto_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->N()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 513
    :cond_1
    :try_start_1
    new-instance v1, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/RecentStoryCollection;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    move-object v0, v1

    goto :goto_1

    .line 521
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 527
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 530
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 531
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 533
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 535
    return-object v2
.end method
