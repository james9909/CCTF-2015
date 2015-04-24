.class public Lcom/snapchat/android/discover/ui/BrandIconProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;
    }
.end annotation


# instance fields
.field final a:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

.field private final b:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

.field private final c:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/ui/BrandIconProvider;-><init>(Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->g:Z

    .line 174
    new-instance v0, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/BrandIconProvider$1;-><init>(Lcom/snapchat/android/discover/ui/BrandIconProvider;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 64
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->b:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 65
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->c:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->b:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {p1, p2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/BrandIconProvider;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/BrandIconProvider;)Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->h:Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 219
    new-instance v0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;

    iget v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    int-to-float v1, v1

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;F)V

    .line 220
    if-eqz p3, :cond_0

    .line 221
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->a(F)V

    .line 222
    invoke-virtual {v0, p2}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->a(I)V

    .line 224
    :cond_0
    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    if-ge v0, p1, :cond_0

    .line 79
    iput p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    iget v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    if-gtz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t create brand icon without a valid diameter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-eqz p3, :cond_2

    .line 131
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->q()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->t()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_1
    :goto_1
    return-void

    .line 134
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->p()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->s()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_3
    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_4

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "inverted"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string v2, "channel_page"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    new-instance v2, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    invoke-direct {v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Z)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b(I)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(I)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Landroid/os/Bundle;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a()Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->c:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    goto :goto_1

    .line 164
    :cond_4
    const-string v1, "BrandIconProvider"

    const-string v2, "DISCOVER-MEDIA-BRAND-ICON: %s\'s icon has not been downloaded yet: [%s] inverted? %b"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->e:Ljava/lang/String;

    .line 168
    iput-boolean v5, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->g:Z

    .line 169
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public a(Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->h:Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;

    .line 70
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->g:Z

    return v0
.end method

.method protected b(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 233
    new-instance v0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;

    iget v1, p0, Lcom/snapchat/android/discover/ui/BrandIconProvider;->d:I

    int-to-float v1, v1

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;-><init>(IF)V

    return-object v0
.end method
