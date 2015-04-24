.class public Lcom/snapchat/android/camera/CameraFragment;
.super Lcom/snapchat/android/camera/BaseCameraFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/snapchat/android/camera/TakePhotoCallback;
.implements Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;
.implements Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;
.implements Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;
.implements Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;
.implements Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;
.implements Lcom/snapchat/android/scan/SnapScanCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/CameraFragment$7;
    }
.end annotation


# instance fields
.field private B:Lcom/snapchat/android/camera/controller/FlashController;

.field private C:Z

.field private final D:Landroid/os/Handler;

.field private final E:Lcom/squareup/otto/Bus;

.field private final F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final G:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

.field private final H:Lcom/snapchat/android/location/GeofilterManager;

.field private I:Lcom/snapchat/android/scan/SnapScan;

.field private J:Landroid/widget/ImageView;

.field protected final a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

.field protected l:Lcom/snapchat/android/camera/controller/TakePhotoController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected m:Lcom/snapchat/android/camera/controller/VideoRecordingController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected n:Lcom/snapchat/android/camera/model/ZoomModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected o:Lcom/snapchat/android/camera/model/FlashModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected p:Lcom/snapchat/android/camera/model/VideoRecordingModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected q:Lcom/snapchat/android/analytics/LifecycleAnalytics;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected r:Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected s:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private t:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

.field private u:[B

.field private v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 190
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a()Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/location/GeofilterManager;->a()Lcom/snapchat/android/location/GeofilterManager;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    invoke-direct {v6}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/camera/CameraFragment;-><init>(Lcom/squareup/otto/Bus;Landroid/os/Handler;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/SnapCaptureAnalytics;Lcom/snapchat/android/location/GeofilterManager;Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;)V

    .line 196
    return-void
.end method

.method constructor <init>(Lcom/squareup/otto/Bus;Landroid/os/Handler;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/SnapCaptureAnalytics;Lcom/snapchat/android/location/GeofilterManager;Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Z

    .line 205
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 206
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    .line 207
    iput-object p2, p0, Lcom/snapchat/android/camera/CameraFragment;->D:Landroid/os/Handler;

    .line 208
    iput-object p3, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 209
    iput-object p4, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    .line 210
    iput-object p5, p0, Lcom/snapchat/android/camera/CameraFragment;->H:Lcom/snapchat/android/location/GeofilterManager;

    .line 211
    iput-object p6, p0, Lcom/snapchat/android/camera/CameraFragment;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    .line 212
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 372
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v1

    .line 373
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 374
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ab:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 376
    if-ne v0, v3, :cond_0

    .line 378
    new-instance v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v0}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    .line 379
    iget v0, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 381
    :cond_0
    sub-int v1, v0, v1

    .line 382
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 383
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 384
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 616
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Z)V

    .line 618
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 619
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->b(Z)V

    .line 620
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    goto :goto_0
.end method

