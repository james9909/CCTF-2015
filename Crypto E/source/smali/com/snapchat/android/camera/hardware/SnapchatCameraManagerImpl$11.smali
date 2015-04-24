.class Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

.field final synthetic b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;->a:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;->b:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;->a:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method
