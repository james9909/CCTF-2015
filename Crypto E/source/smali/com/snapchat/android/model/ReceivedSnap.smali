.class public Lcom/snapchat/android/model/ReceivedSnap;
.super Lcom/snapchat/android/model/Snap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/ReceivedSnap$3;
    }
.end annotation


# static fields
.field public static final ALLOWED_TIME_TO_REPLAY:I = 0x1388

.field static final BIRTHDAY_PRIORITY_TIMESTAMP:J = 0x0L

.field static final SECOND_MAX_VIDEO_DURATION:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ReceivedSnap"


# instance fields
.field private transient mBitmapFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mCanonicalDisplayTime:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field protected mCaptionOrientation:J

.field protected mCaptionPosition:D

.field protected mCaptionText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caption_text_display"
    .end annotation
.end field

.field protected mClock:Lcom/snapchat/android/util/system/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private transient mDidFutureBitmapStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mFilterId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_id"
    .end annotation
.end field

.field protected mIsBeingViewed:Z

.field protected mIsLoading:Z

.field protected mIsScreenshotted:Z

.field protected mIsSelectedForReplay:Z

.field protected mIsTimerRunning:Z

.field protected mMediaIv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_iv"
    .end annotation
.end field

.field protected mMediaKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_key"
    .end annotation
.end field

.field protected mReceivedSnapLoadingContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

.field protected mReplaySelectedTime:J

.field private mSender:Ljava/lang/String;

.field private mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field protected mTimeLeft:D

.field protected mTimeViewed:J

.field protected mUpdatedOnServer:Z

.field protected mViewedTimestamp:J

.field protected mWasOpened:Z

.field protected mZipped:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zipped"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/snapchat/android/model/Snap;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mDidFutureBitmapStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 99
    iput-boolean v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsBeingViewed:Z

    .line 120
    iput-boolean v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    .line 121
    iput-boolean v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 122
    iput-boolean v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsScreenshotted:Z

    .line 123
    iput-boolean v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsSelectedForReplay:Z

    .line 124
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReplaySelectedTime:J

    .line 127
    sget-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->UNINITIALIZED:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReceivedSnapLoadingContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 133
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-object/from16 v20, p20

    invoke-direct/range {v0 .. v21}, Lcom/snapchat/android/model/ReceivedSnap;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;)V

    .line 142
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/Snap;-><init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 58
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mDidFutureBitmapStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsBeingViewed:Z

    .line 120
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsScreenshotted:Z

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsSelectedForReplay:Z

    .line 124
    const-wide/high16 v2, -0x8000

    iput-wide v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReplaySelectedTime:J

    .line 127
    sget-object v2, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->UNINITIALIZED:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    iput-object v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReceivedSnapLoadingContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 150
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mSender:Ljava/lang/String;

    .line 152
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mZipped:Z

    .line 153
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCanonicalDisplayTime:D

    .line 154
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeLeft:D

    .line 155
    iput-wide p4, p0, Lcom/snapchat/android/model/ReceivedSnap;->mSentTimestamp:J

    .line 156
    iput-wide p6, p0, Lcom/snapchat/android/model/ReceivedSnap;->mViewedTimestamp:J

    .line 157
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsScreenshotted:Z

    .line 159
    sget-object v2, Lcom/snapchat/android/model/ReceivedSnap$3;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual/range {p10 .. p10}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 173
    :goto_0
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionText:Ljava/lang/String;

    .line 174
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionOrientation:J

    .line 175
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionPosition:D

    .line 176
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mFilterId:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mSnapViewEventAnalytics:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 178
    return-void

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->q()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->o()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A()Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsScreenshotted:Z

    .line 339
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 340
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->C()V

    .line 341
    return-void
.end method

.method public C()V
    .locals 2

    .prologue
    .line 344
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsBeingViewed:Z

    return v0
.end method

.method public E()J
    .locals 2

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeViewed:J

    return-wide v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsScreenshotted:Z

    return v0
.end method

.method public I()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    .line 387
    return-void
