.class public Lcom/snapchat/android/discover/ui/DiscoverButtonView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:F

.field private final d:F

.field private final e:Lcom/snapchat/android/util/system/Clock;

.field private f:F

.field private g:F

.field private h:J

.field private i:F

.field private j:Z

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f080037

    const/4 v2, 0x1

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:Lcom/snapchat/android/util/system/Clock;

    .line 38
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Z

    .line 42
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;-><init>(Lcom/snapchat/android/discover/ui/DiscoverButtonView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->k:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView$2;-><init>(Lcom/snapchat/android/discover/ui/DiscoverButtonView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->l:Ljava/lang/Runnable;

    .line 60
    const/high16 v0, 0x4000

    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    .line 61
    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->d:F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DiscoverButtonView;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DiscoverButtonView;)Lcom/snapchat/android/util/system/Clock;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:Lcom/snapchat/android/util/system/Clock;

    return-object v0
.end method

.method private a(F)V
    .locals 3
    .parameter

    .prologue
    .line 149
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 150
    const v0, 0x3f2b851f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Z

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Z

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Z

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Z

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 168
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x28a

    const/16 v4, 0xff

    const-wide/high16 v6, 0x3ff0

    .line 86
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a(F)V

    .line 87
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Z

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:J

    sub-long/2addr v0, v2

    .line 90
    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    .line 95
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 96
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:F

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    long-to-double v0, v0

    const-wide v2, 0x4084500000000000L

    div-double/2addr v0, v2

    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    .line 101
    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:F

    double-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:F

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    sub-long/2addr v0, v8

    const-wide/16 v2, 0x5aa

    rem-long/2addr v0, v2

    .line 111
    const-wide/16 v2, 0x514

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    .line 115
    long-to-double v0, v0

    const-wide v2, 0x4094500000000000L

    div-double/2addr v0, v2

    .line 119
    const-wide v2, 0x406fe00000000000L

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 120
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    sub-double v2, v6, v0

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->d:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    .line 126
    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    sub-double v2, v6, v0

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v5, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->d:F

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 134
    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:F

    double-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:F

    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:F

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 79
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    .line 80
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:F

    .line 81
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a(F)V

    .line 82
    return-void
.end method
