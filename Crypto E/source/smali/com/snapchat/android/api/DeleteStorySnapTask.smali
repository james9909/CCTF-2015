.class public Lcom/snapchat/android/api/DeleteStorySnapTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field private static final STORY_ID_PARAM:Ljava/lang/String; = "story_id"

.field private static final TAG:Ljava/lang/String; = "DeleteStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "DeleteStorySnapTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRequestSuccessful:Z

.field private mStorySnap:Lcom/snapchat/android/model/StorySnap;

.field private mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 34
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    .line 35
    iput-object p2, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/snapchat/android/api/DeleteStorySnapTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/api/DeleteStorySnapTask;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    invoke-static {v0, v1, v7}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    .line 62
    const-string v1, "resultData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mResultJson:Ljava/lang/String;

    .line 63
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStatusCode:I

    .line 65
    const-string v1, "result json = %s and result = %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mResultJson:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    const-string v2, "DeleteStorySnapTask"

    const-string v3, "%s: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/api/DeleteStorySnapTask;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    iget v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStatusCode:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1

    .line 74
    iput-boolean v6, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mRequestSuccessful:Z

    .line 77
    :cond_1
    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my_story_ads79sdf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "/shared/delete_story"

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/bq/delete_story"

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mRequestSuccessful:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/DeleteStorySnapTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api/DeleteStorySnapTask;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    const v0, 0x7f0c01f3

    iget-object v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 97
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "story_id"

    iget-object v2, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnapLogbook;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_story_ads79sdf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnapLogbook;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-object v0
.end method

.method public b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/DeleteStorySnapTask;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 92
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "DeleteStorySnapTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/DeleteStorySnapTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/DeleteStorySnapTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
