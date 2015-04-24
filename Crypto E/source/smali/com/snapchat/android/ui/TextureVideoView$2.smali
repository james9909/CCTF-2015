.class Lcom/snapchat/android/ui/TextureVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 314
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v3}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;Z)Z

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;Z)Z

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;Z)Z

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->f(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    .line 335
    if-eqz v0, :cond_2

    .line 336
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->a(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->b(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 345
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 347
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 365
    :cond_3
    :goto_0
    return-void

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/TextureVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->g(Lcom/snapchat/android/ui/TextureVideoView;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$2;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    goto :goto_0
.end method
