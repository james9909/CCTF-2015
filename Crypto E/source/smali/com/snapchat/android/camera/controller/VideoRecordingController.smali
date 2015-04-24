.class public Lcom/snapchat/android/camera/controller/VideoRecordingController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/VideoRecordingModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/snapchat/android/camera/model/FlashModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final e:Lcom/snapchat/android/util/cache/FileUtils;

.field private final f:Lcom/snapchat/android/analytics/RecordingSizeAnalytics;


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    new-instance v1, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/controller/VideoRecordingController;-><init>(Lcom/snapchat/android/util/cache/FileUtils;Lcom/snapchat/android/analytics/RecordingSizeAnalytics;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/cache/FileUtils;Lcom/snapchat/android/analytics/RecordingSizeAnalytics;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->e:Lcom/snapchat/android/util/cache/FileUtils;

    .line 70
    iput-object p2, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->f:Lcom/snapchat/android/analytics/RecordingSizeAnalytics;

    .line 71
    return-void
.end method

.method private a(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "continuous-video"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->c:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/FlashModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1, v1}, Lcom/snapchat/android/camera/controller/FlashController;->a(Z)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1, v1}, Lcom/snapchat/android/camera/controller/FlashController;->b(Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 229
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2, p1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "VideoRecordingController"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 167
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Ljava/io/File;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->e:Lcom/snapchat/android/util/cache/FileUtils;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/FileUtils;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/cache/Storage;->a(Ljava/io/File;Ljava/io/File;)V

    .line 184
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/cache/FileUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/cache/FileUtils;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->j:Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/FileUtils;->a(Lcom/snapchat/android/util/cache/CacheType;)Ljava/io/File;

    move-result-object v0

    .line 186
    :cond_1
    return-object v0
.end method

.method protected a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 140
    invoke-interface {p1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Landroid/hardware/Camera$Parameters;)V

    .line 145
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v1

    const-string v2, "USE_VIDEO_STABILIZATION"

    const-string v3, "option"

    const-string v4, "on"

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b(Landroid/hardware/Camera$Parameters;)V

    .line 148
    :cond_1
    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;Z)V

    .line 192
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;Z)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V

    .line 199
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d()Z

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/camera/controller/FlashController;->a(Z)V

    .line 206
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/controller/FlashController;Lcom/snapchat/android/util/Resolution;Landroid/view/Surface;)Z
    .locals 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a()Ljava/io/File;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v3

    .line 89
    iget-object v4, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v4}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    move-result-object v4

    .line 90
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    .line 91
    :cond_0
    if-nez v2, :cond_1

    .line 92
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    :goto_0
    move v0, v1

    .line 123
    :goto_1
    return v0

    .line 94
    :cond_1
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v5, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v5, v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a(Z)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V

    .line 101
    invoke-direct {p0, p2}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Lcom/snapchat/android/camera/controller/FlashController;)V

    .line 110
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V

    .line 112
    :try_start_0
    invoke-interface {v3}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->d()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    if-eqz p4, :cond_3

    .line 119
    invoke-virtual {v4, p4}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Landroid/view/Surface;)V

    .line 121
    :cond_3
    invoke-virtual {v4, p1, p3, v2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/util/Resolution;Ljava/io/File;)V

    .line 122
    iget-object v1, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->f:Lcom/snapchat/android/analytics/RecordingSizeAnalytics;

    invoke-virtual {v1, p3}, Lcom/snapchat/android/analytics/RecordingSizeAnalytics;->a(Lcom/snapchat/android/util/Resolution;)V

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-interface {p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    move v0, v1

    .line 115
    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    const-string v0, "Null camera when initializing VideoCameraHandler"

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/controller/VideoRecordingController;->c()V

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Video Recording Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    iget-object v1, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    new-instance v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->b()Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/VideoRecordingController;->a:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/VideoRecordingModel;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;)V

    .line 226
    return-void
.end method
