.class public Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ads/AdTransformListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/TimerTask;

.field private final b:Lcom/snapchat/android/ads/AdManager;

.field private final c:Ljava/util/Timer;

.field private final d:Lcom/snapchat/android/discover/model/DSnapPage;

.field private final e:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;

.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/ads/AdManager;Ljava/util/Timer;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->f:Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$1;-><init>(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a:Ljava/util/TimerTask;

    .line 51
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->b:Lcom/snapchat/android/ads/AdManager;

    .line 52
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->c:Ljava/util/Timer;

    .line 53
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 54
    iput-object p4, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->e:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 46
    invoke-static {}, Lcom/snapchat/android/ads/AdManager;->a()Lcom/snapchat/android/ads/AdManager;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;-><init>(Lcom/snapchat/android/ads/AdManager;Ljava/util/Timer;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/ads/AdTransformResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->e:Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-interface {v0, v1, p1}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest$Callback;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/ads/AdTransformResponse;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->g:Z

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;Lcom/snapchat/android/ads/AdTransformResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a(Lcom/snapchat/android/ads/AdTransformResponse;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->g:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b(I)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(I)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b()Lcom/snapchat/android/ads/DiscoverAdPlacement;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->b:Lcom/snapchat/android/ads/AdManager;

    invoke-virtual {v1, v0, p0}, Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 71
    return-void
.end method

.method public a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformResponse;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 77
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->g:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "DSnapAdRequest"

    const-string v2, "DISCOVER-MEDIA: Skipping transform handling from resolving ad for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->d:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    monitor-exit v1

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/controller/internal/ads/DSnapAdRequest;->a(Lcom/snapchat/android/ads/AdTransformResponse;)V

    .line 84
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
