.class public Lcom/snapchat/android/analytics/CameraEventAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;
    }
.end annotation


# static fields
.field protected static final CAMERA_BUTTON_PRESSED_EVENT:Ljava/lang/String; = "CAMERA_BUTTON_PRESSED"

.field protected static final CAMERA_DELAY_EVENT:Ljava/lang/String; = "CAMERA_DELAY"

.field protected static final CAMERA_RUNNING_PARAM:Ljava/lang/String; = "camera_running"

.field protected static final CAMERA_SWITCH_EVENT:Ljava/lang/String; = "CAMERA_SWITCH"

.field protected static final CONTEXT_PARAM:Ljava/lang/String; = "context"

.field protected static final EXIT_CAMERA_VIEW_EVENT:Ljava/lang/String; = "EXIT_CAMERA_VIEW"

.field protected static final RECORDING_DELAY_EVENT:Ljava/lang/String; = "RECORDING_DELAY"

.field protected static final START_VIDEO_RECORDING_EVENT:Ljava/lang/String; = "START_VIDEO_RECORDING"

.field protected static final VIDEO_RECORDING_ERROR_EVENT:Ljava/lang/String; = "VIDEO_RECORDING_ERROR"

.field protected static final VIDEO_RECORDING_SUCCESS_EVENT:Ljava/lang/String; = "VIDEO_RECORDING_SUCCESS"

.field private static final sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;


# instance fields
.field private mCameraAlreadyReady:Z

.field protected mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field protected mFlashModel:Lcom/snapchat/android/camera/model/FlashModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 76
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->sInstance:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->e()V

    .line 213
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    const-string v2, "context"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    const-string v2, "camera_running"

    invoke-virtual {v0, v1, v2, p2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 165
    return-void
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    const-string v2, "context"

    const-string v3, "feed"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    const-string v2, "context"

    const-string v3, "story"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b(I)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 191
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c(I)V

    goto :goto_0

    .line 192
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(I)V

    goto :goto_0
.end method

.method public a(IIJILcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "START_VIDEO_RECORDING"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "video_width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "max_file_size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "bit_rate"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "transcoding_status"

    invoke-virtual {p6}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 266
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 158
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 251
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "VIDEO_RECORDING_ERROR"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 252
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 89
    if-eqz p1, :cond_0

    const-string v0, "killed_state"

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 89
    :cond_0
    const-string v0, "background"

    goto :goto_0
.end method

.method protected a(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    const-string v2, "context"

    const-string v3, "take_snap"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CAMERA_BUTTON_PRESSED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "front_facing"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "flash"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "RECORDING_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 124
    if-eqz p1, :cond_0

    const-string v0, "video"

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "RECORDING_DELAY"

    const-string v3, "context"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "RECORDING_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 127
    return-void

    .line 124
    :cond_0
    const-string v0, "image"

    goto :goto_0
.end method

.method public b(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_SWITCH"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    const-string v0, "double_tap"

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_SWITCH"

    const-string v3, "context"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 144
    if-eqz p2, :cond_1

    const-string v0, "front_facing_camera"

    .line 145
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_SWITCH"

    const-string v3, "switch_to"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 146
    return-void

    .line 142
    :cond_0
    const-string v0, "toggle_button"

    goto :goto_0

    .line 144
    :cond_1
    const-string v0, "back_facing_camera"

    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraModel:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mFlashModel:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/FlashModel;->a()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(ZZ)V

    .line 105
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    const-string v2, "context"

    const-string v3, "exit"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_SWITCH"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_DELAY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mCameraAlreadyReady:Z

    .line 245
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIDEO_RECORDING_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 256
    return-void
.end method
