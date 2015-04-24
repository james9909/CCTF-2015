.class Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/rendering/video/VideoSnapRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 371
    invoke-static {}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prepared %s, duration:%d width:%d height:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v4}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->c(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 379
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/Resolution;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    .line 380
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v1, v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Lcom/snapchat/android/util/Resolution;)V

    .line 381
    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v2}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/Resolution;)V

    .line 383
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v2}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v3}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a(III)V

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->d(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    iget-object v1, v1, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$3;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    goto :goto_0
.end method
