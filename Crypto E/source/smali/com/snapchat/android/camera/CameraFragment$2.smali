.class Lcom/snapchat/android/camera/CameraFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/CameraFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment$2;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$2;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-static {v0}, Lcom/snapchat/android/camera/CameraFragment;->b(Lcom/snapchat/android/camera/CameraFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c()V

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$2;->a:Lcom/snapchat/android/camera/CameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CameraFragment;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    sget-object v1, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->c:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a(Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;)V

    .line 684
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$2;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/CameraFragment;->p()Z

    .line 685
    return-void
.end method
