.class Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

.field final synthetic b:I

.field final synthetic c:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;->c:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    iput-object p2, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;->a:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    iput p3, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;->c:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;->a:Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    iget v2, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$1;->b:I

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V

    .line 35
    return-void
.end method
