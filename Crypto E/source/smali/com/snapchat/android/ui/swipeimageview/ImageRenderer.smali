.class public Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-interface {p1, p2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->d:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    :goto_0
    return p2

    :cond_0
    move p2, p3

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->c()Landroid/graphics/Paint;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a:Landroid/graphics/Paint;

    .line 90
    :cond_0
    return-object v0
.end method

.method protected a(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    float-to-int v0, p1

    move v6, v0

    :goto_0
    int-to-float v0, v6

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 78
    const/high16 v0, 0x437f

    const/high16 v1, 0x3f80

    int-to-float v2, v6

    sub-float/2addr v2, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 82
    :cond_0
    const/16 v0, 0xff

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    return-void
.end method

.method public a(Landroid/graphics/Canvas;FLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a:Landroid/graphics/Paint;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a:Landroid/graphics/Paint;

    if-ne p4, v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 67
    int-to-float v3, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    int-to-float v3, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v2, p1

    move v4, v1

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Paint;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a:Landroid/graphics/Paint;

    .line 22
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeViewState;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/graphics/Canvas;Lcom/snapchat/android/ui/layertype/LayerType;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v3}, Lcom/snapchat/android/ui/SwipeViewState;->c(Z)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/snapchat/android/ui/SwipeViewState;->c(Z)I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;II)I

    move-result v0

    .line 37
    invoke-virtual {p1, v3}, Lcom/snapchat/android/ui/SwipeViewState;->d(Z)I

    move-result v1

    invoke-virtual {p1, v2}, Lcom/snapchat/android/ui/SwipeViewState;->d(Z)I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;II)I

    move-result v1

    .line 39
    invoke-interface {p2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)Landroid/graphics/Paint;

    move-result-object v0

    .line 40
    invoke-interface {p2, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)Landroid/graphics/Paint;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->y()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, p3, v2, v0, v1}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Landroid/graphics/Canvas;FLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/snapchat/android/ui/layertype/LayerType;->b:Lcom/snapchat/android/ui/layertype/LayerType;

    if-ne p4, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->y()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->z()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, p3, v0}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method
