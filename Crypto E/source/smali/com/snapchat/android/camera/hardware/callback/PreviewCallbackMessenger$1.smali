.class Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;->b:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;->b:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->b(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;->a:[B

    iget-object v2, p0, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger$1;->b:Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;

    invoke-static {v2}, Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;->a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraPreviewDataCallback;->a([BLcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V

    .line 35
    return-void
.end method
