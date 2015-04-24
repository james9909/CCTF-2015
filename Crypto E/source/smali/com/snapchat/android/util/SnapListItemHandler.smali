.class public Lcom/snapchat/android/util/SnapListItemHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;,
        Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;,
        Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;,
        Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;,
        Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;
    }
.end annotation


# static fields
.field private static g:Lcom/snapchat/android/util/SnapListItemHandler;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Lcom/snapchat/android/ui/SnapView;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private final h:Landroid/content/SharedPreferences;

.field private i:I

.field private j:I

.field private k:Z

.field private final l:Lcom/snapchat/android/chat/SendingMailman;

.field private final m:Lcom/snapchat/android/chat/FeedIconManager;

.field private n:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private o:Lcom/snapchat/android/analytics/MediaViewAnalytics;

.field private p:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private q:Z

.field private r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

.field private s:Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;

.field private t:Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;

.field private u:Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;

.field private v:Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lcom/snapchat/android/analytics/MediaViewAnalytics;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    .line 309
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    .line 92
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 94
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->l:Lcom/snapchat/android/chat/SendingMailman;

    .line 95
    iput-object p2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->m:Lcom/snapchat/android/chat/FeedIconManager;

    .line 96
    iput-object p3, p0, Lcom/snapchat/android/util/SnapListItemHandler;->n:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 97
    iput-object p4, p0, Lcom/snapchat/android/util/SnapListItemHandler;->o:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    .line 98
    iput-object p5, p0, Lcom/snapchat/android/util/SnapListItemHandler;->p:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 99
    iput-object p6, p0, Lcom/snapchat/android/util/SnapListItemHandler;->h:Landroid/content/SharedPreferences;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->h:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->D:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->h:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->E:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->j:I

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->h:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->F:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->a:Z

    .line 105
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->k:Z

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->b:Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->n:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/util/SnapListItemHandler;
    .locals 8

    .prologue
    .line 110
    const-class v7, Lcom/snapchat/android/util/SnapListItemHandler;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/SnapListItemHandler;->g:Lcom/snapchat/android/util/SnapListItemHandler;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a()Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/SnapListItemHandler;-><init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lcom/snapchat/android/analytics/MediaViewAnalytics;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/snapchat/android/util/SnapListItemHandler;->g:Lcom/snapchat/android/util/SnapListItemHandler;

    .line 116
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/SnapListItemHandler;->g:Lcom/snapchat/android/util/SnapListItemHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap;->au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;

    check-cast p2, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;-><init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->t:Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->t:Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;

    const-wide/16 v2, 0xbe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    .line 227
    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/model/BroadcastSnap;)V
    .locals 4
    .parameter

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/snapchat/android/model/BroadcastSnap;->f()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v1, Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;-><init>(Lcom/snapchat/android/util/SnapListItemHandler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->v:Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->v:Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;

    const-wide/16 v2, 0xbe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 239
    instance-of v0, p1, Lcom/snapchat/android/model/BroadcastSnap;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/BroadcastSnap;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    const-string v0, "SnapListItemHandler"

    const-string v1, "Snap is loaded"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;-><init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    iput-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->s:Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;

    .line 245
    new-instance v0, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;-><init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;)V

    iput-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->s:Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;

    const-wide/16 v2, 0xbe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    const-wide/16 v2, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const-string v0, "SnapListItemHandler"

    const-string v1, "Snap is not loaded. Calling LoadSnapMediaTask"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->o:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    const-string v1, "feed"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/snapchat/android/api/LoadSnapMediaTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api/LoadSnapMediaTask;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/LoadSnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V

    .line 158
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StorySnap;Lcom/snapchat/android/model/StoryCollection;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/StorySnap;ZLcom/snapchat/android/model/User;)V

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/StorySnap;Lcom/snapchat/android/model/StoryCollection;)Z

    move-result v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/StoryCollection;->b(Z)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v1, p1, p2, p4, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;ZZ)V

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/StorySnap;Lcom/snapchat/android/model/StoryCollection;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/StorySnap;Lcom/snapchat/android/model/StoryCollection;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/SnapListItemHandler;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/analytics/MediaViewAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->o:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 120
    const-class v0, Lcom/snapchat/android/util/SnapListItemHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/util/SnapListItemHandler;->g:Lcom/snapchat/android/util/SnapListItemHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v0

    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/ui/SnapView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->n:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    .line 141
    new-instance v0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;-><init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/fragments/stories/StoriesListItem;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->u:Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->u:Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;

    const-wide/16 v2, 0xbe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->n:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->CHAT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    .line 204
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    invoke-direct {p0, p3, p1, v2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Landroid/content/Context;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_2

    .line 212
    check-cast p1, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-direct {p0, p1, v2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    goto :goto_0

    .line 213
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/SentSnap;

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->l:Lcom/snapchat/android/chat/SendingMailman;

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/SentSnap;)V

    .line 216
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/RetryFailedSnapEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/RetryFailedSnapEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->n:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    .line 182
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->g()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    .line 183
    if-nez v0, :cond_4

    .line 184
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->q()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0, p2, v0, p1}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Landroid/content/Context;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 189
    if-nez v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->m:Lcom/snapchat/android/chat/FeedIconManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 191
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 193
    :cond_3
    instance-of v1, v0, Lcom/snapchat/android/model/BroadcastSnap;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/BroadcastSnap;)V

    goto :goto_0

    .line 199
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SnapView;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    .line 126
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->a()V

    .line 129
    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;FFI)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    .line 351
    :cond_1
    :goto_1
    :pswitch_1
    return v0

    .line 314
    :pswitch_2
    iget-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    if-eqz v2, :cond_3

    .line 315
    iput-boolean v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    .line 316
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/HideSnapMessageEvent;

    invoke-direct {v3}, Lcom/snapchat/android/util/eventbus/HideSnapMessageEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 319
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;

    invoke-direct {v3, v1}, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 320
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ClosePtrEvent;

    invoke-direct {v2}, Lcom/snapchat/android/util/eventbus/ClosePtrEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 321
    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapView;->d()V

    .line 322
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->f()V

    goto :goto_1

    .line 326
    :cond_3
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->e()V

    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    if-nez v2, :cond_1

    .line 334
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, p4

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, p4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 337
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->e()V

    goto :goto_0

    .line 342
    :pswitch_4
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->d()V

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/snapchat/android/model/StorySnap;Lcom/snapchat/android/model/StoryCollection;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->a:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->j:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    .line 291
    :cond_3
    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->m()Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 294
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->C()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->w()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->M()D

    move-result-wide v4

    const-wide/high16 v6, 0x4014

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_5

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v3

    if-nez v3, :cond_5

    instance-of v3, p2, Lcom/snapchat/android/model/SponsoredStoryCollection;

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 292
    goto :goto_1

    :cond_5
    move v1, v2

    .line 294
    goto :goto_2
