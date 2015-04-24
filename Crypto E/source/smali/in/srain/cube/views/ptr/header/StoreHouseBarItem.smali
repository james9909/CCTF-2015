.class public Lin/srain/cube/views/ptr/header/StoreHouseBarItem;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/PointF;

.field public b:F

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;


# virtual methods
.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    return-void
.end method

.method public a(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->d:F

    .line 63
    iput p2, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->e:F

    .line 64
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    .line 65
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p1

    .line 51
    int-to-float v0, v0

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->b:F

    .line 52
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->f:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->f:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->g:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->g:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->d:F

    .line 57
    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->e:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 58
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/StoreHouseBarItem;->a(F)V

    .line 59
    return-void
.end method
