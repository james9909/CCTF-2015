.class Lcom/snapchat/android/discover/ui/media/VideoViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/media/VideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/media/VideoViewController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/media/VideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->d(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->c(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/discover/ui/media/VideoViewController$2$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController$2$1;-><init>(Lcom/snapchat/android/discover/ui/media/VideoViewController$2;Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/ui/TextureVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method
