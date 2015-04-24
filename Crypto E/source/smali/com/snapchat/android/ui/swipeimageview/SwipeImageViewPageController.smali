.class public Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/SwipeController$OnScrollListener;


# instance fields
.field protected final a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/snapchat/android/ui/SwipeImageView;

.field private final d:Lcom/snapchat/android/location/GeofilterManager;

.field private final e:Lcom/snapchat/android/location/LocationPermissionsAccessor;

.field private final f:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/location/GeofilterManager;Lcom/snapchat/android/location/LocationPermissionsAccessor;Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    .line 84
    iput-object p3, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d:Lcom/snapchat/android/location/GeofilterManager;

    .line 85
    iput-object p4, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->e:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->d()Lcom/snapchat/android/model/WeatherData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->g:Z

    .line 87
    iput-object p5, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    .line 88
    iput-object p6, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->f:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    .line 89
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/location/GeofilterManager;->a()Lcom/snapchat/android/location/GeofilterManager;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-direct {v4}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>()V

    new-instance v5, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-direct {v5, p2, p3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;-><init>(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;->a()Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;-><init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/location/GeofilterManager;Lcom/snapchat/android/location/LocationPermissionsAccessor;Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;)V

    .line 73
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->e:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/SpeedometerFilterPage;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/SpeedometerFilterPage;-><init>(Lcom/snapchat/android/ui/smartfilters/SpeedometerView;)V

    .line 116
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->d()Lcom/snapchat/android/model/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/WeatherView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/smartfilters/WeatherView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;-><init>(Lcom/snapchat/android/ui/smartfilters/WeatherView;)V

    .line 122
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 126
    :cond_1
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/ClockFilterPage;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/ClockView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/ui/smartfilters/ClockView;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/ClockFilterPage;-><init>(Lcom/snapchat/android/ui/smartfilters/ClockView;)V

    .line 127
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->e:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v1, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;

    invoke-direct {v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 137
    :cond_2
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->f:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;-><init>(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 220
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->c:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipefilters/VideoFilterPage;-><init>(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 221
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 227
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;

    const-string v1, "Instasnap"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;-><init>(Ljava/lang/String;I)V

    .line 228
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 229
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;

    const-string v1, "Miss Etikate"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;-><init>(Ljava/lang/String;I)V

    .line 230
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 231
    new-instance v0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;

    const-string v1, "B&w"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;-><init>(Ljava/lang/String;I)V

    .line 232
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 233
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/UnfilteredPage;

    invoke-direct {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/UnfilteredPage;-><init>()V

    .line 93
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 96
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d()V

    .line 105
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a()V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 109
    :cond_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;-><init>(Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;)V

    .line 101
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 173
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b()V

    .line 177
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/UnfilteredPage;

    invoke-direct {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/UnfilteredPage;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 181
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;-><init>(Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;)V

    .line 184
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 187
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a()V

    .line 209
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 210
    return-void

    .line 191
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    if-nez p1, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->f()V

    .line 197
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d()V

    .line 200
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    if-nez v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a()V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->b()V

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->e()V

    goto :goto_1

    .line 204
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->i:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 251
    iput-boolean v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a()V

    .line 253
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->i:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->b()V

    .line 255
    iput-boolean v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->i:Z

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 258
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v1, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/ClearFilterPagesOperation;

    invoke-direct {v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/ClearFilterPagesOperation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->b(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->d()V

    .line 170
    return-void
.end method

.method public b(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    .line 247
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->c()V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->a()V

    .line 238
    return-void
.end method

.method public onGeofilterLoadedEvent(Lcom/snapchat/android/util/eventbus/GeofilterLoadedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v1, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;

    invoke-direct {v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 161
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a()V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 165
    :cond_0
    return-void
.end method

.method public onWeatherUpdatedEvent(Lcom/snapchat/android/util/eventbus/WeatherUpdatedEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 142
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->d:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->d()Lcom/snapchat/android/model/WeatherData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->g:Z

    .line 145
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;

    new-instance v1, Lcom/snapchat/android/ui/smartfilters/WeatherView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/smartfilters/WeatherView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;-><init>(Lcom/snapchat/android/ui/smartfilters/WeatherView;)V

    .line 146
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v2, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;

    new-instance v3, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;

    invoke-direct {v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/OverlayPageInitializationStrategy;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    new-instance v1, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;

    invoke-direct {v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/RefreshGeofilterPagesOperation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V

    .line 150
    iget-boolean v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->h:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a()V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 155
    :cond_0
    return-void
.end method
