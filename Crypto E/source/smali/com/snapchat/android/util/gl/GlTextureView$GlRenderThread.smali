.class Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/gl/GlTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlRenderThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/gl/GlTextureView;

.field private final b:Landroid/graphics/SurfaceTexture;

.field private volatile c:Z

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLContext;

.field private g:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile h:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/gl/GlTextureView;Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    iput-object p1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->a:Lcom/snapchat/android/util/gl/GlTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->c:Z

    .line 84
    iput-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->h:Z

    .line 87
    iput-object p2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->b:Landroid/graphics/SurfaceTexture;

    .line 88
    const-string v0, "GlTextureView rendering thread."

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->setName(Ljava/lang/String;)V

    .line 89
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->setPriority(I)V

    .line 90
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 133
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 134
    const-string v1, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 148
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 161
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 170
    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->f()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 176
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {p0, v1, v2, v0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->f:Ljavax/microedition/khronos/egl/EGLContext;

    .line 182
    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->b:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_6

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 186
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_5

    .line 187
    const-string v0, "GLTextureView"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_4
    return-void

    .line 190
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWindowSurface failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 206
    new-array v5, v4, [I

    .line 207
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 208
    invoke-direct {p0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g()[I

    move-result-object v2

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 213
    aget-object v0, v3, v6

    .line 215
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()[I
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 202
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 201
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public a()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->h:Z

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->c:Z

    .line 129
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e()V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->a:Lcom/snapchat/android/util/gl/GlTextureView;

    invoke-virtual {v0}, Lcom/snapchat/android/util/gl/GlTextureView;->a()V

    .line 97
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->c:Z

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->a:Lcom/snapchat/android/util/gl/GlTextureView;

    invoke-virtual {v0}, Lcom/snapchat/android/util/gl/GlTextureView;->b()V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 102
    invoke-direct {p0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->c()V

    .line 105
    monitor-enter p0

    .line 106
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :try_start_2
    const-string v1, "GLTextureView"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->h:Z

    .line 114
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->d()V

    .line 118
    return-void
.end method
