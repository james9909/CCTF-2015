.class public Lcom/snapchat/android/ui/ProgressiveSaveButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ProgressiveSaveButton$1;,
        Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 78
    iput v3, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->e:J

    .line 89
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    .line 98
    iget v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors contain unexpected alpha"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->a:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setVisibility(I)V

    .line 104
    return-void
.end method

.method private a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 454
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 455
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 457
    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private a(FI)Landroid/graphics/Paint;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 291
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 296
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 297
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x4000

    div-float v2, p1, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 299
    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 308
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 309
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 12
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 197
    const v0, 0x3d9eb852

    mul-float/2addr v0, p2

    .line 199
    iget v1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v10

    .line 200
    iget v1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v4

    .line 202
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 203
    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 204
    iget v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v11, v0, v1

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 206
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 207
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const v3, 0x3d4ccccd

    .line 324
    new-instance v1, Landroid/graphics/RectF;

    mul-float v0, v3, p2

    const v2, 0x3d23d70a

    mul-float/2addr v2, p3

    mul-float/2addr v3, p2

    sub-float v3, p2, v3

    const v4, 0x3da3d70a

    mul-float/2addr v4, p3

    sub-float v4, p3, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 330
    const/high16 v2, -0x3d77

    const v0, 0x439e8000

    mul-float v3, v0, p5

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 332
    return-void
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .locals 12
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->e:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 220
    const v1, 0x44bb8000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 221
    const v0, 0x44bb8000

    .line 233
    :goto_0
    const/high16 v1, 0x43e1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    .line 234
    const/high16 v1, 0x43e1

    div-float v2, v0, v1

    .line 235
    const/4 v1, 0x0

    .line 236
    const/4 v0, 0x0

    .line 249
    :goto_1
    mul-float v3, v2, v2

    mul-float/2addr v2, v3

    .line 250
    const/high16 v3, 0x3f80

    sub-float v1, v3, v1

    .line 251
    const/high16 v3, 0x3f80

    mul-float v4, v1, v1

    mul-float/2addr v1, v4

    sub-float v11, v3, v1

    .line 255
    const v1, 0x3f19999a

    mul-float v5, v2, v1

    .line 256
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v11

    const v2, 0x3f19999a

    mul-float v10, v1, v2

    .line 257
    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    rsub-int v0, v0, 0xff

    .line 261
    const v1, 0x3d9eb852

    mul-float/2addr v1, p2

    .line 263
    iget v2, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a:I

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(II)I

    move-result v2

    .line 264
    iget v3, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b:I

    invoke-direct {p0, v3, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(II)I

    move-result v0

    .line 266
    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v9

    .line 267
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(FI)Landroid/graphics/Paint;

    move-result-object v4

    .line 269
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    .line 271
    invoke-direct/range {v5 .. v10}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c(Landroid/graphics/Canvas;FF)V

    .line 274
    const/high16 v0, 0x3f80

    cmpg-float v0, v11, v0

    if-gez v0, :cond_0

    .line 275
    const/high16 v5, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    :cond_0
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v10, v11

    .line 278
    invoke-direct/range {v5 .. v10}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 279
    const/high16 v10, 0x3f80

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    .line 280
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->postInvalidate()V

    goto :goto_0

    .line 237
    :cond_2
    const/high16 v1, 0x4461

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    .line 238
    const/high16 v2, 0x3f80

    .line 239
    const/high16 v1, 0x43e1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43e1

    div-float v1, v0, v1

    .line 240
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 242
    :cond_3
    const/high16 v2, 0x3f80

    .line 243
    const/high16 v1, 0x3f80

    .line 244
    const/high16 v3, 0x3f80

    const v4, 0x44bb8000

    sub-float v0, v4, v0

    const/high16 v4, 0x4416

    div-float/2addr v0, v4

    sub-float v0, v3, v0

    goto/16 :goto_1
.end method

.method private b(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 348
    const v0, 0x3e99999a

    mul-float/2addr v0, p2

    .line 349
    const v1, 0x3f451eb8

    mul-float v3, v1, p2

    .line 350
    sub-float v0, v3, v0

    .line 351
    mul-float/2addr v0, p5

    sub-float v1, v3, v0

    .line 353
    const v0, 0x3f333333

    mul-float v2, v0, p3

    move-object v0, p1

    move v4, v2

    move-object v5, p4

    .line 355
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method private c(Landroid/graphics/Canvas;FF)V
    .locals 6
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 438
    const v0, 0x3f333333

    mul-float v2, v0, p3

    .line 440
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 441
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    const/4 v1, 0x0

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 444
    return-void
.end method

.method private c(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 7
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 373
    mul-float v1, v3, p2

    .line 374
    const v0, 0x3e051eb8

    add-float/2addr v0, p5

    mul-float v2, v0, p3

    .line 376
    mul-float/2addr v3, p2

    .line 377
    const v0, 0x3f147ae1

    add-float/2addr v0, p5

    mul-float v6, v0, p3

    .line 379
    invoke-virtual {p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    sub-float v4, v6, v0

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    const v0, 0x3e8f5c29

    mul-float/2addr v0, p3

    .line 384
    const v1, 0x3ecccccd

    add-float/2addr v1, p5

    mul-float/2addr v1, p3

    .line 386
    const/high16 v2, 0x3f40

    mul-float/2addr v2, p3

    .line 387
    const v4, 0x3ec7ae14

    add-float/2addr v4, p5

    mul-float/2addr v4, p3

    .line 389
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 391
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 392
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 395
    invoke-virtual {p1, v5, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 396
    return-void
.end method

.method private d(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V
    .locals 7
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 411
    const v0, 0x3e8a3d71

    mul-float/2addr v0, p2

    .line 412
    const v1, 0x3ed70a3d

    add-float/2addr v1, p5

    mul-float/2addr v1, p3

    .line 414
    const v2, 0x3ee147ae

    mul-float/2addr v2, p2

    .line 415
    const v3, 0x3f19999a

    add-float/2addr v3, p5

    mul-float/2addr v3, p3

    .line 417
    const v4, 0x3f3f5c29

    mul-float/2addr v4, p2

    .line 418
    const v5, 0x3e75c28f

    add-float/2addr v5, p5

    mul-float/2addr v5, p3

    .line 420
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 422
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 423
    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 424
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    invoke-virtual {p1, v6, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 427
    return-void
.end method


# virtual methods
.method public getAnimationState()Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 172
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal animation state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->a(Landroid/graphics/Canvas;FF)V

    .line 188
    :goto_0
    :pswitch_1
    return-void

    .line 182
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    if-ne v0, p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    .line 117
    sget-object v0, Lcom/snapchat/android/ui/ProgressiveSaveButton$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->c:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal animation state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    .line 120
    const v0, 0x7f0201ab

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setBackgroundResource(I)V

    .line 140
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->postInvalidate()V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setBackgroundColor(I)V

    .line 126
    iput v2, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    goto :goto_1

    .line 130
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setBackgroundColor(I)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->e:J

    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSaveProgress(I)V
    .locals 2
    .parameter

    .prologue
    .line 156
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Progress out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput p1, p0, Lcom/snapchat/android/ui/ProgressiveSaveButton;->d:I

    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->postInvalidate()V

    .line 164
    return-void
.end method
