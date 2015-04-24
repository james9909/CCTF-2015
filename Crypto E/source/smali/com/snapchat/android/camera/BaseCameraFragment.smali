.class public abstract Lcom/snapchat/android/camera/BaseCameraFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;
.implements Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;
.implements Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;


# instance fields
.field private final a:Lcom/snapchat/android/util/DefaultDisplayProvider;

.field protected b:Lcom/snapchat/android/camera/cameraview/CameraView;

.field protected c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

.field protected d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

.field protected e:Landroid/widget/RelativeLayout;

.field protected f:Landroid/widget/FrameLayout;

.field protected g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

.field protected h:Landroid/content/SharedPreferences;

.field protected i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

.field protected j:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected k:Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final l:Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;

.field private final m:Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;

.field private final n:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/snapchat/android/util/DefaultDisplayProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/DefaultDisplayProvider;-><init>()V

    new-instance v1, Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;

    invoke-direct {v1}, Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;-><init>()V

    new-instance v2, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;

    invoke-static {}, Lcom/snapchat/android/camera/util/DeviceExceptions;->a()Lcom/snapchat/android/camera/util/DeviceExceptions;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;-><init>(Lcom/snapchat/android/camera/util/DeviceExceptions;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>(Lcom/snapchat/android/util/DefaultDisplayProvider;Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/DefaultDisplayProvider;Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;-><init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->n:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    .line 88
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 89
    iput-object p1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->a:Lcom/snapchat/android/util/DefaultDisplayProvider;

    .line 90
    iput-object p2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->l:Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;

    .line 91
    iput-object p3, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->m:Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;

    .line 92
    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;Lcom/snapchat/android/util/Resolution;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 293
    return-void
.end method

.method private c(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->h()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 302
    :cond_0
    return-void
.end method

.method private d(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "continuous-picture"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 176
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 177
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 182
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 183
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->d()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->h()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/model/CameraModel;->c(Z)V

    .line 237
    invoke-static {}, Lcom/snapchat/android/camera/hardware/CameraManagerFactory;->a()Lcom/snapchat/android/camera/hardware/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->d()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->n:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraManager;->a(ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V

    goto :goto_0
.end method

.method private k()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Preview Data Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 365
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method


# virtual methods
.method protected abstract a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.end method

.method protected a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;Landroid/hardware/Camera$Parameters;)Lcom/snapchat/android/util/Resolution;
    .locals 10
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
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 328
    const-string v0, "BaseCameraFragment"

    const-string v1, "Preview Size Finding: display [%d, %d]"

    new-array v2, v9, [Ljava/lang/Object;

    iget v3, p1, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, p1, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-static {p1}, Lcom/snapchat/android/camera/CameraUtils;->a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)D

    move-result-wide v4

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->c()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    :goto_0
    invoke-virtual {p2, p3, v4, v5, v0}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Landroid/hardware/Camera$Parameters;DZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 334
    if-nez v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->m:Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->h()I

    move-result v3

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v7

    :goto_1
    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;->a(Landroid/hardware/Camera$Parameters;IDZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 338
    :cond_0
    const-string v1, "BaseCameraFragment"

    const-string v2, "Preview Size Finding: preview size [%d, %d]"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    return-object v0

    :cond_1
    move v0, v8

    .line 331
    goto :goto_0

    :cond_2
    move v6, v8

    .line 335
    goto :goto_1
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/util/Resolution;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/graphics/SurfaceTexture;[B)V

    .line 392
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    new-instance v2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v2}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)V

    goto :goto_0
.end method

.method protected a(Landroid/graphics/SurfaceTexture;[B)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, p1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/graphics/SurfaceTexture;)V

    .line 349
    if-eqz p2, :cond_3

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, p2}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a([B)V

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a()V

    .line 354
    :cond_2
    new-instance v0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->k()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;-><init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->g()V

    goto :goto_0
.end method

.method protected a(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 264
    new-instance v0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v0}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->m:Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;

    invoke-virtual {p0, v0, v1, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;Lcom/snapchat/android/camera/previewsize/CameraPreviewSizeFinder;Landroid/hardware/Camera$Parameters;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/util/Resolution;)V

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/hardware/Camera$Parameters;Lcom/snapchat/android/util/Resolution;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->c(Landroid/hardware/Camera$Parameters;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->d(Landroid/hardware/Camera$Parameters;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->b(Landroid/hardware/Camera$Parameters;)V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, p1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->l:Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/util/CameraPreviewRotationFinder;->a(Lcom/snapchat/android/camera/model/CameraModel;)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v1, v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(I)V

    .line 276
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    return-void
.end method

.method protected a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    .line 148
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iput-object p1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->i()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v2, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V

    .line 252
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/camera/model/CameraModel;->c(I)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/hardware/Camera$Parameters;)V

    .line 254
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->f()V

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->c(Z)V

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/camera/hardware/CameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, p1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->b(Z)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->i:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    invoke-interface {v0, p1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Z)V

    .line 205
    iput-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->g()V

    .line 208
    return-void
.end method

.method public a([BLcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    return-void
.end method

.method protected a(Lcom/snapchat/android/util/Resolution;)[B
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;->setScrollable(Z)V

    .line 128
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->c(Z)V

    .line 371
    return-void
.end method

.method protected b(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->k_()Z

    .line 212
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->i()V

    .line 213
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->c(Z)V

    .line 376
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()Z

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->k_()Z

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/util/Resolution;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/graphics/SurfaceTexture;[B)V

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v2}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)V

    goto :goto_0
.end method

.method protected k_()Z
    .locals 4

    .prologue
    const/high16 v3, 0x7f0a

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_1

    .line 223
    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->setId(I)V

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 227
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b(Landroid/os/Bundle;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const v0, 0x7f04000e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->x:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->h:Landroid/content/SharedPreferences;

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_0
    const v0, 0x7f0a0082

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->f:Landroid/widget/FrameLayout;

    .line 111
    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->e:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 114
    const v0, 0x7f0a0083

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    iput-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->g:Lcom/snapchat/android/profile/ui/ProfileViewFlipper;

    .line 115
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->b()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 189
    const-string v0, "BaseCameraFragment"

    const-string v1, "BaseCameraFragment onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/model/CameraModel;->d(Z)V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/snapchat/android/camera/hardware/CameraManagerFactory;->a()Lcom/snapchat/android/camera/hardware/CameraManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraManager;->a()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, v3}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 168
    const-string v0, "BaseCameraFragment"

    const-string v1, "BaseCameraFragment onResume"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->j:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/model/CameraModel;->d(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->c()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/camera/BaseCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method
