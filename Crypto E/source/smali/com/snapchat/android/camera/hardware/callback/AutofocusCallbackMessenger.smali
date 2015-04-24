.class public Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

.field private final c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->a:Landroid/os/Handler;

    .line 27
    iput-object p3, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;

    .line 28
    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->b:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->b:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->c:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;

    return-object v0
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;-><init>(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
