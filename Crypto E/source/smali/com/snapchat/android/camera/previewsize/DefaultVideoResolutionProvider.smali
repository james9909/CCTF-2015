.class public Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/previewsize/VideoResolutionProvider;


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;-><init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/Resolution;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-interface {v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->c:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->e:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->b:Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;

    iget-object v0, p0, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;->a:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->h()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/camera/CameraUtils;->a(Landroid/hardware/Camera$Size;)D

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Landroid/hardware/Camera$Parameters;IDZ)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
