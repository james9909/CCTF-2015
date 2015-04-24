.class public Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable$Factory;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 21
    iput-object p3, p0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;->a:Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/AsyncPlaceholderDrawable;->a:Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    return-object v0
.end method
