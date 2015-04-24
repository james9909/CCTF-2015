.class public Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;
.super Lcom/snapchat/videotranscoder/cts/OutputSurface;
.source "SourceFile"


# direct methods
.method public constructor <init>([F)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/videotranscoder/cts/OutputSurface;-><init>([FLjava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->a(F)V

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    check-cast v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;

    invoke-static {p1, p2}, Lcom/snapchat/videotranscoder/video/ShaderText;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;->c(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected a([F)V
    .locals 3
    .parameter

    .prologue
    .line 25
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 26
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Transformation matrix must be defined and have a length of 16"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;

    invoke-direct {v0, p1}, Lcom/snapchat/videotranscoder/cts/SplitTextureRenderer;-><init>([F)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    .line 29
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a()V

    .line 31
    const-string v0, "SplitOutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->d:Landroid/graphics/SurfaceTexture;

    .line 34
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 35
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->e:Landroid/view/Surface;

    .line 36
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/SplitOutputSurface;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 55
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    const-string v0, "SplitOutputSurface"

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
