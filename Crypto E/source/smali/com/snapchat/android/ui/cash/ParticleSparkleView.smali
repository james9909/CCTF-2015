.class public Lcom/snapchat/android/ui/cash/ParticleSparkleView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;


# instance fields
.field a:Ljava/util/Random;

.field private b:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/snapchat/android/cash/PointGenerator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a:Ljava/util/Random;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Z

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->c()V

    .line 38
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/snapchat/android/R$styleable;->ParticleSparkleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 43
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b:Landroid/graphics/drawable/Drawable;

    .line 44
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 51
    const/high16 v0, 0x41c8

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->g:I

    .line 52
    const/high16 v0, 0x42fa

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->h:I

    .line 53
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 105
    new-instance v0, Lcom/snapchat/android/ui/cash/ParticleView;

    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/cash/ParticleView;->setAnimationListener(Lcom/snapchat/android/ui/cash/ParticleView$ParticleAnimationListener;)V

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->e:Lcom/snapchat/android/cash/PointGenerator;

    invoke-interface {v1}, Lcom/snapchat/android/cash/PointGenerator;->a()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setCenterPoint(Landroid/graphics/Point;)V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getParticleFinalSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setFinalSize(I)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleView;->setAlpha(F)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->a()V

    .line 116
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Z

    .line 95
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->c:I

    if-ge v0, v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d()V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/cash/PointGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->e:Lcom/snapchat/android/cash/PointGenerator;

    .line 85
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/cash/ParticleView;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->e:Lcom/snapchat/android/cash/PointGenerator;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/cash/ParticleView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/cash/PointGenerator;->a(Landroid/graphics/Point;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->removeView(Landroid/view/View;)V

    .line 128
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->d()V

    .line 131
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->f:Z

    .line 102
    return-void
.end method

.method public getParticle()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getParticleFinalSize()I
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a:Ljava/util/Random;

    iget v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->h:I

    iget v2, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildCount()I

    move-result v2

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ParticleView;

    .line 62
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getMeasuredWidth()I

    move-result v3

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getMeasuredHeight()I

    move-result v4

    .line 64
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v5

    .line 66
    iget v6, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v6, v7, v3, v4}, Lcom/snapchat/android/ui/cash/ParticleView;->layout(IIII)V

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildCount()I

    move-result v2

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->setMeasuredDimension(II)V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ParticleView;

    .line 77
    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleView;->getFinalSize()I

    move-result v3

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 79
    invoke-virtual {p0, v0, v3, v3}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->measureChild(Landroid/view/View;II)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method
