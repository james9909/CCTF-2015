.class public Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$3;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

.field private final e:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

.field private f:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/snapchat/android/ui/FitWidthViewGroup;

.field private h:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field private i:Z

.field private j:Z

.field private k:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/media/VideoViewController;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/discover/ui/media/VideoViewController;-><init>(Z)V

    new-instance v2, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-direct {v2, p1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/ui/media/VideoViewController;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/ui/media/VideoViewController;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->i:Z

    .line 49
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->j:Z

    .line 228
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->k:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->c:Lcom/squareup/otto/Bus;

    .line 61
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    .line 62
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->e:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->h()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->j:Z

    return p1
.end method

.method private h()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->h:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->j:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->h:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->b()V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 151
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->h:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V

    .line 217
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_1

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 180
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 183
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 184
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 187
    :cond_0
    new-instance v1, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapbryo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/discover/model/DSnapbryo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a()Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a()V

    .line 195
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 197
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    new-instance v2, Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    .line 69
    sget-object v2, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$3;->a:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPanel;->h()Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 80
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 85
    :goto_0
    sget-object v2, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$3;->b:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPanel;->g()Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 96
    :goto_1
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPanel;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/snapchat/android/ui/TextureVideoView;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    .line 98
    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    invoke-virtual {v4, v3, v2, v0}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Lcom/snapchat/android/ui/TextureVideoView;Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_0
    return v1

    .line 71
    :pswitch_1
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 88
    goto :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 85
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Landroid/widget/ImageView;
    .locals 5
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPanel;->c()Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->j:Z

    .line 125
    new-instance v0, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/snapchat/android/ui/FitWidthImageView;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    invoke-direct {v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Z)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->k:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a()Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->e:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 140
    :goto_0
    return-object v0

    .line 138
    :cond_0
    iput-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->j:Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->e:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Landroid/widget/ImageView;)V

    .line 240
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->g:Lcom/snapchat/android/ui/FitWidthViewGroup;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->b:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public n_()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->a(Z)V

    .line 165
    return-void
.end method

.method public o_()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->d:Lcom/snapchat/android/discover/ui/media/VideoViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/media/VideoViewController;->b(Z)V

    .line 170
    return-void
.end method
