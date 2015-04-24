.class Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/hardware/Camera$Parameters;

.field final synthetic b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;->a:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Z)Z

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
