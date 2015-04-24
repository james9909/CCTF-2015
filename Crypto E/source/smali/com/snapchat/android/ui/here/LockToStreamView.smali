.class public Lcom/snapchat/android/ui/here/LockToStreamView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/RectF;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;

.field private i:F

.field private j:F

.field private k:[I

.field private l:Lcom/snapchat/android/analytics/HereAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/here/LockToStreamView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    .line 50
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    .line 51
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Z

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->k:[I

    .line 70
    iput-object p2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    .line 71
    iput-object p3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->l:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Landroid/graphics/RectF;

    .line 81
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/here/LockToStreamView;->setBackgroundColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a()V

    .line 85
    return-void
.end method

.method private a(FF)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 299
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    sub-float/2addr v0, v1

    .line 304
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(I)I
    .locals 4
    .parameter

    .prologue
    .line 433
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 434
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 435
    const/4 v1, 0x0

    .line 436
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    const/high16 v3, 0x4000

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LockToStreamView;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method private a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 404
    new-instance v1, Lcom/snapchat/android/ui/here/LockToStreamView$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/LockToStreamView$3;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 413
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 414
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->h(Landroid/view/MotionEvent;)F

    move-result v0

    .line 270
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 271
    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 272
    iget v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    .line 280
    :goto_1
    if-eqz p2, :cond_2

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 282
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 284
    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(FF)F

    move-result v1

    .line 285
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 275
    :cond_1
    iget v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    iget v3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:F

    int-to-float v4, v1

    sub-float v0, v4, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v2, v3, v0}, Lcom/snapchat/android/util/InterpolationUtils;->a(FFF)F

    move-result v0

    .line 278
    iget v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleX(F)V

    .line 293
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleY(F)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/LockToStreamView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-eqz v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v0

    int-to-float v5, v0

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 218
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    .line 219
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090037

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 220
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 221
    sub-float v3, v6, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    move v0, v1

    .line 222
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getVisibility()I

    move-result v3

    const/4 v8, 0x4

    if-ne v3, v8, :cond_4

    move v3, v1

    .line 226
    :goto_2
    iget-boolean v8, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Z

    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v4, v8, v4

    if-lez v4, :cond_5

    :cond_2
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Z

    .line 228
    iget-boolean v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Z

    if-eqz v4, :cond_0

    .line 229
    if-eq v0, v3, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 234
    if-eqz v0, :cond_7

    .line 235
    cmpg-float v2, v6, v7

    if-gez v2, :cond_6

    .line 236
    neg-float v2, v3

    .line 251
    :goto_4
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 252
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 253
    new-instance v2, Lcom/snapchat/android/ui/here/LockToStreamView$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView$1;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;Z)V

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 262
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 263
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 221
    goto :goto_1

    :cond_4
    move v3, v2

    .line 222
    goto :goto_2

    :cond_5
    move v4, v2

    .line 226
    goto :goto_3

    .line 238
    :cond_6
    add-float v2, v5, v3

    goto :goto_4

    .line 241
    :cond_7
    cmpg-float v4, v6, v7

    if-gez v4, :cond_9

    .line 242
    neg-float v3, v3

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 246
    :goto_5
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 249
    :cond_8
    invoke-direct {p0, v6, v7}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(FF)F

    move-result v2

    goto :goto_4

    .line 244
    :cond_9
    add-float/2addr v3, v5

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    goto :goto_5
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 311
    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-ne v0, v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 314
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    .line 316
    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->e(Landroid/view/MotionEvent;)V

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->l:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->c(Z)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->g(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    .line 333
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 338
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020136

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 342
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 343
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:F

    .line 344
    iget v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->j:F

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    .line 347
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    goto :goto_0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v5, 0x4000

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 355
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 356
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    int-to-float v2, v2

    .line 357
    div-float v3, v2, v5

    .line 358
    int-to-float v0, v0

    div-float v4, v1, v5

    add-float/2addr v0, v4

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 360
    sub-float v0, v2, v0

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 364
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getX()F

    move-result v3

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 365
    iget-object v3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 366
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 369
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 370
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v1, v3

    .line 371
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    .line 372
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 373
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 374
    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 375
    new-instance v0, Lcom/snapchat/android/ui/here/LockToStreamView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/LockToStreamView$2;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 382
    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 384
    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(II)V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    .line 386
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    .line 387
    return-void
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setX(F)V

    .line 391
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->c()V

    .line 392
    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getY()F

    move-result v0

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 395
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(II)V

    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;Z)V

    .line 399
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    .line 400
    return-void
.end method

.method private getParentHeight()I
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 424
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getRadius()F
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private h(Landroid/view/MotionEvent;)F
    .locals 3
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->k:[I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getLocationOnScreen([I)V

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->k:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 419
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 93
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    .line 94
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    .line 95
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Z

    .line 96
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->f(Landroid/view/MotionEvent;)V

    .line 156
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->e()V

    .line 158
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->c(Landroid/view/MotionEvent;)V

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;Z)V

    .line 160
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->d(Landroid/view/MotionEvent;)V

    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->bringToFront()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->h(Landroid/view/MotionEvent;)F

    move-result v0

    .line 174
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    .line 175
    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    .line 107
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    int-to-float v2, v2

    .line 113
    div-float v3, v2, v5

    .line 115
    int-to-float v0, v0

    div-float v4, v1, v5

    add-float/2addr v0, v4

    .line 116
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getY()F

    move-result v4

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    .line 117
    sub-float v0, v2, v0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 122
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 123
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleX(F)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->setScaleY(F)V

    .line 125
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 126
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 127
    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    .line 128
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getY()F

    move-result v0

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(FF)F

    move-result v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    iget-object v1, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Landroid/graphics/RectF;

    const/high16 v3, 0x43b4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    iget-object v3, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 193
    iget-object v6, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(I)I

    move-result v0

    .line 201
    const/high16 v1, 0x4000

    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v1, v0, v1

    .line 202
    iget-object v2, p0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 205
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setMeasuredDimension(II)V

    .line 206
    return-void
.end method
