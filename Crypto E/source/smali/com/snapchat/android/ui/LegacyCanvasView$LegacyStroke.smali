.class public Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LegacyCanvasView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyStroke"
.end annotation


# instance fields
.field public a:Landroid/graphics/Paint;

.field final synthetic b:Lcom/snapchat/android/ui/LegacyCanvasView;

.field private c:Landroid/graphics/Path;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/LegacyCanvasView;IF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput p3, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->d:F

    .line 354
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->c:Landroid/graphics/Path;

    .line 355
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->d:F

    const/high16 v2, 0x40d0

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 362
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->c:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    return-void
.end method

.method public a(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->c:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 377
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 381
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->c:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 385
    return-void
.end method

.method public b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->c:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    return-void
.end method
