.class public Lcom/addlive/view/ALVideoTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"


# instance fields
.field private glThread:Lcom/addlive/view/GLThread;

.field private mirror:Z

.field private renderer:Lcom/addlive/view/VideoRenderer;

.field private sinkId:Ljava/lang/String;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    .line 35
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z

    .line 43
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->constructCommon()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    .line 35
    iput-boolean v1, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z

    .line 48
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->constructCommon()V

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/addlive/view/ALVideoTextureView;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    return v0
.end method

.method static synthetic access$200(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/VideoRenderer;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/addlive/view/ALVideoTextureView;)Lcom/addlive/view/GLThread;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    return-object v0
.end method

.method private constructCommon()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    invoke-direct {v0}, Lcom/addlive/view/VideoRenderer;-><init>()V

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 56
    new-instance v0, Lcom/addlive/view/GLThread;

    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-direct {v0, v1}, Lcom/addlive/view/GLThread;-><init>(Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    .line 57
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->start()V

    .line 60
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/addlive/view/ALVideoTextureView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 63
    :cond_1
    invoke-virtual {p0, p0}, Lcom/addlive/view/ALVideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0
.end method

.method private declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setStarted(Z)V
    .locals 1
    .parameter

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/addlive/view/ALVideoTextureView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p1}, Lcom/addlive/view/GLThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 156
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->surfaceCreated()V

    .line 157
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 158
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->surfaceDestroyed()V

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 165
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    return-void
.end method

.method public resolutionChanged(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 129
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolutionChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v1, Lcom/addlive/view/ALVideoTextureView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/addlive/view/ALVideoTextureView$3;-><init>(Lcom/addlive/view/ALVideoTextureView;II)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public setSinkId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/addlive/view/ALVideoTextureView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update the sink Id as rendering is active. Stop first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 74
    const-string v0, "AddLive_SDK"

    const-string v1, "Starting ALVideoTextureView"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/addlive/service/RenderRequest;

    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->sinkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/addlive/view/ALVideoTextureView;->mirror:Z

    new-instance v3, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/addlive/view/ALVideoTextureView$InvalidateCallback;-><init>(Lcom/addlive/view/ALVideoTextureView;Lcom/addlive/view/ALVideoTextureView$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/addlive/service/RenderRequest;-><init>(Ljava/lang/String;ZLcom/addlive/service/InvalidateCb;)V

    .line 78
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    .line 79
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/addlive/view/ALVideoTextureView;->setStarted(Z)V

    .line 80
    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v2, Lcom/addlive/view/ALVideoTextureView$1;

    invoke-direct {v2, p0, v0}, Lcom/addlive/view/ALVideoTextureView$1;-><init>(Lcom/addlive/view/ALVideoTextureView;I)V

    invoke-virtual {v1, v2}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 87
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/GLThread;->onWindowResize(II)V

    .line 88
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/addlive/view/ALVideoTextureView;->forceLayout()V

    .line 90
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "AddLive_SDK"

    const-string v1, "Stopping ALVideoTextureView"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/view/ALVideoTextureView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v1}, Lcom/addlive/view/VideoRenderer;->getRendererId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->stopRender(I)V

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/addlive/view/ALVideoTextureView;->setStarted(Z)V

    .line 101
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    new-instance v1, Lcom/addlive/view/ALVideoTextureView$2;

    invoke-direct {v1, p0}, Lcom/addlive/view/ALVideoTextureView$2;-><init>(Lcom/addlive/view/ALVideoTextureView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->requestRender()V

    .line 108
    iget-object v0, p0, Lcom/addlive/view/ALVideoTextureView;->glThread:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->onPause()V

    .line 109
    return-void
.end method
