.class Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(F)V

    .line 350
    const/4 v0, 0x1

    return v0
.end method
