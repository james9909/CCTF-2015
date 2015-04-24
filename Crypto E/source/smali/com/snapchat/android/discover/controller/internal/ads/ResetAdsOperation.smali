.class public Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final e:Lcom/snapchat/android/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/Predicate",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/Predicate;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/util/Predicate",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;-><init>(Lcom/snapchat/android/util/Predicate;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/Predicate;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V
    .locals 1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/util/Predicate",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;",
            "Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "ResetAdsOperation"

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->b:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation$1;-><init>(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    .line 32
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 33
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->e:Lcom/snapchat/android/util/Predicate;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)Lcom/snapchat/android/util/Predicate;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->e:Lcom/snapchat/android/util/Predicate;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const-string v0, "ResetAdsOperation"

    const-string v1, "Resetting state of failed ads using %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->e:Lcom/snapchat/android/util/Predicate;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->c:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    new-array v1, v5, [Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    iget-object v2, p0, Lcom/snapchat/android/discover/controller/internal/ads/ResetAdsOperation;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;)V

    .line 43
    return-void
.end method
