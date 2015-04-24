.class Lcom/snapchat/android/ui/TextureVideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 393
    iput-object p1, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->c(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;I)I

    .line 398
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->e(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->j(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v0}, Lcom/snapchat/android/ui/TextureVideoView;->j(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/TextureVideoView$5;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-static {v1}, Lcom/snapchat/android/ui/TextureVideoView;->d(Lcom/snapchat/android/ui/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_1
    return v2
.end method
