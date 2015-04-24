.class public Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a:Landroid/os/Handler;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;-><init>(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/hardware/CameraManager;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$4;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$4;-><init>(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;Lcom/snapchat/android/camera/hardware/CameraManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$2;-><init>(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;-><init>(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method
