.class public Lcom/snapchat/android/camera/util/FlashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 17
    if-nez p0, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 18
    :cond_1
    invoke-interface {p0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    const-string v0, "torch"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    invoke-interface {p0}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    const-string v0, "on"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
