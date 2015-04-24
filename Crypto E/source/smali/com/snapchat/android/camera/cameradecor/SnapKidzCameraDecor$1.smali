.class Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor$1;->a:Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor$1;->a:Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/SnapKidzCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->h()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 27
    return-void
.end method
