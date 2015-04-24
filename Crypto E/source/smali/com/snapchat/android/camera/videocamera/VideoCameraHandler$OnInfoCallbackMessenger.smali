.class Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnInfoCallbackMessenger"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;

.field final synthetic b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoRecordingCallback;

    .line 388
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const-string v0, "VideoCameraHandler"

    const-string v1, "Video InfoListener: Info event #[%d, %d] has occured"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    packed-switch p2, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 396
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger$1;-><init>(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$OnInfoCallbackMessenger;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
