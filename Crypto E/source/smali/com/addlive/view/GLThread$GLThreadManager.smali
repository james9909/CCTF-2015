.class Lcom/addlive/view/GLThread$GLThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/view/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kADRENO:Ljava/lang/String; = "Adreno"

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/addlive/view/GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 800
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/addlive/view/GLThread$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/addlive/view/GLThread$1;)V
    .locals 0
    .parameter

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/addlive/view/GLThread$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 875
    iget-boolean v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_0

    .line 877
    iput-boolean v1, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 878
    iput-boolean v1, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 880
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 861
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v2, :cond_3

    .line 862
    invoke-direct {p0}, Lcom/addlive/view/GLThread$GLThreadManager;->checkGLESVersion()V

    .line 863
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 864
    iget v2, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 865
    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 867
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 869
    :cond_0
    iget-boolean v2, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v2, :cond_1

    const-string v2, "Adreno"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mLimitedGLESContexts:Z

    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    move v2, v0

    .line 865
    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseEglContextLocked(Lcom/addlive/view/GLThread;)V
    .locals 1
    .parameter

    .prologue
    .line 842
    iget-object v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    if-ne v0, p1, :cond_0

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    .line 845
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 846
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 856
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/addlive/view/GLThread$GLThreadManager;->checkGLESVersion()V

    .line 857
    iget-boolean v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/addlive/view/GLThread;)V
    .locals 1
    .parameter

    .prologue
    .line 803
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Lcom/addlive/view/GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/addlive/view/GLThread;->access$202(Lcom/addlive/view/GLThread;Z)Z

    .line 804
    iget-object v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    if-ne v0, p1, :cond_0

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    .line 807
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    monitor-exit p0

    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/addlive/view/GLThread;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 818
    iget-object v1, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    if-nez v1, :cond_2

    .line 819
    :cond_0
    iput-object p1, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    .line 820
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 834
    :cond_1
    :goto_0
    return v0

    .line 823
    :cond_2
    invoke-direct {p0}, Lcom/addlive/view/GLThread$GLThreadManager;->checkGLESVersion()V

    .line 824
    iget-boolean v1, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 831
    iget-object v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    if-eqz v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/addlive/view/GLThread$GLThreadManager;->mEglOwner:Lcom/addlive/view/GLThread;

    invoke-virtual {v0}, Lcom/addlive/view/GLThread;->requestReleaseEglContextLocked()V

    .line 834
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
