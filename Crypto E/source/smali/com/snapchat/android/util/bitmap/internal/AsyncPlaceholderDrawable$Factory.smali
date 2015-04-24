.class public Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;)Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;

    invoke-direct {v0, p1, p2, p3}, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;)V

    return-object v0
.end method
