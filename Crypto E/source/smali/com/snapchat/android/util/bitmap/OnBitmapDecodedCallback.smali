.class public Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 26
    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->b()Landroid/widget/ImageView;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    instance-of v2, v0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;

    if-eqz v2, :cond_0

    .line 31
    check-cast v0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;

    .line 32
    invoke-virtual {p2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;->a()Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    :cond_0
    return-void
.end method
