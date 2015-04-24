.class public Lcom/snapchat/videotranscoder/cts/OutputSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field protected a:Landroid/opengl/EGLDisplay;

.field protected b:Landroid/opengl/EGLContext;

.field protected c:Landroid/opengl/EGLSurface;

.field protected d:Landroid/graphics/SurfaceTexture;

.field protected e:Landroid/view/Surface;

.field protected f:Ljava/lang/Object;

.field protected g:Z

.field protected h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>([FLjava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->b:Landroid/opengl/EGLContext;

    .line 40
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->c:Landroid/opengl/EGLSurface;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->f:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->i:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a([F)V

    .line 73
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->d()V

    .line 154
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 155
    const-string v0, "OutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEGLDisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "OutputSurface"

    const-string v1, "eglDestroySurface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 158
    const-string v0, "OutputSurface"

    const-string v1, "eglDestroyContext"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 160
    const-string v0, "OutputSurface"

    const-string v1, "eglReleaseThread"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 162
    const-string v0, "OutputSurface"

    const-string v1, "eglTerminate"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 165
    :cond_0
    const-string v0, "OutputSurface"

    const-string v1, "releasing surface"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->e:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 170
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->a:Landroid/opengl/EGLDisplay;

    .line 171
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->b:Landroid/opengl/EGLContext;

    .line 172
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->c:Landroid/opengl/EGLSurface;

    .line 173
    iput-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    .line 174
    iput-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->e:Landroid/view/Surface;

    .line 175
    iput-object v3, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->d:Landroid/graphics/SurfaceTexture;

    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->c(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method protected a([F)V
    .locals 3
    .parameter

    .prologue
    .line 80
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 81
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Transformation matrix must be defined and have a length of 16"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-direct {v0, p1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;-><init>([F)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    .line 84
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->a()V

    .line 91
    const-string v0, "OutputSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v2}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->f()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->d:Landroid/graphics/SurfaceTexture;

    .line 105
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 106
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->e:Landroid/view/Surface;

    .line 107
    return-void
.end method

.method public a(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    const-string v1, "OutputSurface"

    const-string v2, "Checking for a new image"

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 247
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->f:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 248
    iget-boolean v2, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->g:Z

    if-nez v2, :cond_0

    .line 249
    const-string v2, "OutputSurface"

    const-string v3, "No new image"

    invoke-static {v2, v3}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :try_start_2
    monitor-exit v1

    .line 263
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 257
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->g:Z

    .line 258
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    const-string v0, "OutputSurface"

    const-string v1, "New image available"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->b(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->e:Landroid/view/Surface;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->h:Lcom/snapchat/videotranscoder/cts/TextureRenderer;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/TextureRenderer;->e()V

    .line 271
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter

    .prologue
    .line 275
    const-string v0, "OutputSurface"

    const-string v1, "new frame available"

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->g:Z

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 280
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->g:Z

    .line 281
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/OutputSurface;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    return-void
.end method
