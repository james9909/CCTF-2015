.class Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

.field final synthetic c:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->c:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    iput p2, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->a:I

    iput-object p3, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->c:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->c:Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;

    iget v1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->a:I

    iget-object v2, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;->b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V

    goto :goto_0
.end method
