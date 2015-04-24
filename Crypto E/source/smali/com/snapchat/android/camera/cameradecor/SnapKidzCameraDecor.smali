.class public Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;
.super Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 18
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;->f:Landroid/widget/TextView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor$1;-><init>(Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
