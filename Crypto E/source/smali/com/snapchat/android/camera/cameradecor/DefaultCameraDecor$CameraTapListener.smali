.class Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraTapListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->j:Lcom/snapchat/android/util/BouncyToucher;

    invoke-virtual {v0}, Lcom/snapchat/android/util/BouncyToucher;->a()V

    .line 367
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->w()V

    .line 369
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->b(Landroid/view/MotionEvent;)V

    .line 360
    const/4 v0, 0x1

    return v0
.end method
