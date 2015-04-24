.class public Lcom/snapchat/android/api/LoadStorySnapMediaTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_NUM_LIVE_STORIES_TO_LOAD_ON_APP_OPEN:I = 0x2

.field public static final MAX_NUM_RECENT_UPDATES_TO_LOAD_ON_APP_OPEN:I = 0x3

.field public static final NUM_TO_LOAD_BEFORE_ALLOWING_VIEWING:I = 0x3

.field public static final NUM_TO_LOAD_ON_TAP:I = 0x3

.field public static final NUM_TO_START_LOADING_AHEAD_ON_VIEW:I = 0x7


# instance fields
.field private mExternalStorageUnavailable:Z

.field private mLoadSuccessful:Z

.field private final mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

.field private final mNumExecutingLoadStorySnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReachability:Ljava/lang/String;

.field private final mShouldLogFirstStory:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartMillis:J

.field private mStorySnap:Lcom/snapchat/android/model/StorySnap;

.field private mToastOnNoConnection:Z

.field private mUser:Lcom/snapchat/android/model/User;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StorySnap;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/StorySnap;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/StorySnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mLoadSuccessful:Z

    .line 39
    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mExternalStorageUnavailable:Z

    .line 46
    invoke-static {}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a()Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    .line 71
    iput-object p1, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    .line 72
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mUser:Lcom/snapchat/android/model/User;

    .line 73
    iput-boolean p2, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mToastOnNoConnection:Z

    .line 74
    iput-object p4, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mNumExecutingLoadStorySnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mShouldLogFirstStory:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mShouldLogFirstStory:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mNumExecutingLoadStorySnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    iget-object v1, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    iget-object v2, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->ax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->c(Lcom/snapchat/android/model/StorySnap;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mLoadSuccessful:Z

    .line 101
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    iget-object v1, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    iget-object v2, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->ax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->b(Lcom/snapchat/android/model/StorySnap;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mLoadSuccessful:Z
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mExternalStorageUnavailable:Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mExternalStorageUnavailable:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->o()V

    .line 136
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LoadStoryMediaCompleteEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/LoadStoryMediaCompleteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 138
    return-void

    .line 109
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mLoadSuccessful:Z

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ax()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/bq/story_blob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StorySnap;->Q()Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;->a(Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V

    .line 114
    iget-wide v2, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStartMillis:J

    iget-object v1, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;->a(JLjava/lang/String;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mShouldLogFirstStory:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "FIRST_STORY_DOWNLOAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "num_executing_story_requests"

    iget-object v2, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mNumExecutingLoadStorySnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStartMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->q()V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->o()V

    .line 129
    iget-boolean v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mToastOnNoConnection:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0171

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStorySnap:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->p()V

    .line 81
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mStartMillis:J

    .line 83
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->mReachability:Ljava/lang/String;

    .line 84
    return-void
.end method
