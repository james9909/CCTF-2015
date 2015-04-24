.class public Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleFactorPair"
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/snapchat/android/camera/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameraview/CameraView;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;->c:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p2, p0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;->a:F

    .line 298
    iput p3, p0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;->b:F

    .line 299
    return-void
.end method
