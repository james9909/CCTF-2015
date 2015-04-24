.class public Lcom/snapchat/android/api/SendSnapTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/send"

.field private static final TASK_NAME:Ljava/lang/String; = "SendSnapTask"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field protected mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field protected mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

.field protected mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

.field protected mUser:Lcom/snapchat/android/model/User;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/analytics/NetworkAnalytics;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/snapchat/android/api/SendSnapTask;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/api/SendSnapTask;->mUser:Lcom/snapchat/android/model/User;

    .line 60
    iput-object p3, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    .line 61
    iput-object p4, p0, Lcom/snapchat/android/api/SendSnapTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    .line 62
    iput-object p5, p0, Lcom/snapchat/android/api/SendSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 63
    iput-object p6, p0, Lcom/snapchat/android/api/SendSnapTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api/SendSnapTask;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/analytics/NetworkAnalytics;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    const-string v1, "zipped"

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Geofilter"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "filter_id"

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_1

    .line 102
    const-string v1, "camera_front_facing"

    check-cast p1, Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->ab()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    return-void

    .line 96
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "0"

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/loq/send"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 110
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SendSnapRequestCompleteEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SendSnapRequestCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->e(Z)V

    .line 198
    new-instance v0, Lcom/snapchat/android/api/SendSnapTask;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "media_id"

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snapbryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "recipients"

    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Snapbryo;->F()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "time"

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snapbryo;->m()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/api/SendSnapTask;->a(Landroid/os/Bundle;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 92
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snap_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snap_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->snaps:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/SendSnapTask;->e(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->u(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/snapchat/android/api/SendSnapTask;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/snapchat/android/api/SendSnapTask;->k()V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "SendSnapTask"

    return-object v0
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    new-instance v0, Lcom/snapchat/android/api/SendSnapWithMediaTask;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mSendSnapCallback:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapWithMediaTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapWithMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0
.end method

.method protected e(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mUser:Lcom/snapchat/android/model/User;

    iget-object v1, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/AnnotatedMediabryo;)Lcom/snapchat/android/model/SentSnap;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 147
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snapbryo;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c(Ljava/lang/String;)V

    .line 154
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snap_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->snaps:Ljava/util/Map;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Lcom/snapchat/android/model/SentSnap;Ljava/util/Map;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snap_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->snaps:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SentSnap;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server response does not contain recipient\'s sent snap ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snap_response:Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse;->snaps:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SentSnap;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;

    .line 162
    iget-object v2, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/SentSnap;->c(Ljava/lang/String;)V

    .line 163
    iget-wide v2, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/SentSnap;->a(J)V

    .line 164
    iget-wide v2, v0, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/SentSnap;->b(J)V

    goto :goto_0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;)V

    .line 174
    return-void
.end method

.method protected l()Z
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mUser:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 183
    iget-object v2, p0, Lcom/snapchat/android/api/SendSnapTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/User;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/SendSnapTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/api/SendSnapTask;->mSnapbryo:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 72
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method
