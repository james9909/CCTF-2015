.class Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->onAutoFocus(ZLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;->b:Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;

    iput-boolean p2, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;->b:Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->b(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;->a:Z

    iget-object v2, p0, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger$1;->b:Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;

    invoke-static {v2}, Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;->a(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxyAutoFocusCallback;->a(ZLcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V

    .line 37
    return-void
.end method
