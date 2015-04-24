.class public Lcom/snapchat/android/analytics/MediaViewAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MEDIA_VIEW_INTERVAL_EVENT:Ljava/lang/String; = "MEDIA_VIEW_INTERVAL"

.field private static sInstance:Lcom/snapchat/android/analytics/MediaViewAnalytics;


# instance fields
.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/analytics/MediaViewAnalytics;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/snapchat/android/analytics/MediaViewAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->sInstance:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/snapchat/android/analytics/MediaViewAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->sInstance:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    .line 24
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->sInstance:Lcom/snapchat/android/analytics/MediaViewAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p3}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Z)V

    .line 74
    invoke-direct {p0, p2}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->e(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->g(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->f(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p2}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->e(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->c()V

    .line 82
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "context"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 94
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "current_action"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 98
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "last_action"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 102
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const-string v0, "tap_to_load"

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Z)V

    .line 59
    const-string v0, "kicked_out"

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->g(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0, v4}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Z)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/analytics/MediaViewAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "last_action"

    const-string v3, "end_view_media"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "feed"

    const-string v1, "pull_to_refresh"

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    const-string v0, "move_to_page"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const-string v0, "view_media"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const-string v0, "exit_page"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
