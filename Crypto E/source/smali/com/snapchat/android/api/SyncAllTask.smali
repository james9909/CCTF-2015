.class public Lcom/snapchat/android/api/SyncAllTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/all_updates"

.field private static final TAG:Ljava/lang/String; = "SyncAllTask"

.field private static final TASK_NAME:Ljava/lang/String; = "SyncAllTask"

.field private static sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;


# instance fields
.field private mCalledOnLoginOrOnResume:Z

.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private mFromNotification:Z

.field private mFromPullToRefresh:Z

.field private mNewUnviewedCounts:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOldUnviewedCounts:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileImageCache:Lcom/snapchat/android/util/cache/Cache;

.field private final mScreenParamProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

.field private mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

.field protected final mUser:Lcom/snapchat/android/model/User;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/User;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/api/ScreenParameterProvider;->a()Lcom/snapchat/android/api/ScreenParameterProvider;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->j:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/snapchat/android/api/SyncAllTask;-><init>(Lcom/snapchat/android/model/User;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/api/ScreenParameterProvider;Lcom/snapchat/android/util/cache/Cache;)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/User;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/api/ScreenParameterProvider;Lcom/snapchat/android/util/cache/Cache;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 56
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    invoke-virtual {p0}, Lcom/snapchat/android/api/SyncAllTask;->j()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    .line 74
    iput-object p2, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 75
    iput-object p1, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    .line 76
    iput-object p3, p0, Lcom/snapchat/android/api/SyncAllTask;->mScreenParamProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    .line 77
    iput-object p4, p0, Lcom/snapchat/android/api/SyncAllTask;->mProfileImageCache:Lcom/snapchat/android/util/cache/Cache;

    .line 78
    const-string v0, "SyncAllTask"

    invoke-static {v0}, Lcom/snapchat/android/util/debug/TimeLogger;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected static a(Lcom/snapchat/android/model/User;)Lcom/snapchat/android/api/SyncAllTask;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 84
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[DEBUG-ONLY] SyncAllTask cannot be executed with null User."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    sget-object v1, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    if-eqz v1, :cond_5

    .line 93
    sget-object v1, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    invoke-virtual {v1}, Lcom/snapchat/android/api/SyncAllTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 94
    sget-object v1, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    invoke-virtual {v1}, Lcom/snapchat/android/api/SyncAllTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    new-instance v0, Lcom/snapchat/android/api/SyncAllTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/SyncAllTask;-><init>(Lcom/snapchat/android/model/User;)V

    sput-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    .line 108
    :cond_1
    :goto_0
    sget-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    :cond_2
    :goto_1
    return-object v0

    .line 99
    :cond_3
    sget-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api/SyncAllTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_4

    .line 100
    sget-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    goto :goto_1

    .line 101
    :cond_4
    sget-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api/SyncAllTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 102
    new-instance v0, Lcom/snapchat/android/api/SyncAllTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/SyncAllTask;-><init>(Lcom/snapchat/android/model/User;)V

    sput-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    goto :goto_0

    .line 105
    :cond_5
    new-instance v0, Lcom/snapchat/android/api/SyncAllTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/SyncAllTask;-><init>(Lcom/snapchat/android/model/User;)V

    sput-object v0, Lcom/snapchat/android/api/SyncAllTask;->sSyncAllTaskInstance:Lcom/snapchat/android/api/SyncAllTask;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/snapchat/android/model/server/UpdatesResponse;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 301
    iget-object v0, p1, Lcom/snapchat/android/model/server/UpdatesResponse;->third_party_tracking_base_url:Ljava/lang/String;

    .line 302
    iget-object v1, p1, Lcom/snapchat/android/model/server/UpdatesResponse;->third_party_tracking_app_id:Ljava/lang/String;

    .line 305
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 306
    :cond_0
    const-string v0, "SyncAllTask"

    const-string v1, "Third party demographics tracking url or app ID was null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :goto_0
    return-void

    .line 310
    :cond_1
    new-instance v2, Lcom/snapchat/android/api/SyncAllTask$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/snapchat/android/api/SyncAllTask$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/User;Z)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;ZZ)V

    .line 129
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/User;ZZ)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;ZZZ)V

    .line 134
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/User;ZZZ)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 138
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SyncAllStartedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SyncAllStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 139
    invoke-static {p0}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;)Lcom/snapchat/android/api/SyncAllTask;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/snapchat/android/api/SyncAllTask;->b(Z)V

    .line 142
    invoke-virtual {v0, p2}, Lcom/snapchat/android/api/SyncAllTask;->c(Z)V

    .line 143
    invoke-virtual {v0, p3}, Lcom/snapchat/android/api/SyncAllTask;->a(Z)V

    .line 144
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SyncAllTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    :cond_0
    return-void
