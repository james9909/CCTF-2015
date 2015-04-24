.class public Lcom/snapchat/android/analytics/HereAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;,
        Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;
    }
.end annotation


# static fields
.field private static final BUCKET_CFG_HIGH_PRECISION_COUNT:I = 0xa

.field private static final BUCKET_CFG_HIGH_PRECISION_SIZE:I = 0x3e8

.field private static final BUCKET_CFG_LOW_PRECISION_RANGE_END:I = 0x14

.field private static final BUCKET_CFG_REPORTING_RANGE_END:I = 0x1e

.field private static final PUBLISH_LOCKED:Ljava/lang/String; = "HERE_PUBLISH_LOCKED"

.field private static final PUBLISH_LOCKED_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final PUBLISH_LOCKED_POS_KEY:Ljava/lang/String; = "position"

.field private static final PUBLISH_LOCKED_TOP:Ljava/lang/String; = "top"

.field protected static final START_TIME_UNINITIALIZED:J = -0x1L

.field private static final TIME_TO_EVENT_PARAM_NAME:Ljava/lang/String; = "timeToEvent"

.field private static final TIME_TO_FIRST_PUBLISH_PARAM_NAME:Ljava/lang/String; = "timeToFirstEvent"


# instance fields
.field private mAdlConnectedToScope:Z

.field private mHereAvailableTimestamp:J

.field private mIsVideoBidirectional:Z

.field private mIsVideoIncoming:Z

.field private mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

.field private mPreviousSetupEventTimestamp:J

.field private mStartOfVideoStream:J

.field private mTimeStartCanStreamVideo:J

.field private mVideoBidirectionalStart:J

.field private mVideoIncomingStart:J

.field private mVideoOutgoingStart:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 74
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    .line 82
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 84
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    .line 85
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :goto_0
    if-eqz v0, :cond_1

    .line 144
    :goto_1
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTING:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 133
    iget-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    move-wide v0, v2

    .line 139
    :goto_2
    iget-boolean v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mAdlConnectedToScope:Z

    invoke-virtual {p0, v0, v1, v4}, Lcom/snapchat/android/analytics/HereAnalytics;->a(JZ)V

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoOutgoingStart:J

    .line 141
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    .line 143
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    sub-long/2addr v0, v4

    goto :goto_2
.end method

.method private b(J)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/16 v6, 0x1e

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 342
    const/16 v0, 0x3e8

    const/16 v1, 0xb

    invoke-static {p1, p2, v0, v1}, Lcom/snapchat/android/util/NumberFormatUtils;->a(JII)Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 346
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 347
    if-ge v0, v5, :cond_1

    .line 348
    const-string v0, "%d - %d s"

    new-array v1, v2, [Ljava/lang/Object;

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    if-ge v0, v6, :cond_2

    .line 352
    const-string v0, "%d - %d s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_2
    const-string v0, "%d+ s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v3, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 207
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 208
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoBidirectional:Z

    if-ne v0, v1, :cond_2

    .line 219
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0

    :cond_1
    move v1, v2

    .line 207
    goto :goto_1

    .line 209
    :cond_2
    iput-boolean v1, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoBidirectional:Z

    .line 211
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoBidirectional:Z

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/HereAnalytics;->g()V

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoBidirectionalStart:J

    goto :goto_2

    .line 216
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoBidirectionalStart:J

    sub-long/2addr v0, v2

    .line 217
    invoke-virtual {p0, v0, v1, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->e(JLjava/lang/String;)V

    goto :goto_2
.end method

.method private d(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 152
    :goto_0
    if-nez v0, :cond_1

    .line 168
    :goto_1
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 156
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v1, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoOutgoingStart:J

    sub-long/2addr v2, v4

    .line 159
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->b(JLjava/lang/String;)V

    .line 161
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTING:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-ne v0, v1, :cond_2

    .line 162
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/snapchat/android/analytics/HereAnalytics;->c(JLjava/lang/String;)V

    .line 167
    :goto_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/HereAnalytics;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/here/DisconnectReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/snapchat/android/analytics/HereAnalytics;->d(JLjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "startHoldingToStream()"

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method protected a(J)V
    .locals 3
    .parameter

    .prologue
    .line 307
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_OUTGOING_ACKED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 308
    return-void
.end method

.method protected a(JLjava/lang/String;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 283
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_INCOMING_SESSION_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 284
    return-void
.end method

.method protected a(JZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 291
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_OUTGOING_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 292
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 293
    :cond_0
    const-string v1, "is_connected_to_scope"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 294
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 234
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 238
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    if-ne p1, v1, :cond_1

    .line 239
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    .line 247
    :goto_0
    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    if-ne p1, v1, :cond_0

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "timeToFirstEvent"

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    sub-long v4, v2, v4

    invoke-direct {p0, v4, v5}, Lcom/snapchat/android/analytics/HereAnalytics;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 250
    iput-wide v6, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mHereAvailableTimestamp:J

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 254
    iput-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    .line 255
    return-void

    .line 241
    :cond_1
    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 242
    const-string v1, "timeToEvent"

    iget-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mPreviousSetupEventTimestamp:J

    sub-long v4, v2, v4

    invoke-direct {p0, v4, v5}, Lcom/snapchat/android/analytics/HereAnalytics;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->d(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 172
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    if-ne v0, p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    .line 97
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mIsVideoIncoming:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/HereAnalytics;->f()V

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoIncomingStart:J

    .line 105
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIncomingVideo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/HereAnalytics;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoIncomingStart:J

    sub-long/2addr v0, v2

    .line 102
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/analytics/HereAnalytics;->a(JLjava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mAdlConnectedToScope:Z

    .line 180
    return-void
.end method

.method protected b(JLjava/lang/String;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 300
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 301
    return-void
.end method

.method public b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->d(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 176
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 113
    iget-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 114
    :goto_0
    if-ne p1, v2, :cond_1

    .line 116
    :goto_1
    return-void

    .line 113
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 115
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_2
    iput-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    goto :goto_1
.end method

.method public c()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTING:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-ne v0, v1, :cond_0

    .line 193
    sget-object v0, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoOutgoingStart:J

    sub-long/2addr v0, v2

    .line 196
    sget-object v2, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_CONFIRMED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {p0, v2}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(J)V

    .line 199
    :cond_0
    return-void
.end method

.method protected c(JLjava/lang/String;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 314
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_CONNECTING_STATE_TERMINATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 315
    return-void
.end method

.method public c(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mAdlConnectedToScope:Z

    .line 184
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->d(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 185
    return-void
.end method

.method public c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 264
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "HERE_PUBLISH_LOCKED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "position"

    if-eqz p1, :cond_0

    const-string v0, "bottom"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 267
    return-void

    .line 264
    :cond_0
    const-string v0, "top"

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 223
    return-void
.end method

.method protected d(JLjava/lang/String;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 321
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_CONNECTED_STATE_TERMINATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 322
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 226
    iget-wide v0, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    sub-long/2addr v0, v2

    .line 228
    iput-wide v4, p0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 230
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "HERE_KEYFRAME_RECEIVED"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method protected e(JLjava/lang/String;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 329
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_SESSION_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 330
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_INCOMING_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 280
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 326
    return-void
.end method
