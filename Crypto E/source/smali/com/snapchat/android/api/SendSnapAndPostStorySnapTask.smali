.class public Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;
.super Lcom/snapchat/android/api/SendSnapTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SendSnapAndPostStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapAndPostStorySnapTask"


# instance fields
.field private mPostStoryCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

.field private mSnapRequestSuccessful:Z

.field private mStoryRequestSuccessful:Z

.field private mThumbnailData:[B


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/api/SendSnapTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    .line 29
    iput-boolean v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapRequestSuccessful:Z

    .line 30
    iput-boolean v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStoryRequestSuccessful:Z

    .line 36
    iput-object p3, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mPostStoryCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Landroid/content/Context;Lcom/snapchat/android/model/AnnotatedMediabryo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mThumbnailData:[B

    .line 38
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

    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 56
    invoke-static {v0, v1, v7}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    const-string v1, "resultData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mResultJson:Ljava/lang/String;

    .line 58
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStatusCode:I

    .line 60
    const-string v1, "result json = %s and result = %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mResultJson:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v2, "SendSnapAndPostStorySnapTask"

    const-string v3, "%s: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    iget v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStatusCode:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_3

    .line 69
    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mResultJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mResultJson:Ljava/lang/String;

    const-class v2, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iget-object v1, v0, Lcom/snapchat/android/model/server/ServerResponse;->snap_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    iget-boolean v1, v1, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->success:Z

    if-eqz v1, :cond_1

    .line 77
    iput-boolean v6, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapRequestSuccessful:Z

    .line 80
    :cond_1
    iget-object v1, v0, Lcom/snapchat/android/model/server/ServerResponse;->story_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    iget-boolean v1, v1, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->success:Z

    if-eqz v1, :cond_2

    .line 81
    iput-boolean v6, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStoryRequestSuccessful:Z

    .line 90
    :cond_2
    :goto_1
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mResultJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mFailureMessage:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mFailureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    iget v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_4

    .line 85
    iput-boolean v6, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->m401Error:Z

    goto :goto_1

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mFailureMessage:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mFailureMessage:Ljava/lang/String;

    iget v2, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStatusCode:I

    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->b(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/loq/double_post"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStoryRequestSuccessful:Z

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mPostStoryCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 97
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->story_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->story_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    .line 99
    iget-object v1, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->json:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->json:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;

    iget-object v1, v1, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;->story:Lcom/snapchat/android/model/StorySnap;

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v1

    iget-object v2, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->json:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;

    iget-object v2, v2, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;->story:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/StoryLibrary;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 102
    :cond_0
    iget-object v1, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->group_stories:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 103
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v1

    iget-object v0, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->group_stories:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/util/List;)V

    .line 110
    :cond_1
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/PostStorySnapRequestCompleteEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/PostStorySnapRequestCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 115
    iget-boolean v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapRequestSuccessful:Z

    if-eqz v0, :cond_3

    .line 116
    invoke-super {p0, p1}, Lcom/snapchat/android/api/SendSnapTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 120
    :goto_1
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mPostStoryCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0

    .line 118
    :cond_3
    const-string v0, "Failed send snap task"

    iget v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mStatusCode:I

    invoke-super {p0, v0, v1}, Lcom/snapchat/android/api/SendSnapTask;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/snapchat/android/api/SendSnapTask;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->mThumbnailData:[B

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Landroid/os/Bundle;Lcom/snapchat/android/model/AnnotatedMediabryo;[B)V

    .line 49
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "SendSnapAndPostStorySnapTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
