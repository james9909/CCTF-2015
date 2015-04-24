.class public Lcom/addlive/view/GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/view/GLThread$1;,
        Lcom/addlive/view/GLThread$GLThreadManager;,
        Lcom/addlive/view/GLThread$EglHelper;,
        Lcom/addlive/view/GLThread$SimpleEGLConfigChooser;,
        Lcom/addlive/view/GLThread$ComponentSizeChooser;,
        Lcom/addlive/view/GLThread$BaseConfigChooser;,
        Lcom/addlive/view/GLThread$EGLConfigChooser;,
        Lcom/addlive/view/GLThread$DefaultWindowSurfaceFactory;,
        Lcom/addlive/view/GLThread$EGLWindowSurfaceFactory;,
        Lcom/addlive/view/GLThread$DefaultContextFactory;,
        Lcom/addlive/view/GLThread$EGLContextFactory;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;


# instance fields
.field private mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mPreserveEGLContextOnPause:Z

.field private mRenderComplete:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field private surface:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 894
    new-instance v0, Lcom/addlive/view/GLThread$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/addlive/view/GLThread$GLThreadManager;-><init>(Lcom/addlive/view/GLThread$1;)V

    sput-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    return-void
.end method

.method constructor <init>(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 40
    iput-boolean v2, p0, Lcom/addlive/view/GLThread;->mPreserveEGLContextOnPause:Z

    .line 41
    iput-boolean v1, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    .line 47
    iput v1, p0, Lcom/addlive/view/GLThread;->mWidth:I

    .line 48
    iput v1, p0, Lcom/addlive/view/GLThread;->mHeight:I

    .line 49
    iput-boolean v2, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 50
    iput-object p1, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 51
    iput-boolean v1, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    .line 52
    return-void
.end method

.method static synthetic access$202(Lcom/addlive/view/GLThread;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/addlive/view/GLThread;->mExited:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method private guardedRun()V
    .locals 15

    .prologue
    .line 95
    new-instance v0, Lcom/addlive/view/GLThread$EglHelper;

    invoke-direct {v0, p0}, Lcom/addlive/view/GLThread$EglHelper;-><init>(Lcom/addlive/view/GLThread;)V

    iput-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v8, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v6, 0x0

    .line 105
    const/4 v1, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v0, 0x0

    move v13, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v1

    move v1, v13

    .line 112
    :goto_0
    :try_start_0
    sget-object v10, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 114
    :goto_1
    :try_start_1
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mShouldExit:Z

    if-eqz v11, :cond_0

    .line 115
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 266
    :try_start_2
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 267
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 268
    monitor-exit v1

    .line 270
    :goto_2
    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 118
    :cond_0
    :try_start_3
    iget-object v11, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 119
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v13, v0

    move v0, v6

    move v6, v4

    move v4, v2

    move-object v2, v13

    move v14, v1

    move v1, v5

    move v5, v3

    move v3, v14

    .line 219
    :goto_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    if-eqz v2, :cond_11

    .line 222
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    const/4 v2, 0x0

    move-object v13, v2

    move v2, v4

    move v4, v6

    move v6, v0

    move-object v0, v13

    move v14, v3

    move v3, v5

    move v5, v1

    move v1, v14

    .line 224
    goto :goto_0

    .line 124
    :cond_1
    :try_start_5
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    iget-boolean v12, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    if-eq v11, v12, :cond_2

    .line 125
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    .line 126
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 130
    :cond_2
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mShouldReleaseEglContext:Z

    if-eqz v11, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 132
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 133
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/addlive/view/GLThread;->mShouldReleaseEglContext:Z

    .line 134
    const/4 v3, 0x1

    .line 138
    :cond_3
    if-eqz v5, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 140
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 141
    const/4 v5, 0x0

    .line 145
    :cond_4
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-eqz v11, :cond_7

    .line 146
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 147
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mPreserveEGLContextOnPause:Z

    if-eqz v11, :cond_5

    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Lcom/addlive/view/GLThread$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 148
    :cond_5
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 151
    :cond_6
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Lcom/addlive/view/GLThread$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 152
    iget-object v11, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v11}, Lcom/addlive/view/GLThread$EglHelper;->finish()V

    .line 157
    :cond_7
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    if-nez v11, :cond_9

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-nez v11, :cond_9

    .line 158
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v11, :cond_8

    .line 159
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 161
    :cond_8
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    .line 162
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 166
    :cond_9
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    if-eqz v11, :cond_a

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-eqz v11, :cond_a

    .line 167
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    .line 168
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 171
    :cond_a
    if-eqz v8, :cond_b

    .line 174
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 175
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 179
    :cond_b
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->readyToDraw()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 181
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-nez v11, :cond_c

    .line 182
    if-eqz v3, :cond_f

    .line 183
    const/4 v3, 0x0

    .line 198
    :cond_c
    :goto_4
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-eqz v11, :cond_d

    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-nez v11, :cond_d

    .line 199
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    .line 200
    const/4 v6, 0x1

    .line 201
    const/4 v4, 0x1

    .line 204
    :cond_d
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v11, :cond_10

    .line 205
    iget-boolean v11, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    if-eqz v11, :cond_e

    .line 206
    const/4 v4, 0x1

    .line 207
    iget v2, p0, Lcom/addlive/view/GLThread;->mWidth:I

    .line 208
    iget v1, p0, Lcom/addlive/view/GLThread;->mHeight:I

    .line 209
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    .line 211
    :cond_e
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 213
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    move-object v13, v0

    move v0, v6

    move v6, v4

    move v4, v2

    move-object v2, v13

    move v14, v1

    move v1, v5

    move v5, v3

    move v3, v14

    .line 214
    goto/16 :goto_3

    .line 184
    :cond_f
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->tryAcquireEglContextLocked(Lcom/addlive/view/GLThread;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v11

    if-eqz v11, :cond_c

    .line 186
    :try_start_6
    iget-object v7, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v7}, Lcom/addlive/view/GLThread$EglHelper;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 191
    const/4 v7, 0x1

    :try_start_7
    iput-boolean v7, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    .line 192
    const/4 v7, 0x1

    .line 194
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 219
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 265
    :catchall_2
    move-exception v0

    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 266
    :try_start_9
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 267
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 268
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_a
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->releaseEglContextLocked(Lcom/addlive/view/GLThread;)V

    .line 189
    throw v0

    .line 217
    :cond_10
    sget-object v11, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 227
    :cond_11
    if-eqz v0, :cond_15

    .line 228
    :try_start_b
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    iget-object v8, p0, Lcom/addlive/view/GLThread;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v8}, Lcom/addlive/view/GLThread$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 229
    if-nez v0, :cond_12

    .line 231
    const-string v0, "AddLive_SDK"

    const-string v1, "Failed to create an OpenGL Surface. Ending the GLThread run loop"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 265
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 266
    :try_start_c
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglSurfaceLocked()V

    .line 267
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->stopEglContextLocked()V

    .line 268
    monitor-exit v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    .line 235
    :cond_12
    :try_start_d
    sget-object v8, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v8, v0}, Lcom/addlive/view/GLThread$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 236
    const/4 v8, 0x0

    move-object v9, v0

    .line 239
    :goto_5
    if-eqz v7, :cond_13

    .line 240
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v7, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    iget-object v7, v7, Lcom/addlive/view/GLThread$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v9, v7}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 241
    const/4 v7, 0x0

    .line 244
    :cond_13
    if-eqz v6, :cond_14

    .line 245
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->purgeBuffers()V

    .line 246
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, v9, v4, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 247
    const/4 v6, 0x0

    .line 250
    :cond_14
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 252
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->swap()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v0

    if-nez v0, :cond_16

    .line 253
    const/4 v0, 0x1

    .line 257
    :goto_6
    const/4 v1, 0x1

    move-object v13, v2

    move v2, v4

    move v4, v6

    move v6, v8

    move v8, v1

    move v1, v3

    move v3, v5

    move v5, v0

    move-object v0, v13

    goto/16 :goto_0

    .line 268
    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0

    :cond_15
    move v8, v0

    goto :goto_5

    :cond_16
    move v0, v1

    goto :goto_6
