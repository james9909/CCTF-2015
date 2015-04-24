.class public Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/BitmapShader;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:F

.field private final f:I

.field private final g:I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->h:F

    .line 42
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->b:Landroid/graphics/BitmapShader;

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->f:I

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->g:I

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->a:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->b:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iput p2, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->e:F

    .line 56
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iput p1, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->h:F

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->invalidateSelf()V

    .line 113
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->invalidateSelf()V

    .line 122
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/4 v6, 0x0

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->g:I

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->f:I

    int-to-float v3, v3

    iget v4, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->g:I

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 69
    iget-object v3, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 70
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 71
    iget v3, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->h:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->h:F

    div-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 72
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 73
    iget-object v1, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->b:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 77
    iget v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->e:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 80
    int-to-float v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->h:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 81
    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    iget v2, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->h:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    .line 83
    int-to-float v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 62
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->invalidateSelf()V

    .line 92
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/ui/drawable/CircleBitmapDrawable;->invalidateSelf()V

    .line 98
    return-void
.end method
