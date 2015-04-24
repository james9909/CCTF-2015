.class public Lnet/simonvt/numberpicker/Scroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static B:F

.field private static C:F

.field private static u:F

.field private static v:F

.field private static w:F

.field private static x:F

.field private static final y:[F


# instance fields
.field private final A:F

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Landroid/view/animation/Interpolator;

.field private s:Z

.field private t:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/high16 v1, 0x3f80

    .line 64
    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3feccccccccccccdL

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    sput v0, Lnet/simonvt/numberpicker/Scroller;->u:F

    .line 65
    const/high16 v0, 0x4448

    sput v0, Lnet/simonvt/numberpicker/Scroller;->v:F

    .line 66
    const v0, 0x3ecccccd

    sput v0, Lnet/simonvt/numberpicker/Scroller;->w:F

    .line 67
    sget v0, Lnet/simonvt/numberpicker/Scroller;->w:F

    sub-float v0, v1, v0

    sput v0, Lnet/simonvt/numberpicker/Scroller;->x:F

    .line 69
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lnet/simonvt/numberpicker/Scroller;->y:[F

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-gt v4, v12, :cond_2

    .line 77
    int-to-float v0, v4

    const/high16 v3, 0x42c8

    div-float v5, v0, v3

    move v0, v1

    move v3, v2

    .line 81
    :goto_1
    sub-float v2, v0, v3

    const/high16 v6, 0x4000

    div-float/2addr v2, v6

    add-float/2addr v2, v3

    .line 82
    const/high16 v6, 0x4040

    mul-float/2addr v6, v2

    sub-float v7, v1, v2

    mul-float/2addr v6, v7

    .line 83
    sub-float v7, v1, v2

    sget v8, Lnet/simonvt/numberpicker/Scroller;->w:F

    mul-float/2addr v7, v8

    sget v8, Lnet/simonvt/numberpicker/Scroller;->x:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    mul-float v8, v2, v2

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 84
    sub-float v8, v7, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 88
    mul-float v0, v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    .line 89
    sget-object v2, Lnet/simonvt/numberpicker/Scroller;->y:[F

    aput v0, v2, v4

    .line 76
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto :goto_0

    .line 85
    :cond_0
    cmpl-float v6, v7, v5

    if-lez v6, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    .line 86
    goto :goto_1

    .line 91
    :cond_2
    sget-object v0, Lnet/simonvt/numberpicker/Scroller;->y:[F

    aput v1, v0, v12

    .line 94
    const/high16 v0, 0x4100

    sput v0, Lnet/simonvt/numberpicker/Scroller;->B:F

    .line 96
    sput v1, Lnet/simonvt/numberpicker/Scroller;->C:F

    .line 97
    invoke-static {v1}, Lnet/simonvt/numberpicker/Scroller;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lnet/simonvt/numberpicker/Scroller;->C:F

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    .line 126
    iput-object p2, p0, Lnet/simonvt/numberpicker/Scroller;->r:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->A:F

    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/Scroller;->b(F)F

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->z:F

    .line 129
    iput-boolean p3, p0, Lnet/simonvt/numberpicker/Scroller;->s:Z

    .line 130
    return-void
.end method

.method static a(F)F
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 423
    sget v0, Lnet/simonvt/numberpicker/Scroller;->B:F

    mul-float/2addr v0, p0

    .line 424
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 425
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 431
    :goto_0
    sget v1, Lnet/simonvt/numberpicker/Scroller;->C:F

    mul-float/2addr v0, v1

    .line 432
    return v0

    .line 427
    :cond_0
    const v1, 0x3ebc5ab2

    .line 428
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 429
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(F)F
    .locals 2
    .parameter

    .prologue
    .line 144
    const v0, 0x43c10b3d

    iget v1, p0, Lnet/simonvt/numberpicker/Scroller;->A:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a(IIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->a:I

    .line 334
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    .line 335
    iput p5, p0, Lnet/simonvt/numberpicker/Scroller;->m:I

    .line 336
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/simonvt/numberpicker/Scroller;->l:J

    .line 337
    iput p1, p0, Lnet/simonvt/numberpicker/Scroller;->b:I

    .line 338
    iput p2, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    .line 339
    add-int v0, p1, p3

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    .line 340
    add-int v0, p2, p4

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    .line 341
    int-to-float v0, p3

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->o:F

    .line 342
    int-to-float v0, p4

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->p:F

    .line 343
    const/high16 v0, 0x3f80

    iget v1, p0, Lnet/simonvt/numberpicker/Scroller;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->n:F

    .line 344
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/Scroller;->s:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    if-nez v2, :cond_0

    .line 369
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/Scroller;->c()F

    move-result v2

    .line 371
    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    iget v4, p0, Lnet/simonvt/numberpicker/Scroller;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 372
    iget v4, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    iget v5, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 373
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v5

    .line 375
    div-float/2addr v3, v5

    .line 376
    div-float/2addr v4, v5

    .line 378
    mul-float/2addr v3, v2

    .line 379
    mul-float/2addr v2, v4

    .line 380
    move/from16 v0, p3

    int-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move/from16 v0, p4

    int-to-float v4, v0

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 382
    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 p3, v0

    .line 383
    move/from16 v0, p4

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p4, v0

    .line 387
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->a:I

    .line 388
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    .line 390
    mul-int v2, p3, p3

    mul-int v3, p4, p4

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    .line 392
    iput v4, p0, Lnet/simonvt/numberpicker/Scroller;->t:F

    .line 393
    sget v2, Lnet/simonvt/numberpicker/Scroller;->w:F

    mul-float/2addr v2, v4

    sget v3, Lnet/simonvt/numberpicker/Scroller;->v:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    .line 394
    const-wide v2, 0x408f400000000000L

    sget v5, Lnet/simonvt/numberpicker/Scroller;->u:F

    float-to-double v8, v5

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    div-double v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->m:I

    .line 395
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/simonvt/numberpicker/Scroller;->l:J

    .line 396
    iput p1, p0, Lnet/simonvt/numberpicker/Scroller;->b:I

    .line 397
    move/from16 v0, p2

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    .line 399
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f80

    move v3, v2

    .line 400
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_2

    const/high16 v2, 0x3f80

    .line 402
    :goto_1
    sget v4, Lnet/simonvt/numberpicker/Scroller;->v:F

    float-to-double v4, v4

    sget v8, Lnet/simonvt/numberpicker/Scroller;->u:F

    float-to-double v8, v8

    sget v10, Lnet/simonvt/numberpicker/Scroller;->u:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 405
    move/from16 v0, p5

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->f:I

    .line 406
    move/from16 v0, p6

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->g:I

    .line 407
    move/from16 v0, p7

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->h:I

    .line 408
    move/from16 v0, p8

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->i:I

    .line 410
    int-to-float v5, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, p1

    iput v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    .line 412
    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    iget v5, p0, Lnet/simonvt/numberpicker/Scroller;->g:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    .line 413
    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    iget v5, p0, Lnet/simonvt/numberpicker/Scroller;->f:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    .line 415
    int-to-float v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v2, v2, p2

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    .line 417
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->i:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    .line 418
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->h:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    .line 419
    return-void

    .line 399
    :cond_1
    move/from16 v0, p3

    int-to-float v2, v0

    div-float/2addr v2, v4

    move v3, v2

    goto :goto_0

    .line 400
    :cond_2
    move/from16 v0, p4

    int-to-float v2, v0

    div-float/2addr v2, v4

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    .line 167
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    return v0
.end method

.method public c()F
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->t:F

    iget v1, p0, Lnet/simonvt/numberpicker/Scroller;->z:F

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/Scroller;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    return v0
.end method

.method public f()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x42c8

    .line 248
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 252
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/simonvt/numberpicker/Scroller;->l:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 254
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->m:I

    if-ge v0, v2, :cond_3

    .line 255
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->a:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 298
    goto :goto_0

    .line 257
    :pswitch_0
    int-to-float v0, v0

    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->n:F

    mul-float/2addr v0, v2

    .line 259
    iget-object v2, p0, Lnet/simonvt/numberpicker/Scroller;->r:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_2

    .line 260
    invoke-static {v0}, Lnet/simonvt/numberpicker/Scroller;->a(F)F

    move-result v0

    .line 264
    :goto_2
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->b:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->o:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    .line 265
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->p:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    goto :goto_1

    .line 262
    :cond_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/Scroller;->r:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 268
    :pswitch_1
    int-to-float v0, v0

    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->m:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 269
    mul-float v2, v6, v0

    float-to-int v2, v2

    .line 270
    int-to-float v3, v2

    div-float/2addr v3, v6

    .line 271
    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 272
    sget-object v5, Lnet/simonvt/numberpicker/Scroller;->y:[F

    aget v5, v5, v2

    .line 273
    sget-object v6, Lnet/simonvt/numberpicker/Scroller;->y:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    .line 274
    sub-float/2addr v0, v3

    sub-float v3, v4, v3

    div-float/2addr v0, v3

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    .line 276
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->b:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    iget v4, p0, Lnet/simonvt/numberpicker/Scroller;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    .line 278
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->g:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    .line 279
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->f:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    .line 281
    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    iget v3, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    iget v4, p0, Lnet/simonvt/numberpicker/Scroller;->c:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    .line 283
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    .line 284
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->h:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    .line 286
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    iget v2, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    if-ne v0, v2, :cond_1

    .line 287
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    goto/16 :goto_1

    .line 294
    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->d:I

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->j:I

    .line 295
    iget v0, p0, Lnet/simonvt/numberpicker/Scroller;->e:I

    iput v0, p0, Lnet/simonvt/numberpicker/Scroller;->k:I

    .line 296
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/Scroller;->q:Z

    goto/16 :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public g()I
    .locals 4

    .prologue
    .line 469
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/simonvt/numberpicker/Scroller;->l:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
