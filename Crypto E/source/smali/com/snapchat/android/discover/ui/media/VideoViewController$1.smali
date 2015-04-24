.class Lcom/snapchat/android/discover/ui/media/VideoViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 143
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$1;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$1;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->a()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$1;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$1;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->c(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/ui/TextureVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 156
    :cond_1
    return-void
.end method
