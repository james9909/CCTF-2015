.class Lcom/snapchat/android/rendering/video/VideoSnapRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 355
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$2;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 358
    invoke-static {}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInfo: %s extra=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/snapchat/android/rendering/video/MediaPlayerCodeTranslator;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$2;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V

    .line 363
    :cond_0
    return v5
.end method
