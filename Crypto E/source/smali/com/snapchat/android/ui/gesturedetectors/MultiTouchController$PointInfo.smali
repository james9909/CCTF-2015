.class public Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointInfo"
.end annotation


# instance fields
.field private a:I

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:[I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b:[F

    .line 488
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c:[F

    .line 489
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->d:[F

    .line 490
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->e:[I

    return-void
.end method

.method private a(I)I
    .locals 7
    .parameter

    .prologue
    .line 593
    const/4 v2, 0x0

    const v1, 0x8000

    const/16 v0, 0xf

    move v4, v1

    move v1, p1

    move v6, v2

    move v2, v0

    move v0, v6

    .line 595
    :goto_0
    shl-int/lit8 v3, v0, 0x1

    add-int v5, v3, v4

    add-int/lit8 v3, v2, -0x1

    shl-int v2, v5, v2

    if-lt v1, v2, :cond_0

    .line 596
    add-int/2addr v0, v4

    .line 597
    sub-int/2addr v1, v2

    .line 599
    :cond_0
    shr-int/lit8 v2, v4, 0x1

    if-gtz v2, :cond_1

    .line 600
    return v0

    :cond_1
    move v4, v2

    move v2, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 484
    iget-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->t:J

    return-wide v0
.end method

.method private a(I[F[F[F[IIZJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f00

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 515
    iput-wide p8, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->t:J

    .line 516
    iput p6, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->s:I

    .line 517
    iput p1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a:I

    move v0, v2

    .line 518
    :goto_0
    if-ge v0, p1, :cond_0

    .line 519
    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b:[F

    aget v4, p2, v0

    aput v4, v3, v0

    .line 520
    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c:[F

    aget v4, p3, v0

    aput v4, v3, v0

    .line 521
    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->d:[F

    aget v4, p4, v0

    aput v4, v3, v0

    .line 522
    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->e:[I

    aget v4, p5, v0

    aput v4, v3, v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iput-boolean p7, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->n:Z

    .line 525
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    .line 527
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    if-eqz v0, :cond_2

    .line 528
    aget v0, p2, v2

    aget v3, p2, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->f:F

    .line 529
    aget v0, p3, v2

    aget v3, p3, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->g:F

    .line 530
    aget v0, p4, v2

    aget v3, p4, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->h:F

    .line 531
    aget v0, p2, v1

    aget v3, p2, v2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    .line 532
    aget v0, p3, v1

    aget v1, p3, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    .line 542
    :goto_2
    iput-boolean v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->r:Z

    iput-boolean v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->q:Z

    iput-boolean v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->p:Z

    .line 543
    return-void

    :cond_1
    move v0, v2

    .line 525
    goto :goto_1

    .line 536
    :cond_2
    aget v0, p2, v2

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->f:F

    .line 537
    aget v0, p3, v2

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->g:F

    .line 538
    aget v0, p4, v2

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->h:F

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    goto :goto_2
.end method

.method static synthetic a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct/range {p0 .. p9}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a(I[F[F[F[IIZJ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()F
    .locals 3

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->p:Z

    if-nez v0, :cond_0

    .line 606
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    iget v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->l:F

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->p:Z

    .line 609
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->l:F

    return v0

    .line 606
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 614
    iget-boolean v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->q:Z

    if-nez v1, :cond_1

    .line 615
    iget-boolean v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    if-nez v1, :cond_2

    .line 616
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    .line 629
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->q:Z

    .line 631
    :cond_1
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    return v0

    .line 621
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->d()F

    move-result v1

    .line 622
    cmpl-float v2, v1, v0

    if-nez v2, :cond_4

    :goto_1
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    .line 624
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 625
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i:F

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    .line 626
    :cond_3
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 627
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j:F

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->k:F

    goto :goto_0

    .line 622
    :cond_4
    const/high16 v0, 0x4380

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4180

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public f()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 639
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->r:Z

    if-nez v0, :cond_0

    .line 640
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->o:Z

    if-nez v0, :cond_1

    .line 641
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->m:F

    .line 644
    :goto_0
    iput-boolean v4, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->r:Z

    .line 646
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->m:F

    return v0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->m:F

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->f:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->g:F

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->n:Z

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 707
    iget-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->t:J

    return-wide v0
.end method
