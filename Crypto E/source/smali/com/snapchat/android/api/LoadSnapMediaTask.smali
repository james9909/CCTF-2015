.class public Lcom/snapchat/android/api/LoadSnapMediaTask;
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
.field public static final DEFAULT_NUM_TO_LOAD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LoadSnapMediaTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExternalStorageUnavailable:Z

.field private mLoadSuccessful:Z

.field private final mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

.field private final mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReachability:Ljava/lang/String;

.field private final mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSnap:Lcom/snapchat/android/model/ReceivedSnap;

.field private mStartMillis:J

.field private mUser:Lcom/snapchat/android/model/User;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/api/LoadSnapMediaTask;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    invoke-static {}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a()Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    .line 48
    iput-boolean v1, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mLoadSuccessful:Z

    .line 49
    iput-boolean v1, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mExternalStorageUnavailable:Z

    .line 67
    iput-object p1, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    .line 68
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    iput-object p2, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mUser:Lcom/snapchat/android/model/User;

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 91
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 94
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/snapchat/android/api/RequestAuthorization;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    instance-of v2, v2, Lcom/snapchat/android/model/BroadcastSnap;

    if-eqz v2, :cond_1

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    check-cast v0, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/BroadcastSnap;->e()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    iget-object v2, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->b(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mLoadSuccessful:Z

    .line 117
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/ph/blob"

    invoke-static {v3}, Lcom/snapchat/android/util/debug/DevUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ph/blob?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&req_token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mMediaDownloader:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    iget-object v2, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mLoadSuccessful:Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :goto_2
    :try_start_2
    const-string v1, "LoadSnapMediaTask"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mLoadSuccessful:Z
    :try_end_2
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mExternalStorageUnavailable:Z

    goto :goto_1

    .line 110
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    iget-boolean v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mExternalStorageUnavailable:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c00a4

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->o()V

    .line 151
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->b:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;-><init>(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 152
    return-void

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mLoadSuccessful:Z

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "FIRST_SNAP_DOWNLOAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "num_executing_snap_requests"

    iget-object v2, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mStartMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->q()V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mUser:Lcom/snapchat/android/model/User;

    new-array v1, v8, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->v:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v6

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->i:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mUser:Lcom/snapchat/android/model/User;

    new-array v1, v8, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->v:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v6

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c01f2

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->o()V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/LoadSnapMediaTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/LoadSnapMediaTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mSnap:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->p()V

    .line 76
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->a:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;-><init>(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mStartMillis:J

    .line 78
    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadSnapMediaTask;->mReachability:Ljava/lang/String;

    .line 79
    return-void
.end method
