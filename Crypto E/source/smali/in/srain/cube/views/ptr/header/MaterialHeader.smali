.class public Lin/srain/cube/views/ptr/header/MaterialHeader;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lin/srain/cube/views/ptr/PtrUIHandler;


# instance fields
.field private a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

.field private b:F

.field private c:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private d:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/high16 v0, 0x3f80

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 22
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 33
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/high16 v0, 0x3f80

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 22
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 38
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/high16 v0, 0x3f80

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 22
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    .line 43
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialHeader;)F
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    return v0
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialHeader;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    return p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    .line 79
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->b(I)V

    .line 80
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 81
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/MaterialHeader;)Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    const/high16 v0, 0x3f80

    iput v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    .line 129
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->stop()V

    .line 130
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    const v4, 0x3f4ccccd

    .line 164
    invoke-static {v5, p7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 166
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 167
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    const/high16 v2, 0x437f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    .line 168
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(Z)V

    .line 170
    mul-float v1, v0, v4

    .line 171
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    const/4 v3, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v2, v3, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(FF)V

    .line 172
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(F)V

    .line 175
    const/high16 v1, -0x4180

    const v2, 0x3ecccccd

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    .line 176
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->b(F)V

    .line 177
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 179
    :cond_0
    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    .line 149
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->start()V

    .line 150
    return-void
.end method

.method public d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->stop()V

    .line 160
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    if-ne p1, v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 113
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v4}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 115
    int-to-float v2, v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    iget v2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    iget v3, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->b:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 117
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 119
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 107
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->setBounds(IIII)V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 101
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 102
    return-void
.end method

.method public setColorSchemeColors([I)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->a:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a([I)V

    .line 94
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 95
    return-void
.end method

.method public setPtrFrameLayout(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 4
    .parameter

    .prologue
    .line 48
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialHeader$2;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialHeader$2;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V

    .line 55
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->d:Landroid/view/animation/Animation;

    new-instance v2, Lin/srain/cube/views/ptr/header/MaterialHeader$3;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialHeader$3;-><init>(Lin/srain/cube/views/ptr/header/MaterialHeader;Lin/srain/cube/views/ptr/PtrUIHandlerHook;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->c:Lin/srain/cube/views/ptr/PtrFrameLayout;

    .line 74
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader;->c:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lin/srain/cube/views/ptr/PtrUIHandlerHook;)V

    .line 75
    return-void
.end method
