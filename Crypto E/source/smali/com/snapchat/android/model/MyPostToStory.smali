.class public Lcom/snapchat/android/model/MyPostToStory;
.super Lcom/snapchat/android/model/PostToStory;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/snapchat/android/model/MyPostToStory;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    const-string v0, "my_story_ads79sdf"

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/snapchat/android/model/PostToStory;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/Geofence;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/model/MyPostToStory;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/snapchat/android/model/MyPostToStory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/model/MyPostToStory;->sInstance:Lcom/snapchat/android/model/MyPostToStory;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/snapchat/android/model/MyPostToStory;

    invoke-direct {v0}, Lcom/snapchat/android/model/MyPostToStory;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/MyPostToStory;->sInstance:Lcom/snapchat/android/model/MyPostToStory;

    .line 17
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/MyPostToStory;->sInstance:Lcom/snapchat/android/model/MyPostToStory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
