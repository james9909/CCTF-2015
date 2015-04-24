.class Lcom/snapchat/android/discover/ui/media/VideoViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 193
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$3;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$3;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$3;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->d(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->b()V

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
