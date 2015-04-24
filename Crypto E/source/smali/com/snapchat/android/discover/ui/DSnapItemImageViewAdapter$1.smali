.class Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$1;
.super Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;

    invoke-direct {p0}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$1;->a:Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->b()V

    .line 141
    :cond_0
    return-void
.end method
