.class public Lcom/snapchat/android/ui/SnapView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;
    }
.end annotation


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private final e:Lcom/snapchat/android/ui/snapview/SnapSkipController;

.field private final f:Landroid/view/ViewGroup;

.field private final g:Lcom/snapchat/android/ui/SnapTimerView;

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final j:Lcom/snapchat/android/rendering/RendererManager;

.field private final k:Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;

.field private l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

.field private m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

.field private final n:Lcom/snapchat/android/analytics/MediaViewAnalytics;

.field private final o:Landroid/view/ViewGroup;

.field private p:Landroid/view/View;

.field private q:Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

.field private r:Z

.field private s:Z

.field private final t:Landroid/view/LayoutInflater;

.field private final u:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snapchat/android/ui/SnapView;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/ui/snapview/SnapSkipController;

    invoke-direct {v4, p1}, Lcom/snapchat/android/ui/snapview/SnapSkipController;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a()Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v8

    new-instance v9, Lcom/snapchat/android/rendering/RendererManager;

    invoke-direct {v9, p1}, Lcom/snapchat/android/rendering/RendererManager;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;

    invoke-direct {v10}, Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/android/ui/SnapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lcom/snapchat/android/ui/snapview/SnapSkipController;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lcom/snapchat/android/analytics/MediaViewAnalytics;Ljavax/inject/Provider;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/rendering/RendererManager;Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;)V

    .line 109
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lcom/snapchat/android/ui/snapview/SnapSkipController;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lcom/snapchat/android/analytics/MediaViewAnalytics;Ljavax/inject/Provider;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/rendering/RendererManager;Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;)V
    .locals 3
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lcom/squareup/otto/Bus;",
            "Lcom/snapchat/android/ui/snapview/SnapSkipController;",
            "Lcom/snapchat/android/analytics/SnapViewEventAnalytics;",
            "Lcom/snapchat/android/analytics/MediaViewAnalytics;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;",
            "Lcom/snapchat/android/service/SnapchatServiceManager;",
            "Lcom/snapchat/android/rendering/RendererManager;",
            "Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

    .line 96
    iput-boolean v1, p0, Lcom/snapchat/android/ui/SnapView;->r:Z

    .line 97
    iput-boolean v1, p0, Lcom/snapchat/android/ui/SnapView;->s:Z

    .line 451
    new-instance v0, Lcom/snapchat/android/ui/SnapView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SnapView$1;-><init>(Lcom/snapchat/android/ui/SnapView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    .line 499
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListenerHandlerProxy;-><init>(Landroid/os/Handler;Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    .line 117
    iput-object p3, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/squareup/otto/Bus;

    .line 118
    iput-object p4, p0, Lcom/snapchat/android/ui/SnapView;->e:Lcom/snapchat/android/ui/snapview/SnapSkipController;

    .line 119
    iput-object p5, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 120
    iput-object p7, p0, Lcom/snapchat/android/ui/SnapView;->h:Ljavax/inject/Provider;

    .line 121
    iput-object p8, p0, Lcom/snapchat/android/ui/SnapView;->i:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 122
    iput-object p9, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/rendering/RendererManager;

    .line 123
    iput-object p10, p0, Lcom/snapchat/android/ui/SnapView;->k:Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;

    .line 125
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Landroid/view/LayoutInflater;

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Landroid/view/LayoutInflater;

    const v1, 0x7f040093

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    const v0, 0x7f0a031f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Landroid/view/ViewGroup;

    .line 129
    const v0, 0x7f0a0320

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->o:Landroid/view/ViewGroup;

    .line 130
    const v0, 0x7f0a0321

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapTimerView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->g:Lcom/snapchat/android/ui/SnapTimerView;

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/rendering/RendererManager;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/rendering/RendererManager;->a(Landroid/view/ViewGroup;)V

    .line 132
    iput-object p6, p0, Lcom/snapchat/android/ui/SnapView;->n:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/rendering/RendererManager;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/rendering/RendererManager;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/ui/snapview/SnapViewSession;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    return-object p1
.end method

.method private a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 411
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_2

    .line 412
    check-cast p1, Lcom/snapchat/android/model/StorySnap;

    .line 413
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->o()V

    .line 414
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->d:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 419
    :goto_0
    new-instance v0, Lcom/snapchat/android/api/LoadStorySnapMediaTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/HideSnapStoryEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/HideSnapStoryEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 433
    :cond_0
    :goto_1
    return-void

    .line 417
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_4

    .line 422
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->o()V

    .line 423
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 428
    :goto_2
    new-instance v0, Lcom/snapchat/android/api/LoadSnapMediaTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api/LoadSnapMediaTask;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/LoadSnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/HideSnapMessageEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/HideSnapMessageEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 426
    :cond_3
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 430
    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapView;Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    return-void
.end method

.method private b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 260
    check-cast p1, Lcom/snapchat/android/model/StorySnap;

    .line 262
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->c(Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aJ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->d()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapView;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapView;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/SnapView;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapView;->f()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->u:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSession;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSession;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a()V

    .line 331
    :cond_0
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 385
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 386
    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b()Lcom/snapchat/android/model/ChronologicalSnapProvider;

    move-result-object v2

    .line 387
    invoke-interface {v2}, Lcom/snapchat/android/model/ChronologicalSnapProvider;->f()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    .line 389
    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SnapView;->a(Z)V

    .line 405
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e()Z

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/snapchat/android/ui/SnapView;->b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v1

    if-nez v1, :cond_3

    .line 396
    instance-of v1, v2, Lcom/snapchat/android/model/StoryCollection;

    if-eqz v1, :cond_2

    .line 397
    new-instance v1, Lcom/snapchat/android/api/LoadStorySnapMediaTask;

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    :goto_1
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SnapView;->a(Z)V

    goto :goto_0

    .line 399
    :cond_2
    new-instance v1, Lcom/snapchat/android/api/LoadSnapMediaTask;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api/LoadSnapMediaTask;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/LoadSnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SnapView;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->t:Landroid/view/LayoutInflater;

    const v1, 0x7f04008e

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->p:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->p:Landroid/view/View;

    const v1, 0x7f0a030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->q:Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;

    .line 141
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 187
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;ZZ)V

    .line 188
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 162
    const-string v0, "SnapView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare snap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Z

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->u:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;)V

    .line 166
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 203
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 205
    instance-of v0, p2, Lcom/snapchat/android/model/StoryCollection;

    .line 206
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->e:Lcom/snapchat/android/ui/snapview/SnapSkipController;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/snapview/SnapSkipController;->a(Z)V

    .line 208
    iput-boolean p4, p0, Lcom/snapchat/android/ui/SnapView;->r:Z

    .line 209
    iput-boolean v6, p0, Lcom/snapchat/android/ui/SnapView;->s:Z

    .line 211
    invoke-virtual {p0, v6}, Lcom/snapchat/android/ui/SnapView;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 215
    const-string v1, "SnapView"

    const-string v2, "Viewing previously viewed snap"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    const-string v1, "SnapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session active? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const-string v1, "SnapView"

    const-string v2, "Session already has snap %s is being viewed / is viewed? %s / %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->D()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h()V

    .line 221
    iput-object v7, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 226
    const-string v1, "SnapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session preloaded for snap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 228
    iput-object v7, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 236
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-nez v1, :cond_3

    .line 237
    const-string v1, "SnapView"

    const-string v2, "There was no session preloaded"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapView;->c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 239
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView;->u:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;)V

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g()V

    .line 244
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/android/ui/SnapView;->b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;ZZ)V

    .line 247
    invoke-static {p0, v6}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 248
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 251
    if-nez v0, :cond_4

    .line 252
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_4
    return-void

    .line 230
    :cond_5
    const-string v1, "SnapView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session preloaded for different snap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h()V

    .line 232
    iput-object v7, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 359
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b()Lcom/snapchat/android/model/ChronologicalSnapProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 361
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapView;->d()V

    .line 379
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b()Lcom/snapchat/android/model/ChronologicalSnapProvider;

    move-result-object v0

    .line 366
    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/model/ChronologicalSnapProvider;->a(ILcom/snapchat/android/model/ReceivedSnap;Z)I

    .line 368
    invoke-interface {v0}, Lcom/snapchat/android/model/ChronologicalSnapProvider;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->b(Z)V

    .line 370
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapView;->g()V

    goto :goto_0

    .line 372
    :cond_2
    instance-of v0, v0, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_3

    .line 373
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/RecentStoryCollectionCompletedViewingEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/RecentStoryCollectionCompletedViewingEvent;-><init>(Lcom/snapchat/android/model/StorySnap;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 377
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Z)V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 6
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b()Lcom/snapchat/android/model/ChronologicalSnapProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b()Lcom/snapchat/android/model/ChronologicalSnapProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/model/ChronologicalSnapProvider;->i()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->d:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Z)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->n:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Z)V

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->e:Lcom/snapchat/android/ui/snapview/SnapSkipController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapSkipController;->c()V

    .line 301
    iput-boolean v2, p0, Lcom/snapchat/android/ui/SnapView;->s:Z

    .line 303
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SnapView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->g:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/SnapTimerView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/rendering/RendererManager;

    invoke-virtual {v0}, Lcom/snapchat/android/rendering/RendererManager;->a()V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h()V

    .line 310
    iput-object v5, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 313
    invoke-static {p0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 314
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->i:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;)I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h()V

    .line 319
    iput-object v5, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 321
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 295
    goto :goto_0

    :cond_3
    move v0, v2

    .line 297
    goto :goto_1
.end method

.method public b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;ZZ)V

    .line 194
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 150
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)Lcom/snapchat/android/ui/snapview/SnapViewSession;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 440
    instance-of v0, p2, Lcom/snapchat/android/model/StoryCollection;

    .line 441
    instance-of v1, p2, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 444
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v6, 0x1

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->k:Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView;->f:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapView;->g:Lcom/snapchat/android/ui/SnapTimerView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView;->j:Lcom/snapchat/android/rendering/RendererManager;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/rendering/RendererManager;->a(Z)Lcom/snapchat/android/rendering/SnapMediaRenderer;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/snapchat/android/ui/SnapView$SnapViewSessionFactory;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Landroid/view/ViewGroup;ZLcom/snapchat/android/ui/SnapTimerView;ZLcom/snapchat/android/rendering/SnapMediaRenderer;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 177
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "SnapView"

    const-string v1, "Abort prepare of next snap."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapView;->m:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 182
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapView;->a(Z)V

    .line 281
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->e:Lcom/snapchat/android/ui/snapview/SnapSkipController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapSkipController;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->e:Lcom/snapchat/android/ui/snapview/SnapSkipController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapSkipController;->b()V

    .line 349
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView;->l:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->i()V

    .line 351
    :cond_0
    return-void
.end method
