.class Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$10;->a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$10;->a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$10;->a:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_0
.end method
