.class public abstract Lcom/snapchat/android/api/RequestTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/snapchat/android/model/server/ServerResponse;",
        ">;",
        "Lcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final SC_LOCKED_ACCOUNT:I = 0x1a2

.field private static final TAG:Ljava/lang/String; = "RequestTask"


# instance fields
.field protected m401Error:Z

.field protected m404Error:Z

.field protected mElapsedTime:J

.field public mFailureMessage:Ljava/lang/String;

.field protected mHitCache:Z

.field protected mProtocol:Ljava/lang/String;

.field protected mReachability:Ljava/lang/String;

.field protected mReceivedBytes:J

.field protected mResultJson:Ljava/lang/String;

.field protected mSentBytes:J

.field protected mStartMillis:J

.field protected mStatusCode:I

.field protected mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/snapchat/android/api/RequestTask;->m401Error:Z

    .line 59
    iput-boolean v0, p0, Lcom/snapchat/android/api/RequestTask;->m404Error:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 167
    const-string v0, "RequestTask"

    const-string v1, "================================== Request Task result =================================="

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-string v0, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-string v0, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hitCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/snapchat/android/api/RequestTask;->mHitCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v0, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sentBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/snapchat/android/api/RequestTask;->mSentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-string v0, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receivedBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/snapchat/android/api/RequestTask;->mReceivedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const-string v0, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reachability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/RequestTask;->mReachability:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v0, "resultData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-static {v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "result = %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    const-string v2, "RequestTask"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v2, v6, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "RequestTask"

    const-string v1, "================================== end Request Task result =================================="

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 187
    const-string v0, "/bq/get_captcha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;
    .locals 10
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->a()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->d()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->b()Landroid/os/Bundle;

    move-result-object v4

    .line 89
    const-string v5, "features_map"

    invoke-static {}, Lcom/snapchat/android/api/ServerSideFeatures;->a()Lcom/snapchat/android/api/ServerSideFeatures;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/snapchat/android/api/ServerSideFeatures;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->h()I

    move-result v5

    .line 92
    invoke-direct {p0, v3}, Lcom/snapchat/android/api/RequestTask;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 93
    invoke-static {v3, v4, v5, p0, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;ILcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 97
    :goto_0
    const-string v4, "resultData"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    iput-object v4, p0, Lcom/snapchat/android/api/RequestTask;->mResultJson:Ljava/lang/String;

    .line 99
    const-string v5, "statusCode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    .line 100
    const-string v5, "hitCache"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/snapchat/android/api/RequestTask;->mHitCache:Z

    .line 101
    const-string v5, "sentBytes"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/snapchat/android/api/RequestTask;->mSentBytes:J

    .line 102
    const-string v5, "receivedBytes"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/snapchat/android/api/RequestTask;->mReceivedBytes:J

    .line 103
    const-string v5, "reachability"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/snapchat/android/api/RequestTask;->mReachability:Ljava/lang/String;

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/snapchat/android/api/RequestTask;->mStartMillis:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/snapchat/android/api/RequestTask;->mElapsedTime:J

    .line 105
    const-string v5, "protocol"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mProtocol:Ljava/lang/String;

    .line 110
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 112
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v5, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerResponse;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_1
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-static {v1}, Lcom/snapchat/android/util/HttpUtils;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 122
    if-eqz v0, :cond_4

    .line 126
    const-string v1, "/loq/all_updates"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/loq/conversations"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/loq/gae_server_list"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/loq/ping"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    move v1, v2

    .line 132
    :goto_2
    iget-boolean v2, v0, Lcom/snapchat/android/model/server/ServerResponse;->logged:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    iget-boolean v2, v2, Lcom/snapchat/android/model/server/UpdatesResponse;->logged:Z

    if-nez v2, :cond_3

    :cond_2
    if-eqz v1, :cond_a

    .line 133
    :cond_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/RequestTask;->c(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 156
    :cond_4
    :goto_3
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_5

    const-string v1, "/find_friends"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Server response 503 on /find_friends"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    .line 160
    :cond_5
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_6

    const-string v1, "/login"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 161
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "Server response 403 on /login"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    .line 163
    :cond_6
    return-object v0

    .line 95
    :cond_7
    invoke-static {v3, v4, v5, v1, v0}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Landroid/os/Bundle;ILcom/snapchat/android/api/SnapchatServer$HttpEntityInterface;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    :cond_8
    move-object v0, v1

    goto/16 :goto_1

    .line 126
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 135
    :cond_a
    iget-object v1, v0, Lcom/snapchat/android/model/server/ServerResponse;->message:Ljava/lang/String;

    iget v2, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/api/RequestTask;->b(Ljava/lang/String;I)V

    .line 136
    iget-object v1, v0, Lcom/snapchat/android/model/server/ServerResponse;->message:Ljava/lang/String;

    iput-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    goto :goto_3

    .line 139
    :cond_b
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    const/16 v4, 0x191

    if-ne v1, v4, :cond_c

    .line 140
    iput-boolean v2, p0, Lcom/snapchat/android/api/RequestTask;->m401Error:Z

    goto :goto_3

    .line 141
    :cond_c
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    const/16 v4, 0x194

    if-ne v1, v4, :cond_d

    .line 142
    iput-boolean v2, p0, Lcom/snapchat/android/api/RequestTask;->m404Error:Z

    goto/16 :goto_3

    .line 143
    :cond_d
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_e

    .line 144
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/network/EndpointManager;->c()V

    .line 145
    const-string v1, "There was a problem connecting to the server"

    iput-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    goto/16 :goto_3

    .line 146
    :cond_e
    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_f

    .line 147
    const-string v1, "Internal server error"

    iput-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    iget v2, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/api/RequestTask;->b(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 150
    :cond_f
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_10

    const v2, 0x7f0c0171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    .line 153
    :goto_5
    iget-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    iget v2, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-virtual {p0, v1, v2}, Lcom/snapchat/android/api/RequestTask;->b(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 152
    :cond_10
    const-string v1, "There was a problem connecting to the server."

    iput-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    goto :goto_5

    .line 113
    :catch_1
    move-exception v0

    goto/16 :goto_4
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 9
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 208
    const-string v0, "RequestTask"

    const-string v1, "%s completed in %d milliseconds."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/snapchat/android/api/RequestTask;->mElapsedTime:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/RequestTask;->mUUID:Ljava/util/UUID;

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    iget-wide v4, p0, Lcom/snapchat/android/api/RequestTask;->mReceivedBytes:J

    iget-object v6, p0, Lcom/snapchat/android/api/RequestTask;->mReachability:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/util/UUID;Ljava/lang/String;IJLjava/lang/String;Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 211
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetProfileInfoTask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget v0, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-static {v0}, Lcom/snapchat/android/util/HttpUtils;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mResultJson:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;)V

    .line 229
    :goto_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "ENDPOINT_REQUEST"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "endpoint"

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "status_code"

    iget v2, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "total_latency"

    iget-wide v2, p0, Lcom/snapchat/android/api/RequestTask;->mElapsedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "request_size_bytes"

    iget-wide v2, p0, Lcom/snapchat/android/api/RequestTask;->mSentBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "return_size_bytes"

    iget-wide v2, p0, Lcom/snapchat/android/api/RequestTask;->mReceivedBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "Hit_Cache"

    iget-boolean v2, p0, Lcom/snapchat/android/api/RequestTask;->mHitCache:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/api/RequestTask;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "protocol"

    iget-object v2, p0, Lcom/snapchat/android/api/RequestTask;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 238
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 241
    :cond_0
    invoke-virtual {v0, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 242
    return-void

    .line 209
    :cond_1
    iget-object v7, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    goto/16 :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/RequestTask;->d(Lcom/snapchat/android/model/server/ServerResponse;)V

    goto :goto_1

    .line 218
    :cond_3
    iget-boolean v0, p0, Lcom/snapchat/android/api/RequestTask;->m401Error:Z

    if-eqz v0, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->i()V

    goto/16 :goto_1

    .line 220
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/api/RequestTask;->m404Error:Z

    if-eqz v0, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->e()V

    goto/16 :goto_1

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/RequestTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    goto/16 :goto_1

    .line 225
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mFailureMessage:Ljava/lang/String;

    iget v1, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/RequestTask;->d(Lcom/snapchat/android/model/server/ServerResponse;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/ResponseBody;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public abstract b()Landroid/os/Bundle;
.end method

.method public b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method protected b(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 284
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected c(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 0
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 281
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 256
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->status:I

    const/16 v1, 0x1a2

    if-ne v0, v1, :cond_0

    .line 258
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    iget-object v2, p1, Lcom/snapchat/android/model/server/ServerResponse;->message:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;-><init>(Ljava/lang/String;Lcom/snapchat/android/api/RequestTask;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public f()Z
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/RequestTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 198
    iget v0, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    invoke-static {v0}, Lcom/snapchat/android/util/HttpUtils;->a(I)Z

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/snapchat/android/api/RequestTask;->mStatusCode:I

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x2

    return v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 288
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->d()I

    .line 289
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 74
    const-string v0, "RequestTask"

    const-string v1, "Starting new %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/api/RequestTask;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/RequestTask;->mUUID:Ljava/util/UUID;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/RequestTask;->mStartMillis:J

    .line 77
    return-void
.end method
