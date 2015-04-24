.class Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;->b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    iput p2, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;->b:Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;

    invoke-static {v0}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a(Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger$3;->a:I

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallback;->c(I)V

    .line 55
    return-void
.end method
