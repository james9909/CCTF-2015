.class public Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->d:F

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    .line 21
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->b:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iput p2, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->c:F

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 35
    iget v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->c:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 38
    int-to-float v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->d:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 40
    iget v2, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->c:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    .line 41
    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 44
    :cond_0
    iget v2, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->d:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 45
    int-to-float v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    invoke-virtual {p0}, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->invalidateSelf()V

    .line 54
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;->invalidateSelf()V

    .line 61
    return-void
.end method
