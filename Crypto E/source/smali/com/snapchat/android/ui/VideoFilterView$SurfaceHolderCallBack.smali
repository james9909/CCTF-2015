.class Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VideoFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceHolderCallBack"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/android/ui/VideoFilterView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;-><init>(Lcom/snapchat/android/ui/VideoFilterView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;->a:Lcom/snapchat/android/ui/VideoFilterView;

    new-instance v1, Lcom/snapchat/videotranscoder/cts/InputSurface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/videotranscoder/cts/InputSurface;-><init>(Landroid/view/Surface;Z)V

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->a(Lcom/snapchat/android/ui/VideoFilterView;Lcom/snapchat/videotranscoder/cts/InputSurface;)Lcom/snapchat/videotranscoder/cts/InputSurface;

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->c(Lcom/snapchat/android/ui/VideoFilterView;)V

    .line 281
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 286
    const-string v0, "VideoFilterView"

    const-string v1, "Surface destroyed!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->d(Lcom/snapchat/android/ui/VideoFilterView;)Lcom/snapchat/videotranscoder/cts/InputSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/cts/InputSurface;->a()V

    .line 288
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$SurfaceHolderCallBack;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-static {v0}, Lcom/snapchat/android/ui/VideoFilterView;->e(Lcom/snapchat/android/ui/VideoFilterView;)V

    .line 289
    return-void
.end method
