.class public Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/hardware/CameraManager;
.implements Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;


# instance fields
.field private final a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

.field private final b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

.field private c:Landroid/hardware/Camera;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/hardware/Camera$Parameters;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    .line 51
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->d:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->c:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->c:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->b(ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->e:Z

    return p1
.end method

.method private b(ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lcom/snapchat/android/camera/CameraUtils;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->c:Landroid/hardware/Camera;

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->d:Landroid/hardware/Camera$Parameters;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->b:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    iget-object v1, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->d:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Landroid/hardware/Camera$Parameters;)V

    .line 74
    invoke-virtual {p2, p0, p1}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->a(Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;I)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p2, p1}, Lcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;->c(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->d:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a(Z)V

    .line 83
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->m:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$13;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$13;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;I)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method public a(ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$1;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;ILcom/snapchat/android/camera/hardware/callback/CameraOpenCallbackMessenger;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->l:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$12;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$12;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public a(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->c:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$3;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)V
    .locals 3
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->h:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$8;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$8;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Lcom/snapchat/android/camera/hardware/callback/AutofocusCallbackMessenger;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->k:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$11;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;Lcom/snapchat/android/camera/hardware/callback/PreviewCallbackMessenger;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 218
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->b:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$2;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->d()Z

    .line 103
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->n:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$14;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$14;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;[B)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public b()Landroid/hardware/Camera;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->c:Landroid/hardware/Camera;

    return-object v0
.end method

.method public b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->j:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$10;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$10;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->d()Z

    .line 207
    :cond_0
    return-void
.end method

.method public c()Landroid/hardware/Camera$Parameters;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->d:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$4;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->d()Z

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->d:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$5;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->d()Z

    .line 144
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->f:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$6;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$6;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->g:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$7;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->d()Z

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->i:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->ordinal()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl$9;-><init>(Lcom/snapchat/android/camera/hardware/SnapchatCameraManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method
