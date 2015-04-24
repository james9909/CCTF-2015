.class Lcom/snapchat/android/rendering/video/VideoSnapRenderer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 408
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$5;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 411
    invoke-static {}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: %s extra=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/snapchat/android/rendering/video/MediaPlayerCodeTranslator;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$5;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->c:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 413
    invoke-static {p2, p3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(II)V

    .line 414
    return v5
.end method