.end method

.method public b(Landroid/view/MotionEvent;FFI)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 356
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->d()V

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 362
    iput-boolean v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    .line 363
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->g()V

    .line 365
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->f()V

    .line 366
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/HideSnapStoryEvent;

    invoke-direct {v2}, Lcom/snapchat/android/util/eventbus/HideSnapStoryEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    if-eqz v2, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->e()V

    .line 373
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, p4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, p4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 376
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->e()V

    .line 378
    :cond_5
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapView;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    if-nez v2, :cond_0

    .line 387
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 391
    goto :goto_0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->a:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->e()V

    .line 162
    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->k:Z

    .line 166
    return-void
.end method

.method public e()V
    .locals 3
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->s:Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->t:Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->u:Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->v:Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler;->r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->r:Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/ReceivedSnap;->d(Z)V

    .line 266
    invoke-static {v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->c(Z)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->c()V

    .line 269
    iput-boolean v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->f:Z

    .line 270
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->b:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 275
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->D:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->E:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/util/SnapListItemHandler;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->k:Z

    .line 280
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapListItemHandler;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->b:Z

    .line 282
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->d:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->d()V

    .line 303
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->q:Z

    return v0
.end method

.method public onTimerFinishEvent(Lcom/snapchat/android/util/eventbus/TimerFinishEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/TimerFinishEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->j:I

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapListItemHandler;->k:Z

    .line 176
    :cond_0
    return-void
.end method
