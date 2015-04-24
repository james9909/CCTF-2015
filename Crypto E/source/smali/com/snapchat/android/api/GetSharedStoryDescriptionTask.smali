.class public Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field public static final PATH:Ljava/lang/String; = "/shared/description"

.field private static final TASK_NAME:Ljava/lang/String; = "GetSharedStoryDescriptionTask"


# instance fields
.field private mSharedStoryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->mSharedStoryId:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "/shared/description"

    return-object v0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "shared_id"

    iget-object v2, p0, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->mSharedStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 6
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v2

    .line 48
    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->f()Ljava/util/List;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 53
    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->mSharedStoryId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    :goto_1
    if-eqz v0, :cond_4

    .line 59
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_POST_TITLE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 60
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_POST_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/PostToStory;->a(Ljava/lang/String;)V

    .line 62
    :cond_3
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_POST_BODY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_POST_BODY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/PostToStory;->b(Ljava/lang/String;)V

    .line 67
    :cond_4
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->mSharedStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->OUR_SHARED_STORY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 70
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->OUR_SHARED_STORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Ljava/lang/String;)V

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/api/GetSharedStoryDescriptionTask;->mSharedStoryId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/FriendUtils;->b(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->FRIEND:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 77
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->FRIEND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->b(Ljava/lang/String;)V

    .line 81
    :cond_6
    :goto_2
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_VIEW_TITLE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_VIEW_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_7
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_VIEW_BODY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 79
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->LOCAL_VIEW_BODY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "GetSharedStoryDescriptionTask"

    return-object v0
.end method
