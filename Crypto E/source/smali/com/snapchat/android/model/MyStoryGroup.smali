.class public Lcom/snapchat/android/model/MyStoryGroup;
.super Lcom/snapchat/android/model/StoryGroup;
.source "SourceFile"


# static fields
.field public static final MY_STORY_ID:Ljava/lang/String; = "my_story_ads79sdf"

.field private static sInstance:Lcom/snapchat/android/model/MyStoryGroup;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;-><init>()V

    .line 15
    const-string v0, "my_story_ads79sdf"

    iput-object v0, p0, Lcom/snapchat/android/model/MyStoryGroup;->mStoryId:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/MyStoryGroup;->mDisplayName:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/MyStoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/model/MyStoryGroup;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/snapchat/android/model/MyStoryGroup;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/model/MyStoryGroup;->sInstance:Lcom/snapchat/android/model/MyStoryGroup;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/snapchat/android/model/MyStoryGroup;

    invoke-direct {v0}, Lcom/snapchat/android/model/MyStoryGroup;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/MyStoryGroup;->sInstance:Lcom/snapchat/android/model/MyStoryGroup;

    .line 24
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/MyStoryGroup;->sInstance:Lcom/snapchat/android/model/MyStoryGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/snapchat/android/model/MyStoryGroup;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/model/MyStoryGroup;->sInstance:Lcom/snapchat/android/model/MyStoryGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/model/MyStoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/model/MyStoryGroup;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    return-void
.end method
