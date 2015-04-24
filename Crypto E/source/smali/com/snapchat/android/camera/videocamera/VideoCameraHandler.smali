.class public Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.super Lcom/snapchat/android/util/WaitDoneHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;,
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;,
        Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;
    }
.end annotation


# instance fields
.field protected a:Ljava/io/File;

.field protected final b:Landroid/media/MediaRecorder;

.field c:Lcom/snapchat/android/camera/videocamera/ScCamcorderProfileProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final f:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

.field private g:Landroid/view/Surface;

.field private h:J

.field private final i:Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;

.field private final j:Lcom/snapchat/android/analytics/CameraEventAnalytics;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter

    .prologue
    .line 121
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    new-instance v3, Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;-><init>(Landroid/os/Looper;Landroid/media/MediaRecorder;Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lcom/snapchat/android/analytics/CameraEventAnalytics;)V

    .line 124
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/media/MediaRecorder;Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;Lcom/snapchat/android/analytics/CameraEventAnalytics;)V
    .locals 1
    .parameter
    .end parameter
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/WaitDoneHandler;-><init>(Landroid/os/Looper;)V

    .line 132
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 133
    iput-object p2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    .line 134
    iput-object p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->i:Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;

    .line 135
    iput-object p4, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->f:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 136
    iput-object p5, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->j:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 137
    return-void
.end method

.method private a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$3;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 296
    :try_start_0
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: Starting..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 298
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: Started successfully!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->h:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 300
    :catch_0
    move-exception v1

    .line 301
    const-string v2, "VideoCameraHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video Recorder: RuntimeException when calling start(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/hardware/Camera$CameraInfo;)I
    .locals 3
    .parameter

    .prologue
    .line 280
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 281
    if-nez v0, :cond_1

    .line 282
    const/16 v0, 0x5a

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    iget v1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 285
    invoke-static {}, Lcom/snapchat/android/camera/util/DeviceExceptions;->a()Lcom/snapchat/android/camera/util/DeviceExceptions;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/snapchat/android/camera/util/DeviceExceptions;->c()I

    move-result v1

    .line 287
    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 144
    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 145
    return-void
.end method

.method protected a(Landroid/media/CamcorderProfile;)V
    .locals 3
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->i:Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;->a(Landroid/media/CamcorderProfile;)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v2, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;

    invoke-direct {v2, v0}, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 276
    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->g:Landroid/view/Surface;

    .line 154
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 164
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-void
.end method

.method protected a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->f:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferencesFactory;->a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Landroid/media/MediaRecorder;IILcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;)Z

    move-result v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e()Z

    move-result v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c()V

    .line 207
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c()V

    .line 211
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Landroid/net/Uri;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$2;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/util/Resolution;Ljava/io/File;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 158
    iput-object p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    .line 159
    const/16 v0, 0x65

    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v1

    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method protected a(Landroid/media/MediaRecorder;IILcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 220
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v1

    .line 221
    iget-object v2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->m()Landroid/hardware/Camera$CameraInfo;

    move-result-object v9

    .line 222
    iget-object v2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c:Lcom/snapchat/android/camera/videocamera/ScCamcorderProfileProvider;

    iget-object v3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->h()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/camera/videocamera/ScCamcorderProfileProvider;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    .line 224
    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Landroid/media/CamcorderProfile;)V

    .line 226
    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v0, v8

    .line 266
    :goto_0
    return v0

    .line 230
    :cond_1
    invoke-interface {v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->b()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 231
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 232
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 233
    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 235
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 237
    invoke-virtual {p4}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;->a()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 239
    invoke-virtual {p4, v2}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;->a(Landroid/media/CamcorderProfile;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 242
    const-string v1, "VideoCameraHandler"

    const-string v3, "Video Recorder: video size [%d x %d], filesize: %d, bitrate: %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-virtual {p4}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p4, v2}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;->a(Landroid/media/CamcorderProfile;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->j:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {p4}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;->a()J

    move-result-wide v4

    invoke-virtual {p4, v2}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;->a(Landroid/media/CamcorderProfile;)I

    move-result v6

    iget-object v2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->f:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v7

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(IIJILcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V

    .line 250
    invoke-virtual {p0, v9}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Landroid/hardware/Camera$CameraInfo;)I

    move-result v1

    .line 251
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 253
    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 254
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->g:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->g:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 259
    :cond_2
    :try_start_0
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: Preparing"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 261
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: Prepared!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :goto_1
    const-string v1, "VideoCameraHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Recorder: exception preparing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    .line 264
    goto/16 :goto_0

    .line 262
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected b(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$1;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method protected b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 315
    :try_start_0
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: Stopping..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 317
    const-string v1, "VideoCameraHandler"

    const-string v2, "Video Recorder: Stop Successful"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    const-string v2, "VideoCameraHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video Recorder: Problem while stopping! Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->f()Z

    .line 334
    invoke-interface {v0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->e()V

    .line 336
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 171
    :pswitch_0
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: START_RECORDING message received on handler"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;II)V

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video Recorder: STOP_RECORDING message received on handler"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;

    .line 177
    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->b()Z

    move-result v1

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c()V

    .line 180
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->h:J

    invoke-static {v2, v3, v4, v5}, Lcom/snapchat/android/camera/VideoCameraUtils;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    iget-wide v2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->h:J

    long-to-float v2, v2

    invoke-static {v1, v2}, Lcom/snapchat/android/camera/VideoCameraUtils;->a(Ljava/io/File;F)V

    .line 183
    iget-object v1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Landroid/net/Uri;)V

    goto :goto_0

    .line 185
    :cond_0
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->d:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
