.class Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;->onInfo(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger$1;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger$1;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;

    iget-object v0, v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;

    invoke-interface {v0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;->v()V

    .line 400
    return-void
.end method
