.class Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ring"
.end annotation


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private final e:Landroid/graphics/Paint;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:[I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:Landroid/graphics/Path;

.field private r:F

.field private s:D

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a:Landroid/graphics/RectF;

    .line 418
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    .line 419
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c:Landroid/graphics/Paint;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e:Landroid/graphics/Paint;

    .line 422
    iput v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f:F

    .line 423
    iput v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g:F

    .line 424
    iput v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->h:F

    .line 425
    const/high16 v0, 0x40a0

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i:F

    .line 426
    const/high16 v0, 0x4020

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j:F

    .line 445
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 446
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 447
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 448
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 449
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 493
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->p:Z

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 495
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    .line 496
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 502
    :goto_0
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->r:F

    mul-float/2addr v0, v1

    .line 503
    iget-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->s:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 504
    iget-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->s:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 509
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 510
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    iget v4, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->t:I

    int-to-float v4, v4

    iget v5, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->r:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 511
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    iget v4, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->t:I

    int-to-float v4, v4

    iget v5, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->r:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->u:I

    int-to-float v5, v5

    iget v6, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->r:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 513
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 514
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 516
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->k:[I

    iget v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c:Landroid/graphics/Paint;

    iget v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 518
    add-float v0, p2, p3

    const/high16 v1, 0x40a0

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 520
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 522
    :cond_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 548
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->k:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l:I

    .line 549
    return-void
.end method

.method public a(D)V
    .locals 1
    .parameter

    .prologue
    .line 650
    iput-wide p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->s:D

    .line 651
    return-void
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 579
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i:F

    .line 580
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 581
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 582
    return-void
.end method

.method public a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 466
    float-to-int v0, p1

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->t:I

    .line 467
    float-to-int v0, p2

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->u:I

    .line 468
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->w:I

    .line 457
    return-void
.end method

.method public a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 626
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 628
    iget-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->s:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 629
    :cond_0
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i:F

    div-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 633
    :goto_0
    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j:F

    .line 634
    return-void

    .line 631
    :cond_1
    div-float/2addr v0, v6

    float-to-double v0, v0

    iget-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->s:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x43b4

    .line 475
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e:Landroid/graphics/Paint;

    iget v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e:Landroid/graphics/Paint;

    iget v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 478
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 480
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a:Landroid/graphics/RectF;

    .line 481
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 482
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j:F

    iget v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 483
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f:F

    iget v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->h:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    .line 484
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g:F

    iget v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->h:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    .line 485
    sub-float v3, v0, v2

    .line 486
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->k:[I

    iget v5, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    iget v4, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->v:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    const/4 v4, 0x0

    iget-object v5, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 489
    invoke-direct {p0, p1, v2, v3, p2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 490
    return-void
.end method

.method public a(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 552
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 553
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 554
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 657
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->p:Z

    if-eq v0, p1, :cond_0

    .line 658
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->p:Z

    .line 659
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 661
    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 1
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->k:[I

    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(I)V

    .line 533
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->v:I

    return v0
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f:F

    .line 592
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 593
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l:I

    .line 541
    return-void
.end method

.method public c()F
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->i:F

    return v0
.end method

.method public c(F)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g:F

    .line 611
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 612
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->v:I

    .line 568
    return-void
.end method

.method public d()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f:F

    return v0
.end method

.method public d(F)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->h:F

    .line 622
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 623
    return-void
.end method

.method public e()F
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->m:F

    return v0
.end method

.method public e(F)V
    .locals 1
    .parameter

    .prologue
    .line 667
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->r:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 668
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->r:F

    .line 669
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->l()V

    .line 671
    :cond_0
    return-void
.end method

.method public f()F
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->n:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g:F

    return v0
.end method

.method public h()D
    .locals 2

    .prologue
    .line 642
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->s:D

    return-wide v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->o:F

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->f:F

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->m:F

    .line 686
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g:F

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->n:F

    .line 687
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->h:F

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->o:F

    .line 688
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 694
    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->m:F

    .line 695
    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->n:F

    .line 696
    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->o:F

    .line 697
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(F)V

    .line 698
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c(F)V

    .line 699
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d(F)V

    .line 700
    return-void
.end method