.method private C()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 624
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Z)V

    .line 626
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 627
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->b(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    goto :goto_0
.end method

.method private D()Z
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private E()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1076
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1077
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return v0

    .line 1078
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 1079
    if-eqz v2, :cond_0

    const-string v3, "auto"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    const-string v0, "auto"

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    .line 1086
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized F()Lcom/snapchat/android/scan/SnapScan;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1152
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    .line 1175
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1156
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->I:Lcom/snapchat/android/scan/SnapScan;

    if-nez v1, :cond_1

    .line 1157
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    if-eqz v1, :cond_1

    .line 1160
    const/4 v2, -0x1

    .line 1163
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_2

    .line 1165
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1166
    if-eqz v3, :cond_2

    .line 1167
    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    .line 1168
    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    .line 1171
    :goto_1
    new-instance v3, Lcom/snapchat/android/scan/SnapScan;

    invoke-direct {v3, v2, v1, v0, p0}, Lcom/snapchat/android/scan/SnapScan;-><init>(IIILcom/snapchat/android/scan/SnapScanCallback;)V

    iput-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->I:Lcom/snapchat/android/scan/SnapScan;

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->I:Lcom/snapchat/android/scan/SnapScan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private K()V
    .locals 1

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->F()Lcom/snapchat/android/scan/SnapScan;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScan;->b()V

    .line 1203
    :cond_0
    return-void
.end method

.method private L()V
    .locals 1

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->F()Lcom/snapchat/android/scan/SnapScan;

    move-result-object v0

    .line 1207
    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0}, Lcom/snapchat/android/scan/SnapScan;->a()V

    .line 1210
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/CameraFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->J:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->E()Z

    move-result v0

    .line 1061
    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->e(Z)V

    .line 1063
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(II)V

    .line 1064
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-static {p1, p2, v0, v1}, Lcom/snapchat/android/camera/CameraUtils;->a(IILandroid/view/View;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V

    .line 1066
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    new-instance v4, Lcom/snapchat/android/camera/CameraFragment$5;

    invoke-direct {v4, p0}, Lcom/snapchat/android/camera/CameraFragment$5;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;-><init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;)V

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->A()V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/hardware/Camera$Parameters;F)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 441
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    .line 445
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    .line 446
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 447
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 448
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/camera/CameraFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
    .locals 3
    .parameter

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 275
    instance-of v0, v1, Lcom/snapchat/android/SnapkidzHomeActivity;

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 278
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;Landroid/hardware/Camera$Parameters;)Lcom/snapchat/android/util/Resolution;
    .locals 7
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 990
    invoke-static {p3}, Lcom/snapchat/android/camera/CameraUtils;->a(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-nez v0, :cond_0

    .line 991
    const-string v0, "CameraFragment"

    const-string v1, "Preview Size Finding: display [%d,%d]"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p1, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 994
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->h()I

    move-result v3

    invoke-static {p1}, Lcom/snapchat/android/camera/CameraUtils;->a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)D

    move-result-wide v4

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Landroid/hardware/Camera$Parameters;IDZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 999
    :goto_0
    return-object v0

    .line 997
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;Landroid/hardware/Camera$Parameters;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 998
    const-string v1, "CameraFragment"

    const-string v2, "Camera Preview Size: [%d,%d]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lcom/snapchat/android/camera/model/ZoomModel;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/model/ZoomModel;->a(F)V

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lcom/snapchat/android/camera/model/ZoomModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/ZoomModel;->b()F

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 429
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/hardware/Camera$Parameters;F)Z

    move-result v0

    .line 430
    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lcom/snapchat/android/camera/model/ZoomModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/ZoomModel;->a()V

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getCurrentPanel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    invoke-interface {v0, p1, p2}, Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;->a(IZ)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    const-string v0, "CameraFragment"

    const-string v1, "FragmentPageChangeCallback is null. Is it implemented by your Activity?"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(I[B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1180
    if-eqz p2, :cond_0

    .line 1181
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1182
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;I[B)I

    .line 1184
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1091
    new-instance v0, Lcom/snapchat/android/model/Snapbryo$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->g(Z)V

    .line 1093
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->m()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1094
    if-eqz v1, :cond_0

    .line 1095
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->d(I)V

    .line 1098
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1099
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 859
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 861
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;->b(Z)V

    .line 864
    :cond_0
    if-nez p1, :cond_1

    .line 865
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 889
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    .line 869
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v2

    .line 870
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->m()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 871
    if-nez v0, :cond_3

    move v0, v1

    .line 872
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v3, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a(Z)V

    .line 873
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v3, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b(Z)V

    .line 874
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 875
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v1, :cond_2

    .line 876
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->a()V

    .line 877
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 880
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->c()V

    .line 881
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 882
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->g()V

    .line 885
    new-instance v1, Lcom/snapchat/android/model/Snapbryo$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/model/Snapbryo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(Landroid/net/Uri;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v1

    .line 886
    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/Snapbryo;->g(Z)V

    .line 887
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Snapbryo;->d(I)V

    .line 888
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-direct {v2, v1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 871
    :cond_3
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_1
.end method

.method public a(Landroid/view/Surface;)V
    .locals 3
    .parameter

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->r:Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->a()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 1044
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    new-instance v2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v2}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->b(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)V

    .line 1042
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/Surface;Lcom/snapchat/android/util/Resolution;)Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 676
    sget-object v2, Lcom/snapchat/android/camera/CameraFragment$7;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 718
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    sget-object v3, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->b:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a(Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;)V

    .line 679
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->D:Landroid/os/Handler;

    new-instance v3, Lcom/snapchat/android/camera/CameraFragment$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/camera/CameraFragment$2;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->e(Z)V

    .line 689
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->b(Z)V

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v2, v1}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 693
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->b(Z)V

    .line 694
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a()Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->c:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    if-ne v2, v3, :cond_1

    .line 695
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a(Z)V

    .line 696
    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->r()V

    .line 711
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    .line 715
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 694
    goto :goto_1

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c()V

    .line 703
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->o()V

    .line 705
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v0

    const-string v1, "ENABLE_SNAP_TO_SCAN"

    const-string v2, "option"

    const-string v3, "on"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->K()V

    goto :goto_2

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->b(Z)V

    .line 359
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 957
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V

    .line 958
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 963
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b()V

    .line 964
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/LifecycleAnalytics;->d()V

    .line 965
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->m()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/ui/here/StreamView;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 966
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/ui/here/StreamView;->setCameraPreviewSize(Lcom/snapchat/android/util/Resolution;)V

    .line 967
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 1
    .parameter

    .prologue
    .line 817
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 819
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 893
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 895
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    invoke-interface {v0, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;->b(Z)V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    .line 899
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a(Z)V

    .line 900
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b(Z)V

    .line 901
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v3, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 904
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->c:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 927
    const v0, 0x7f0c0226

    .line 930
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v3, v4, v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 931
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->s:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v2, Lcom/snapchat/android/analytics/handledexceptions/VideoRecordingFailedException;

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/handledexceptions/VideoRecordingFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 932
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 934
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a()V

    .line 936
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 937
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->c()V

    .line 938
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 939
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 944
    return-void

    .line 906
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c00c4

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 909
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v5, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v4, v5, v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 911
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 922
    const v0, 0x7f0c003b

    goto :goto_0

    .line 911
    :sswitch_0
    const-string v2, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "checking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v2, "removed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    .line 913
    :pswitch_1
    const v0, 0x7f0c003c

    .line 914
    goto/16 :goto_0

    .line 916
    :pswitch_2
    const v0, 0x7f0c003a

    .line 917
    goto/16 :goto_0

    .line 919
    :pswitch_3
    const v0, 0x7f0c0035

    .line 920
    goto/16 :goto_0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 911
    :sswitch_data_0
    .sparse-switch
        -0x35db539b -> :sswitch_0
        0x41141860 -> :sswitch_2
        0x5b9b35da -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 641
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Z

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    .line 644
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method public a([BLcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1105
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a([BLcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V

    .line 1106
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/CameraFragment$6;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 1115
    iget-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Z

    if-eqz v0, :cond_0

    .line 1116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Z

    .line 1117
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->e()V

    .line 1120
    :cond_0
    if-nez p2, :cond_2

    .line 1133
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 1123
    invoke-static {}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getLastInstance()Lcom/snapchat/android/ui/here/HoldToStreamView;

    move-result-object v0

    .line 1124
    if-eqz v0, :cond_3

    .line 1125
    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a([B)V

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    invoke-interface {p2, v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a([B)V

    .line 1129
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->F()Lcom/snapchat/android/scan/SnapScan;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_1

    .line 1131
    invoke-virtual {v0, p1}, Lcom/snapchat/android/scan/SnapScan;->a([B)V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Surface;Lcom/snapchat/android/util/Resolution;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 750
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    :goto_0
    return v0

    .line 754
    :cond_0
    sget-boolean v1, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 755
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->f:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    invoke-virtual {v0, p0, v1, p2, p1}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;Lcom/snapchat/android/util/Resolution;Landroid/view/Surface;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/util/Resolution;)[B
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 977
    invoke-static {p1}, Lcom/snapchat/android/camera/CameraUtils;->a(Lcom/snapchat/android/util/Resolution;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    .line 978
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    return-object v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setScrollable(Z)V

    .line 256
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1188
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    if-eqz p1, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1191
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    const-string v0, "CameraFragment"

    const-string v1, "The debug scanner image was null."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    .line 972
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/FlashModel;->a()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/camera/controller/FlashController;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 973
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 1054
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(II)V

    .line 1055
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->K()V

    .line 1056
    return-void
.end method

.method protected b(Z)V
    .locals 2
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setScrollable(Z)V

    .line 668
    :cond_0
    return-void

    .line 666
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 1005
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->c(I)V

    .line 1007
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1010
    if-eqz v0, :cond_1

    .line 1011
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1012
    const v0, 0x7f0c00ac

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1013
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1014
    const v0, 0x7f0c003d

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$3;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1019
    const v0, 0x7f0c00eb

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$4;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1024
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1028
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->s:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v1, Lcom/snapchat/android/analytics/handledexceptions/CameraFailedToOpenException;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/handledexceptions/CameraFailedToOpenException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 1029
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "CAMERA_FAILED_TO_OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 799
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->a()V

    .line 804
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->b(I)Z

    move-result v0

    .line 805
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v1, p1, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b(ZZ)V

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Z

    .line 807
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    goto :goto_0
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 555
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d_()V

    .line 556
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->L()V

    .line 558
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setEnabled(Z)V

    .line 559
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1138
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getCurrentPanel()I

    move-result v1

    if-nez v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a(I)V

    .line 1142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public h()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/FlashModel;->a()Z

    move-result v0

    return v0
.end method

.method protected k()V
    .locals 6

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->H()Landroid/content/Intent;

    move-result-object v1

    .line 488
    const-string v0, "destinationPage"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    .line 490
    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    if-ne v0, v2, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->h()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a(ID)V

    .line 497
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-direct {v3}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>()V

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 500
    :cond_0
    const-string v0, "destinationPage"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 502
    :cond_1
    return-void
.end method

.method protected k_()Z
    .locals 3

    .prologue
    .line 633
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->k_()Z

    move-result v0

    .line 635
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 636
    :cond_0
    return v0
.end method

.method protected l()V
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getCurrentPanel()I

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->getCurrentPanel()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a(ID)V

    .line 551
    return-void
.end method

.method public l_()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    return v0
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a(I)V

    .line 586
    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->aj:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/controller/TakePhotoController;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    invoke-virtual {v0, v1, p0, v2}, Lcom/snapchat/android/camera/controller/TakePhotoController;->a(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    .line 655
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a0084

    .line 260
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    .line 266
    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;-><init>()V

    .line 268
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 270
    :cond_0
    return-void
.end method

.method public onAdjustForQuickSnapEvent(Lcom/snapchat/android/util/eventbus/AdjustForQuickSnapEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/AdjustForQuickSnapEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onAttach(Landroid/app/Activity;)V

    .line 394
    instance-of v0, p1, Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    if-eqz v0, :cond_0

    .line 395
    check-cast p1, Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    .line 397
    :cond_0
    return-void
.end method

.method public onCameraStateEvent(Lcom/snapchat/android/util/eventbus/CameraStateEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;->a:Z

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;->b:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;->b:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->c()V

    .line 595
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 598
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->c()V

    goto :goto_0
.end method

.method public onCancelCardLinkEvent(Lcom/snapchat/android/util/eventbus/CancelCardLinkEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 331
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 332
    return-void
.end method

.method public onCancelInChatSnapEvent(Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public onCancelQuickSnapEvent(Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onCancelReplyEvent(Lcom/snapchat/android/util/eventbus/CancelReplyEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 291
    return-void
.end method

.method public onChangePreviewQualityEvent(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 605
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$7;->a:[I

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;->a:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 613
    :goto_0
    return-void

    .line 607
    :pswitch_0
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->C()V

    goto :goto_0

    .line 610
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->B()V

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 217
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 219
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->h:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->y:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 229
    new-instance v0, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;

    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/camera/controller/DefaultFlashControllerImpl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    .line 230
    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    .line 231
    new-instance v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v0}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    .line 232
    iget v1, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    iget v2, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    iget v2, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    iget v3, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 234
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    mul-float/2addr v1, v2

    iget v0, v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 236
    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->J:Landroid/widget/ImageView;

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->J:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/camera/CameraFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/CameraFragment$1;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDoubleTapToReplyEvent(Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lcom/snapchat/android/util/eventbus/ReplyEventInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 790
    return-void
.end method

.method public onKeyDownEvent(Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Z

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 346
    :cond_0
    iget v0, p1, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 346
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLockScreenOpenedEvent(Lcom/snapchat/android/util/eventbus/LockScreenOpenedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->onResume()V

    .line 464
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;Z)V

    .line 565
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a(Z)V

    .line 567
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onPause()V

    .line 568
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->c()V

    .line 569
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 570
    :cond_1
    return-void
.end method

.method public onProfileViewScrollEvent(Lcom/snapchat/android/util/eventbus/ProfileViewFlipEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    iget v1, p1, Lcom/snapchat/android/util/eventbus/ProfileViewFlipEvent;->a:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->a(I)V

    .line 337
    return-void
.end method

.method public onRefreshCameraNotificationBoxesEvent(Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 784
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 785
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 475
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Z)V

    .line 479
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onResume()V

    .line 481
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->k()V

    .line 483
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 484
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1229
    :cond_0
    return-void
.end method

.method public onSnapViewingEvent(Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 795
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onStart()V

    .line 469
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 470
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 574
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onStop()V

    .line 575
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 578
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->n()V

    .line 579
    return-void
.end method

.method public onSwitchToInChatCameraEvent(Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 296
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public onSwitchToQuickSnapCameraEvent(Lcom/snapchat/android/util/eventbus/SwitchToQuickSnapCameraEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/QuickSnapCameraDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/cameradecor/QuickSnapCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 318
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/SwitchToQuickSnapCameraEvent;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public onViewedFriendFeedEvent(Lcom/snapchat/android/util/eventbus/AddFriendsPageVisitedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 780
    return-void
.end method

.method public p()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 724
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 743
    :goto_0
    return v0

    .line 728
    :cond_0
    sget-boolean v2, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-eqz v2, :cond_2

    .line 729
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->r:Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->a()Lcom/snapchat/android/util/Resolution;

    move-result-object v1

    .line 730
    if-nez v1, :cond_1

    .line 731
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 734
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/Surface;Lcom/snapchat/android/util/Resolution;)Z

    move-result v0

    goto :goto_0

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->b(Z)V

    .line 740
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->b(Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)V

    move v0, v1

    .line 743
    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a()Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b(Z)V

    .line 773
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    invoke-virtual {v0, p0, v1}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    .line 774
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->M()Z

    move-result v0

    .line 827
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-static {v0}, Lcom/snapchat/android/camera/util/FlashUtils;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)Z

    move-result v0

    goto :goto_0
.end method

.method protected s_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 506
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 507
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b()V

    .line 508
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->H:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->c()V

    .line 509
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 518
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 522
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b()V

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->l()V

    .line 537
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 538
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/FlashModel;->b()V

    .line 835
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/camera/controller/FlashController;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/FlashModel;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/controller/FlashController;->c(Z)V

    .line 836
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    goto :goto_0
.end method

.method public u()V
    .locals 4

    .prologue
    .line 842
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 843
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b(Z)V

    .line 844
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->c()V

    .line 845
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;->b(Z)V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 855
    :cond_1
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 950
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    .line 951
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->r()V

    .line 952
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 1049
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 1050
    return-void
.end method

.method public x()V
    .locals 0

    .prologue
    .line 1216
    return-void
.end method

.method public y()V
    .locals 0

    .prologue
    .line 1222
    return-void
.end method

.method protected z()Z
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x0

    return v0
.end method
