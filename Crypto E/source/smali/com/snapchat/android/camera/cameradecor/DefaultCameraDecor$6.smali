.class Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;
.super Lcom/snapchat/android/util/BouncyToucher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-direct {p0, p2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 151
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->b:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    .line 157
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/util/BouncyToucher;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 153
    :cond_2
    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TakeSnapButton;->a()V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    goto :goto_0
.end method
