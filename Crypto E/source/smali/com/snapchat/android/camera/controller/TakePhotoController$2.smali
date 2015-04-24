.class Lcom/snapchat/android/camera/controller/TakePhotoController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/controller/TakePhotoController;->d(Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/PhotoBitmapProvider;

.field final synthetic b:Lcom/snapchat/android/camera/TakePhotoCallback;

.field final synthetic c:Lcom/snapchat/android/camera/controller/FlashController;

.field final synthetic d:Lcom/snapchat/android/camera/controller/TakePhotoController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/controller/TakePhotoController;Lcom/snapchat/android/camera/PhotoBitmapProvider;Lcom/snapchat/android/camera/TakePhotoCallback;Lcom/snapchat/android/camera/controller/FlashController;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->d:Lcom/snapchat/android/camera/controller/TakePhotoController;

    iput-object p2, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->a:Lcom/snapchat/android/camera/PhotoBitmapProvider;

    iput-object p3, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->b:Lcom/snapchat/android/camera/TakePhotoCallback;

    iput-object p4, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->c:Lcom/snapchat/android/camera/controller/FlashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->a:Lcom/snapchat/android/camera/PhotoBitmapProvider;

    iget-object v1, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->d:Lcom/snapchat/android/camera/controller/TakePhotoController;

    iget-object v1, v1, Lcom/snapchat/android/camera/controller/TakePhotoController;->b:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->j()Lcom/snapchat/android/util/Resolution;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->b:Lcom/snapchat/android/camera/TakePhotoCallback;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/PhotoBitmapProvider;->a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/TakePhotoCallback;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/camera/controller/TakePhotoController$2;->c:Lcom/snapchat/android/camera/controller/FlashController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/controller/FlashController;->a(Z)V

    .line 78
    return-void
.end method
