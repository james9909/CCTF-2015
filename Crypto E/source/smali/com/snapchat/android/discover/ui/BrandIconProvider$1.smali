.class Lcom/snapchat/android/discover/ui/BrandIconProvider$1;
.super Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/BrandIconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/BrandIconProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/BrandIconProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-direct {p0}, Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    invoke-virtual {p2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->g()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v2, "inverted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 181
    const-string v3, "channel_page"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 183
    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 184
    const-string v3, "BrandIconProvider"

    const-string v4, "DISCOVER-MEDIA-BRAND-ICON: %s could not be decoded. Inverted? %b "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v3

    if-eqz v2, :cond_1

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V

    .line 193
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v0, v6}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Z)Z

    .line 202
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->b()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-virtual {p2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;->b()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->b(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->c(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->c(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;->a()V

    .line 208
    :cond_0
    return-void

    .line 189
    :cond_1
    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    goto :goto_0

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v3, v1}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-virtual {p1}, Lcom/snapchat/android/util/bitmap/BitmapDecodeResult;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v0

    invoke-virtual {v3, v4, v0, v2}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;->a:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-static {v0, v7}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Z)Z

    goto :goto_1
.end method
