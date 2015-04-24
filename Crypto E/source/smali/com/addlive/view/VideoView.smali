.class public Lcom/addlive/view/VideoView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/InvalidateCb;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddLive_SDK"


# instance fields
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

    .line 38
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/VideoView;->sinkId:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/addlive/view/VideoView;->mirror:Z

    .line 35
    iput-boolean v1, p0, Lcom/addlive/view/VideoView;->started:Z

    .line 40
    invoke-virtual {p0}, Lcom/addlive/view/VideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/addlive/view/VideoView;->setEGLContextClientVersion(I)V

    .line 45
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    invoke-direct {v0}, Lcom/addlive/view/VideoRenderer;-><init>()V

    iput-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 46
    iget-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {p0, v0}, Lcom/addlive/view/VideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/addlive/view/VideoView;->setRenderMode(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/view/VideoView;->sinkId:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/addlive/view/VideoView;->mirror:Z

    .line 35
    iput-boolean v1, p0, Lcom/addlive/view/VideoView;->started:Z

    .line 54
    invoke-virtual {p0}, Lcom/addlive/view/VideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/addlive/view/VideoView;->setEGLContextClientVersion(I)V

    .line 59
    new-instance v0, Lcom/addlive/view/VideoRenderer;

    invoke-direct {v0}, Lcom/addlive/view/VideoRenderer;-><init>()V

    iput-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    .line 60
    iget-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {p0, v0}, Lcom/addlive/view/VideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/addlive/view/VideoView;->setRenderMode(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/addlive/view/VideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/addlive/view/VideoView;->mirror:Z

    return v0
.end method

.method static synthetic access$100(Lcom/addlive/view/VideoView;)Lcom/addlive/view/VideoRenderer;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    return-object v0
.end method

.method private declared-synchronized isStarted()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/addlive/view/VideoView;->started:Z
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
    .line 146
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/addlive/view/VideoView;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/addlive/view/VideoView;->sinkId:Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/addlive/view/VideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/addlive/view/VideoView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/addlive/view/VideoView;->requestRender()V

    goto :goto_0
.end method

.method public resolutionChanged(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
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

    .line 118
    new-instance v0, Lcom/addlive/view/VideoView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/addlive/view/VideoView$3;-><init>(Lcom/addlive/view/VideoView;II)V

    invoke-virtual {p0, v0}, Lcom/addlive/view/VideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public setSinkId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/addlive/view/VideoView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update the sink Id as rendering is active. Stop first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/addlive/view/VideoView;->sinkId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/addlive/service/RenderRequest;

    iget-object v1, p0, Lcom/addlive/view/VideoView;->sinkId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/addlive/view/VideoView;->mirror:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/addlive/service/RenderRequest;-><init>(Ljava/lang/String;ZLcom/addlive/service/InvalidateCb;)V

    .line 72
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    .line 73
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/addlive/view/VideoView;->setStarted(Z)V

    .line 74
    new-instance v1, Lcom/addlive/view/VideoView$1;

    invoke-direct {v1, p0, v0}, Lcom/addlive/view/VideoView$1;-><init>(Lcom/addlive/view/VideoView;I)V

    invoke-virtual {p0, v1}, Lcom/addlive/view/VideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/view/VideoView;->renderer:Lcom/addlive/view/VideoRenderer;

    invoke-virtual {v1}, Lcom/addlive/view/VideoRenderer;->getRendererId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->stopRender(I)V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/addlive/view/VideoView;->setStarted(Z)V

    .line 90
    new-instance v0, Lcom/addlive/view/VideoView$2;

    invoke-direct {v0, p0}, Lcom/addlive/view/VideoView$2;-><init>(Lcom/addlive/view/VideoView;)V

    invoke-virtual {p0, v0}, Lcom/addlive/view/VideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
