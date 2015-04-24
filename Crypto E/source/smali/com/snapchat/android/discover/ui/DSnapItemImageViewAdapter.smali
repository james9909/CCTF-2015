.class public Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$2;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

.field private e:Lcom/snapchat/android/ui/FitWidthViewGroup;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field private h:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;-><init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/squareup/otto/Bus;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;-><init>()V

    .line 134
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->h:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->c:Lcom/squareup/otto/Bus;

    .line 51
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->d:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->g:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 1
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->g:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapMediaUtils;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 121
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

    .line 126
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 128
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 56
    new-instance v0, Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    .line 57
    new-instance v0, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/FitWidthImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    .line 59
    sget-object v0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter$2;->a:[I

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPanel;->h()Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/discover/model/DSnapPanel;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->h:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Z)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a()Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->d:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    .line 87
    return v3

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->d:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Landroid/widget/ImageView;)V

    .line 132
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemImageViewAdapter;->e:Lcom/snapchat/android/ui/FitWidthViewGroup;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method
