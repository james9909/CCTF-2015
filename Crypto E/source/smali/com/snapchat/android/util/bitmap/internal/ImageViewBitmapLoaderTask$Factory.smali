.class public Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;)Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;-><init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;)V

    return-object v0
.end method
