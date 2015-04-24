.class public Lcom/snapchat/android/api/PostStorySnapTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;,
        Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/bq/post_story"

.field private static final TAG:Ljava/lang/String; = "PostStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "PostStorySnapTask"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field protected mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

.field protected mRequestSuccessful:Z

.field protected mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

.field private mThumbnailData:[B


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mRequestSuccessful:Z

    .line 53
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mContext:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 55
    iput-object p2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Landroid/content/Context;Lcom/snapchat/android/model/AnnotatedMediabryo;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mThumbnailData:[B

    .line 57
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 58
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/snapchat/android/model/AnnotatedMediabryo;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const-string v0, "client_id"

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v0, "time"

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->m()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->A()Ljava/lang/String;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    const-string v0, ""

    .line 109
    :cond_0
    const-string v1, "caption_text_display"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p2, :cond_1

    .line 111
    const-string v0, "thumbnail_data"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 113
    :cond_1
    const-string v0, "story_timestamp"

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->o()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 115
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 116
    const-string v1, "my_story"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 120
    instance-of v3, v0, Lcom/snapchat/android/model/MyPostToStory;

    if-eqz v3, :cond_2

    .line 121
    const-string v0, "my_story"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_3
    const-string v0, "group_ids"

    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/AnnotatedMediabryo;)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 63
    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 65
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 67
    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(D)V

    .line 71
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    const-wide/16 v4, 0x0

    const/4 v1, 0x3

    invoke-virtual {v2, v4, v5, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->B()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 85
    :cond_2
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    :try_start_1
    const-string v3, "PostStorySnapTask"

    invoke-static {v3, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/snapchat/android/api/PostStorySnapTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/snapchat/android/api/PostStorySnapTask;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    invoke-static {v0, v1, v7}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v0

    .line 145
    const-string v1, "resultData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mResultJson:Ljava/lang/String;

    .line 146
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mStatusCode:I

    .line 148
    const-string v1, "result json = %s and result = %s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mResultJson:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    const-string v2, "PostStorySnapTask"

    const-string v3, "%s: %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/api/PostStorySnapTask;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 156
    iget v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mStatusCode:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_2

    .line 157
    iput-boolean v6, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mRequestSuccessful:Z

    .line 158
    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mResultJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mResultJson:Ljava/lang/String;

    const-class v2, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_1
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/api/PostStorySnapTask;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mResultJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mFailureMessage:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mFailureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    iget v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    .line 167
    iput-boolean v6, p0, Lcom/snapchat/android/api/PostStorySnapTask;->m401Error:Z

    goto :goto_1

    .line 168
    :cond_3
    iget v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mStatusCode:I

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    .line 169
    iput-boolean v6, p0, Lcom/snapchat/android/api/PostStorySnapTask;->m404Error:Z

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "/bq/post_story"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mRequestSuccessful:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/PostStorySnapTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 185
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/PostStorySnapRequestCompleteEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/PostStorySnapRequestCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 186
    return-void

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->m404Error:Z

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/api/PostStorySnapTask;->e()V

    goto :goto_0

    .line 180
    :cond_1
    if-nez p1, :cond_2

    .line 181
    const-string v0, "Connection Lost"

    iget v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->message:Ljava/lang/String;

    iget v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->e(Z)V

    .line 206
    new-instance v0, Lcom/snapchat/android/api/PostStorySnapTask;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/api/SendSnapTask;->a(Landroid/os/Bundle;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 99
    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mThumbnailData:[B

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Landroid/os/Bundle;Lcom/snapchat/android/model/AnnotatedMediabryo;[B)V

    .line 100
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 192
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->json:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->json:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;

    iget-object v1, v1, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;->story:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 196
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->group_stories:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->group_stories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/util/List;)V

    .line 199
    :cond_1
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "PostStorySnapTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/PostStorySnapTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;

    iget-object v1, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v2, p0, Lcom/snapchat/android/api/PostStorySnapTask;->mPostStorySnapCallback:Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/PostStorySnapTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
