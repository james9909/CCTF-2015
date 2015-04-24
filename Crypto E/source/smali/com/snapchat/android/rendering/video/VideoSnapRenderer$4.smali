.class Lcom/snapchat/android/rendering/video/VideoSnapRenderer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 399
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$4;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter

    .prologue
    .line 402
    invoke-static {}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Completed %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$4;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v4}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->b(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$4;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->b()V

    .line 404
    return-void
.end method
