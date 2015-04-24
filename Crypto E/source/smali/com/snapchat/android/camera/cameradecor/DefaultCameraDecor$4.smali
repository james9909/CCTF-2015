.class Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$4;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$4;->a:Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0, v1, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 136
    return-void
.end method
