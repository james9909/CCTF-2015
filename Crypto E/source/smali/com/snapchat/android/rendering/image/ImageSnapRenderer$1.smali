.class Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/cache/Cache$OnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

.field final synthetic b:Lcom/snapchat/android/model/ReceivedSnap;

.field final synthetic c:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->c:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    iput-object p2, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    iput-object p3, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 95
    invoke-static {}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBitmap loaded for %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->c:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    if-nez p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->b:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 108
    :goto_1
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->c:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->c:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->b(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->M()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$1;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a(III)V

    goto :goto_1
.end method
