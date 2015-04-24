.class public Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;,
        Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
    }
.end annotation


# static fields
.field private static final NUM_SNAPS_VIEWED_PARAM_NAME:Ljava/lang/String; = "num_snaps_viewed"

.field private static sInstance:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;


# instance fields
.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private mNextSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 49
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 45
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 178
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "BITMAP_PRELOAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "useful"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 179
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "num_snaps_viewed"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 127
    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "num_snaps_viewed"

    invoke-virtual {v0, v1, v6, v7}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "time_viewed"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 136
    :cond_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v2, "num_snaps_viewed"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 175
    :cond_2
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V
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
    .line 157
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mNextSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 158
    if-eqz v0, :cond_0

    .line 159
    const-string v1, "type"

    invoke-static {p1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 160
    const-string v1, "context"

    invoke-static {p2}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 187
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "SNAP_VIEW_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "sender"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "type"

    invoke-static {p1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 190
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 52
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_SNAP"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "context"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 55
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "FIRST_MEDIA_OPENED"

    const-string v3, "context"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/util/debug/TimeLogger;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "OURSTORY_STORY_VIEW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "poster_id"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v2

    const-string v3, "view_location"

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->e()V

    .line 105
    return-void

    .line 99
    :cond_1
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "full_view"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 182
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAP_VIEW_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 183
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/util/debug/TimeLogger;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "USERSTORY_STORY_VIEW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "poster_id"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v2

    const-string v3, "view_location"

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;J)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->e()V

    .line 115
    return-void

    .line 109
    :cond_1
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_NEXT_SNAP"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "wasSkipped"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mNextSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 152
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "BRANDSTORY_STORY_VIEW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "sponsor"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->e()V

    .line 95
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mSnapViewEventTimer:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v1, "USERSTORY_MYSTORY_VIEW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStorySnapStoryViewEvent:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->e()V

    .line 123
    return-void
.end method
