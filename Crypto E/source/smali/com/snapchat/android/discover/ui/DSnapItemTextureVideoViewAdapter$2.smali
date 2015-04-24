.class Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$2;
.super Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    invoke-direct {p0}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 232
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->b(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;Z)Z

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$2;->a:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;)V

    .line 234
    return-void
.end method
