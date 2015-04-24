.class Lcom/snapchat/android/ui/TextureVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/TextureVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->k(Lcom/snapchat/android/ui/TextureVideoView;)V

    .line 466
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;Z)V

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, p3}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 473
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v3}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v3}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v3

    if-ne v3, p3, :cond_3

    .line 474
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v2}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$7;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 480
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 472
    goto :goto_0

    :cond_3
    move v1, v2

    .line 473
    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    return-void
.end method