.end method

.method public J()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    .line 391
    return-void
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    return v0
.end method

.method public L()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mViewedTimestamp:J

    return-wide v0
.end method

.method public M()D
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCanonicalDisplayTime:D

    return-wide v0
.end method

.method public N()D
    .locals 2

    .prologue
    .line 410
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeLeft:D

    return-wide v0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReceivedSnapLoadingContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    return-object v0
.end method

.method public declared-synchronized R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;
    .locals 3

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaIv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 500
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 501
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaKey:Ljava/lang/String;

    .line 502
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :goto_0
    monitor-exit p0

    return-object v0

    .line 504
    :cond_1
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected T()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 526
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 527
    const-string v4, "ReceivedSnap"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! encrypted video is null?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    if-nez v3, :cond_1

    move-object v0, v2

    .line 546
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 527
    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([B)[B

    move-result-object v0

    .line 534
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 537
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mZipped:Z

    if-eqz v2, :cond_3

    .line 538
    iget-object v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/model/ReceivedSnap;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_2
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 540
    :cond_3
    :try_start_1
    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 542
    :catch_0
    move-exception v0

    .line 543
    const-string v0, "ReceivedSnap"

    const-string v2, "External storage unavailable."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public U()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 588
    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 589
    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 588
    goto :goto_0

    :cond_2
    move v0, v1

    .line 589
    goto :goto_1
.end method

.method public V()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public X()Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public Z()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    return v0
.end method

.method protected a(I)I
    .locals 1
    .parameter

    .prologue
    .line 755
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 672
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 673
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 674
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 685
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->L()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 676
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->f()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    .line 677
    if-eqz v1, :cond_2

    .line 678
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 679
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 682
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->G()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 430
    const-string v0, "ReceivedSnap"

    const-string v2, "getImageBitmap - begin - %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v0

    if-nez v0, :cond_2

    .line 435
    const-string v0, "ReceivedSnap"

    const-string v2, "getImageBitmap - getBitmapFromFutureTask - %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Ljava/util/concurrent/FutureTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    iput-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    .line 438
    const-string v1, "ReceivedSnap"

    const-string v2, "getImageBitmap - There was a future task for %s, it returned %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-static {v5}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->c(Z)V

    .line 443
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 444
    const-string v0, "ReceivedSnap"

    const-string v1, "getImageBitmap - getImageBitmapFromCache - %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/ReceivedSnap;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    :cond_1
    const-string v1, "ReceivedSnap"

    const-string v2, "getImageBitmap - end - %s - %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->L()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_0

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->L()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v4, v8, v4

    .line 650
    new-instance v0, Lcom/snapchat/android/model/ReceivedSnap$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/ReceivedSnap$2;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ar()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 659
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v3

    if-nez v3, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->y()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->A()Z

    move-result v3

    if-nez v3, :cond_2

    .line 661
    new-instance v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->aj()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    .line 662
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ag()Z

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/model/ReceivedSnap;->b(ZZ)I

    move-result v0

    iput v0, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->endResource:I

    .line 663
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->z()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->frivolousAnimationTime:J

    move-object v0, v1

    .line 667
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 658
    goto :goto_0

    .line 667
    :cond_2
    new-instance v3, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ag()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/model/ReceivedSnap;->a(ZZ)I

    move-result v0

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    const v0, 0x7f0c016e

    .line 716
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->G()Z

    move-result v1

    if-nez v1, :cond_3

    .line 717
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 719
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    const v0, 0x7f0c0115

    goto :goto_0

    .line 722
    :cond_2
    const v0, 0x7f0c020c

    goto :goto_0

    .line 724
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v1

    if-nez v1, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 727
    const v0, 0x7f0c016d

    goto :goto_0

    .line 729
    :cond_4
    const v0, 0x7f0c00de

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 458
    new-instance v0, Lcom/snapchat/android/TimberTimingLogger;

    const-string v1, "ReceivedSnap"

    const-string v2, "loadImageBitmapAsync"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/TimberTimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/snapchat/android/model/ReceivedSnap$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/snapchat/android/model/ReceivedSnap$1;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/TimberTimingLogger;Landroid/content/Context;Lcom/snapchat/android/util/cache/Cache$OnCompleted;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReceivedSnapLoadingContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 495
    return-void
.end method

.method public declared-synchronized a(Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)V
    .locals 1
    .parameter

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaKey:Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mMediaIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/String;[B)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 554
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 555
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 560
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 561
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 564
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 565
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 575
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string v1, "ReceivedSnap"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    :goto_2
    return-void

    .line 567
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 568
    const-string v3, "overlay"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/ReceivedSnap;->a([B)V

    goto :goto_0

    .line 570
    :cond_2
    const-string v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, p1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 575
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mUpdatedOnServer:Z

    .line 190
    return-void
.end method

.method protected a([B)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 584
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    .line 585
    return-void
.end method

.method public aa()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method public ac()J
    .locals 2

    .prologue
    .line 624
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionOrientation:J

    return-wide v0
.end method

.method public ad()D
    .locals 2

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCaptionPosition:D

    return-wide v0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 633
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mSentTimestamp:J

    return-wide v0
.end method

.method public af()J
    .locals 2

    .prologue
    .line 637
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimestamp:J

    return-wide v0
.end method

.method public ag()Z
    .locals 6

    .prologue
    .line 641
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->o()J

    move-result-wide v0

    .line 642
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ah()V
    .locals 1

    .prologue
    .line 735
    invoke-static {p0}, Lcom/snapchat/android/util/bitmap/BitmapUtils;->a(Lcom/snapchat/android/model/ReceivedSnap;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    .line 736
    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    .line 737
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 738
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/ReceivedSnap;->d(Z)V

    .line 739
    return-void
.end method

.method public ai()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mDidFutureBitmapStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/ReceivedSnap;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 691
    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    const-wide/16 v0, 0x0

    .line 696
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/ReceivedSnap;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 453
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 454
    return-object v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/ReceivedSnap;->a(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mCanonicalDisplayTime:D

    .line 407
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mZipped:Z

    .line 198
    return-void
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/ReceivedSnap;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 701
    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->L()J

    move-result-wide v0

    .line 705
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/ReceivedSnap;->a(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeLeft:D

    .line 415
    return-void
.end method

.method public c(Z)V
    .locals 4
    .parameter

    .prologue
    .line 358
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsBeingViewed:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClock:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    neg-long v0, v0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeViewed:J

    .line 364
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsBeingViewed:Z

    .line 365
    return-void

    .line 361
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsBeingViewed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 362
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeViewed:J

    iget-object v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClock:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v2}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeViewed:J

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 2
    .parameter

    .prologue
    .line 422
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeLeft:D

    .line 423
    return-void
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mDidFutureBitmapStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 747
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mUpdatedOnServer:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mZipped:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 223
    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 228
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "ReceivedSnap"

    const-string v1, "Call to markUnviewedAndUnloaded on an already viewed snap"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 238
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->LOADING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 239
    return-void
.end method

.method public q()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 243
    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 244
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 245
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mViewedTimestamp:J

    .line 264
    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeLeft:D

    .line 266
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/ReceivedSnap;->c(Z)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 268
    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 270
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 276
    :goto_0
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/ReceivedSnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 281
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->C()V

    .line 282
    return-void

    .line 273
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0
.end method

.method public s()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public u_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mViewedTimestamp:J

    .line 249
    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsTimerRunning:Z

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mTimeLeft:D

    .line 251
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/ReceivedSnap;->c(Z)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 253
    iput-boolean v2, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsLoading:Z

    .line 257
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 258
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 259
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->C()V

    .line 260
    return-void
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsSelectedForReplay:Z

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReplaySelectedTime:J

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mWasOpened:Z

    .line 316
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->q()V

    .line 322
    :goto_0
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 323
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->o()V

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mIsSelectedForReplay:Z

    return v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/snapchat/android/model/ReceivedSnap;->mReplaySelectedTime:J

    return-wide v0
.end method