.end method

.method public static b(Lcom/snapchat/android/model/User;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;Z)V

    .line 125
    return-void
.end method

.method public static b(Lcom/snapchat/android/model/User;Z)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 149
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SyncAllStartedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SyncAllStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 150
    invoke-static {p0}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;)Lcom/snapchat/android/api/SyncAllTask;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/snapchat/android/api/SyncAllTask;->b(Z)V

    .line 153
    invoke-virtual {v0}, Lcom/snapchat/android/api/SyncAllTask;->f()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 6
    .parameter

    .prologue
    .line 349
    const-string v0, "PULL_TO_REFRESH"

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "PULL_TO_REFRESH"

    const-string v2, "context"

    const-string v3, "Feed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "PULL_TO_REFRESH"

    const-string v2, "reachability"

    iget-object v3, p0, Lcom/snapchat/android/api/SyncAllTask;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "PULL_TO_REFRESH"

    const-string v2, "success"

    iget v3, p0, Lcom/snapchat/android/api/SyncAllTask;->mStatusCode:I

    invoke-static {v3}, Lcom/snapchat/android/util/HttpUtils;->a(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "PULL_TO_REFRESH"

    const-string v2, "return_size_bytes"

    iget-wide v4, p0, Lcom/snapchat/android/api/SyncAllTask;->mReceivedBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 355
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    .line 357
    const-string v0, "response_compare_result"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "equal"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "PULL_TO_REFRESH"

    const-string v3, "is_full_response"

    const-string v4, "false"

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "PULL_TO_REFRESH"

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 364
    :cond_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "PULL_TO_REFRESH"

    const-string v3, "is_full_response"

    const-string v4, "true"

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "/loq/all_updates"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mFromPullToRefresh:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/snapchat/android/api/SyncAllTask;->f(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 190
    const-string v0, "SyncAllTask"

    invoke-static {v0}, Lcom/snapchat/android/util/debug/TimeLogger;->b(Ljava/lang/String;)J

    .line 191
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->c:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;)V

    .line 337
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask;->mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 338
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mUUID:Ljava/util/UUID;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 340
    const-string v0, "SyncAllTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/snapchat/android/api/SyncAllTask;->mFromPullToRefresh:Z

    .line 113
    return-void
.end method

.method protected declared-synchronized b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "checksums_dict"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "height"

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mScreenParamProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/api/ScreenParameterProvider;->b()Lcom/snapchat/android/util/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v1, "width"

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mScreenParamProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/api/ScreenParameterProvider;->b()Lcom/snapchat/android/util/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v1, "max_video_height"

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mScreenParamProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/api/ScreenParameterProvider;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v1, "max_video_width"

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mScreenParamProvider:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/api/ScreenParameterProvider;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 218
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/SyncAllTask;->e(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 224
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    .line 225
    if-eqz v1, :cond_4

    .line 226
    const-string v0, "response_compare_result"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "equal"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v10, v11

    .line 233
    :goto_1
    if-eqz v10, :cond_5

    .line 236
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/MessagingGatewayInfo;)V

    .line 240
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->i()V

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->E()V

    .line 242
    const-string v0, "SyncAllTask"

    const-string v1, "No updates from server."

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :goto_2
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    .line 257
    const-string v0, "SyncAllTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess - # of unviewed chats="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # of unviewed snaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPrunedResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-boolean v1, p0, Lcom/snapchat/android/api/SyncAllTask;->mFromNotification:Z

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mOldUnviewedCounts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mOldUnviewedCounts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mNewUnviewedCounts:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZIIII)V

    .line 266
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask;->mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 268
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;

    invoke-virtual {p0}, Lcom/snapchat/android/api/SyncAllTask;->j()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 269
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;

    invoke-direct {v1, v11}, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mUUID:Ljava/util/UUID;

    iget-boolean v3, p0, Lcom/snapchat/android/api/SyncAllTask;->mCalledOnLoginOrOnResume:Z

    invoke-direct {v1, v2, v11, v3}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;-><init>(Ljava/util/UUID;ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 273
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ao()Z

    move-result v0

    .line 274
    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v0

    .line 276
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    .line 277
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 278
    invoke-static {v0, v1}, Lcom/snapchat/android/api/SyncAllTask;->a(Landroid/content/Context;Lcom/snapchat/android/model/server/UpdatesResponse;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 283
    invoke-static {v12}, Lcom/snapchat/android/model/UserPrefs;->u(Z)V

    .line 284
    new-instance v0, Lcom/snapchat/android/api/SyncAllTask$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/SyncAllTask$1;-><init>(Lcom/snapchat/android/api/SyncAllTask;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 228
    :cond_3
    const-string v0, "response_compare_result"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "not_equal"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    const-string v0, "response_checksum"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->m(Ljava/lang/String;)V

    :cond_4
    move v10, v12

    goto/16 :goto_1

    .line 244
    :cond_5
    if-eqz v1, :cond_6

    .line 245
    const-string v2, "SyncAllTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response checksum compare results: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "response_compare_results_dict"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_6
    new-instance v0, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    iget-object v2, p1, Lcom/snapchat/android/model/server/ServerResponse;->friends_response:Lcom/snapchat/android/model/server/FriendsResponse;

    iget-object v3, p1, Lcom/snapchat/android/model/server/ServerResponse;->stories_response:Lcom/snapchat/android/model/server/StoriesResponse;

    iget-object v4, p1, Lcom/snapchat/android/model/server/ServerResponse;->conversations_response:Ljava/util/List;

    iget-object v5, p1, Lcom/snapchat/android/model/server/ServerResponse;->conversations_response_info:Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;

    iget-object v6, p1, Lcom/snapchat/android/model/server/ServerResponse;->messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    iget-object v7, p1, Lcom/snapchat/android/model/server/ServerResponse;->discover:Lcom/snapchat/android/discover/model/server/DiscoverResponse;

    iget-object v8, p1, Lcom/snapchat/android/model/server/ServerResponse;->identity_check_response:Lcom/snapchat/data/gson/identity/IdentityCheckResponse;

    invoke-virtual {p0}, Lcom/snapchat/android/api/SyncAllTask;->j()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;-><init>(Lcom/snapchat/android/model/server/UpdatesResponse;Lcom/snapchat/android/model/server/FriendsResponse;Lcom/snapchat/android/model/server/StoriesResponse;Ljava/util/List;Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;Lcom/snapchat/android/model/server/MessagingGatewayInfo;Lcom/snapchat/android/discover/model/server/DiscoverResponse;Lcom/snapchat/data/gson/identity/IdentityCheckResponse;I)V

    .line 253
    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    iget-boolean v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mCalledOnLoginOrOnResume:Z

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;Z)V

    goto/16 :goto_2
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->f(Landroid/content/Context;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/snapchat/android/api/SyncAllTask;->mFromNotification:Z

    .line 117
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "SyncAllTask"

    return-object v0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/snapchat/android/api/SyncAllTask;->mCalledOnLoginOrOnResume:Z

    .line 121
    return-void
.end method

.method protected e(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 199
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    iget-object v1, v1, Lcom/snapchat/android/model/server/UpdatesResponse;->qr_path:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mProfileImageCache:Lcom/snapchat/android/util/cache/Cache;

    const-string v1, "snaptag"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 204
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/UpdatesResponse;->qr_path:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->q(Ljava/lang/String;)V

    .line 205
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    iget-object v0, v0, Lcom/snapchat/android/model/server/UpdatesResponse;->qr_path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->i()V

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->d:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;)V

    .line 331
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask;->mSnapMessageFeedRefreshedEvent:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 161
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->c(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mOldUnviewedCounts:Landroid/util/Pair;

    .line 162
    const-string v0, "SyncAllTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreExecute - # of unviewed chats="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mOldUnviewedCounts:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # of unviewed snaps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask;->mOldUnviewedCounts:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/SyncAllTask;->mStartMillis:J

    .line 165
    return-void
.end method
