.class public Lcom/snapchat/videotranscoder/cts/InputSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLSurface;

.field private d:Landroid/view/Surface;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->e:Z

    .line 45
    const-string v0, "InputSurface"

    const-string v1, "Creating InputSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->d:Landroid/view/Surface;

    .line 50
    iput-boolean p2, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->e:Z

    .line 51
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->d()V

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    .line 156
    const-string v0, "InputSurface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGL error encountered (see log)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    .line 60
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 64
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 73
    new-array v3, v8, [Landroid/opengl/EGLConfig;

    .line 74
    new-array v6, v8, [I

    .line 75
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 81
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->b:Landroid/opengl/EGLContext;

    .line 82
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->b:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-array v0, v8, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 89
    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->d:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    .line 90
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->a(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x42t 0x31t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->b:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 106
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 108
    iget-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->e:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->e:Z

    .line 113
    :cond_1
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    .line 114
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->b:Landroid/opengl/EGLContext;

    .line 115
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    .line 116
    iput-object v4, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->d:Landroid/view/Surface;

    .line 117
    return-void
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 147
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/snapchat/videotranscoder/cts/InputSurface;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
