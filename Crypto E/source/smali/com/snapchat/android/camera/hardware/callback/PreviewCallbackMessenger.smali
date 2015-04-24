.class public Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

.field private final c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a:Landroid/os/Handler;

    .line 25
    iput-object p3, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->b:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->b:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 43
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;-><init>(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method
