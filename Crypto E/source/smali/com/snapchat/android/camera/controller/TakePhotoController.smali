.class public Lcom/snapchat/android/camera/controller/TakePhotoController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/FlashModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method private b(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/TakePhotoController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/controller/TakePhotoController;->d(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/controller/TakePhotoController;->c(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    goto :goto_0
.end method

.method private c(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/TakePhotoController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->l()Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/snapchat/android/camera/controller/FlashController;->b(Z)V

    .line 59
    new-instance v1, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/snapchat/android/camera/controller/TakePhotoController$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/snapchat/android/camera/controller/TakePhotoController$1;-><init>(Lcom/snapchat/android/camera/controller/TakePhotoController;Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;-><init>(Landroid/os/Handler;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;)V

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)V

    goto :goto_0
.end method

.method private d(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/snapchat/android/camera/controller/FlashController;->a(Z)V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/camera/controller/TakePhotoController$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/camera/controller/TakePhotoController$2;-><init>(Lcom/snapchat/android/camera/controller/TakePhotoController;Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    invoke-virtual {p3}, Lcom/snapchat/android/camera/controller/FlashController;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/TakePhotoController;->a:Lcom/snapchat/android/camera/model/FlashModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/FlashModel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/controller/TakePhotoController;->b(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/TakePhotoController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/snapchat/android/camera/PhotoBitmapProvider;->a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/TakePhotoCallback;)V

    goto :goto_0
.end method
