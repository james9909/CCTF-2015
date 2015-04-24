.class Lcom/snapchat/android/discover/ui/media/VideoViewController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 209
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$4;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const-string v0, "Error=%s extra=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/snapchat/android/rendering/video/MediaPlayerCodeTranslator;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, "VideoViewController"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$4;->a:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/discover/ui/media/VideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1, v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->a(Ljava/lang/String;)V

    .line 219
    :cond_0
    return v4
.end method
