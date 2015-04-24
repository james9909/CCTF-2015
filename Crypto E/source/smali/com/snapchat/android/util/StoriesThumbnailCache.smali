.class public Lcom/snapchat/android/util/StoriesThumbnailCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Lcom/snapchat/android/util/StoriesThumbnailCache;


# instance fields
.field private final a:Lcom/snapchat/android/model/StoryLibrary;

.field private b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/snapchat/android/util/StoriesThumbnailCache;

    invoke-direct {v0}, Lcom/snapchat/android/util/StoriesThumbnailCache;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/StoriesThumbnailCache;->c:Lcom/snapchat/android/util/StoriesThumbnailCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/StoriesThumbnailCache;-><init>(Lcom/snapchat/android/model/StoryLibrary;)V

    .line 113
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StoryLibrary;)V
    .locals 4
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->a:Lcom/snapchat/android/model/StoryLibrary;

    .line 95
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 98
    const v1, 0x3ccccccd

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 99
    const-string v1, "StoriesThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoriesThumbnailCache size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kilobytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v1, Lcom/snapchat/android/util/StoriesThumbnailCache$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/util/StoriesThumbnailCache$1;-><init>(Lcom/snapchat/android/util/StoriesThumbnailCache;I)V

    iput-object v1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/StoriesThumbnailCache;)Landroid/support/v4/util/LruCache;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public static a()Lcom/snapchat/android/util/StoriesThumbnailCache;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/snapchat/android/util/StoriesThumbnailCache;->c:Lcom/snapchat/android/util/StoriesThumbnailCache;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;

    .line 179
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->a(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_1

    .line 190
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 191
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_2

    .line 192
    check-cast p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 194
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_3

    .line 197
    check-cast p1, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 198
    invoke-virtual {p1}, Lcom/snapchat/android/model/RecentStoryCollection;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 199
    :cond_3
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->a:Lcom/snapchat/android/model/StoryLibrary;

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0, p2}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Ljava/util/List;

    move-result-object v3

    .line 126
    if-nez v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;

    .line 139
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :cond_3
    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    new-instance v1, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;-><init>(Lcom/snapchat/android/util/StoriesThumbnailCache;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v0, p3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_1
    new-instance v0, Lcom/snapchat/android/util/StoriesThumbnailCache$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/StoriesThumbnailCache$2;-><init>(Lcom/snapchat/android/util/StoriesThumbnailCache;Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;Ljava/util/List;)V

    .line 161
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/BuildPieSliceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {v0}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->b(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;->a(Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;Z)Z

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/StorySnap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/util/StoriesThumbnailCache;->b:Landroid/support/v4/util/LruCache;

    new-instance v2, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;

    invoke-direct {v2, p0, p2, v0}, Lcom/snapchat/android/util/StoriesThumbnailCache$ThumbnailCacheEntry;-><init>(Lcom/snapchat/android/util/StoriesThumbnailCache;Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-virtual {v1, p3, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method