.end method

.method private readyToDraw()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/addlive/view/GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/addlive/view/GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->finish()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    .line 90
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->releaseEglContextLocked(Lcom/addlive/view/GLThread;)V

    .line 92
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    .line 78
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEglHelper:Lcom/addlive/view/GLThread$EglHelper;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread$EglHelper;->destroySurface()V

    .line 80
    :cond_0
    return-void
.end method

.method private waitForRenderComplete()V
    .locals 1

    .prologue
    .line 367
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/addlive/view/GLThread;->ableToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/addlive/view/GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 322
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 323
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    .line 324
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 325
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 327
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 336
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 337
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestPaused:Z

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 340
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 341
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 343
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    return-void
.end method

.method public onWindowResize(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 352
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 353
    :try_start_0
    iput p1, p0, Lcom/addlive/view/GLThread;->mWidth:I

    .line 354
    iput p2, p0, Lcom/addlive/view/GLThread;->mHeight:I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mSizeChanged:Z

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 358
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 361
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->waitForRenderComplete()V

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/addlive/view/GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 379
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 380
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mShouldExit:Z

    .line 381
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 382
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 384
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mShouldReleaseEglContext:Z

    .line 394
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 284
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 285
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRequestRender:Z

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mRenderComplete:Z

    .line 287
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/addlive/view/GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addlive/view/GLThread;->setName(Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/addlive/view/GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->threadExiting(Lcom/addlive/view/GLThread;)V

    .line 69
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_1
    const-string v1, "AddLive_SDK"

    const-string v2, "Got an error during rendering loop"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->threadExiting(Lcom/addlive/view/GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/addlive/view/GLThread$GLThreadManager;->threadExiting(Lcom/addlive/view/GLThread;)V

    throw v0
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/addlive/view/GLThread;->surface:Landroid/graphics/SurfaceTexture;

    .line 56
    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 292
    const-string v0, "AddLive_SDK"

    const-string v1, "Processing surface created"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 294
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    .line 295
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 298
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    const-string v0, "AddLive_SDK"

    const-string v1, "surface created processed"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 2

    .prologue
    .line 308
    sget-object v1, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    monitor-enter v1

    .line 309
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/addlive/view/GLThread;->mHasSurface:Z

    .line 310
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 311
    :goto_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/addlive/view/GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 313
    :try_start_1
    sget-object v0, Lcom/addlive/view/GLThread;->sGLThreadManager:Lcom/addlive/view/GLThread$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    return-void
.end method
