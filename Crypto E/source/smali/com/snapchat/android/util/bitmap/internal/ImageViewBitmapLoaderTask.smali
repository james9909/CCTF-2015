.class public Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

.field private final b:Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;

.field private final c:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 23
    new-instance v0, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    invoke-direct {v0}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;-><init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)V

    .line 24
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    .line 30
    iput-object p2, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->b:Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;

    .line 31
    iput-object p3, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->c:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;
    .locals 5
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->b:Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;

    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->i()Lcom/snapchat/android/util/bitmap/internal/BitmapSource;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->d()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v3}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->c()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v4}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->h()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/bitmap/internal/BitmapDecoder;->a(Lcom/snapchat/android/util/bitmap/internal/BitmapSource;IIZ)Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->f()Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->c:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    iget-object v1, p0, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a:Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a([Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/bitmap/internal/ImageViewBitmapLoaderTask;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;)V

    return-void
.end method
