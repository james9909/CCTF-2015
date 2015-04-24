.class public Lcom/snapchat/android/camera/BackgroundCameraFragment;
.super Lcom/snapchat/android/camera/BaseCameraFragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/camera/model/CameraModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>()V

    .line 24
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
    .locals 3
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/FullColorDecor;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/BackgroundCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/snapchat/android/camera/cameradecor/FullColorDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    check-cast v0, Lcom/snapchat/android/camera/cameradecor/FullColorDecor;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameradecor/FullColorDecor;->a(I)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->a:Lcom/snapchat/android/camera/model/CameraModel;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onDestroyView()V

    .line 42
    iput-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 43
    iput-object v0, p0, Lcom/snapchat/android/camera/BackgroundCameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    .line 44
    return-void
.end method
