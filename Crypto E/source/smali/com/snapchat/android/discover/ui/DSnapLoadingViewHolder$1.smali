.class Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;
.super Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;->a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-direct {p0}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;->a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;->a:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->b(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method
