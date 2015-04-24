.class public Lcom/snapchat/android/ui/LegacyCanvasView;
.super Lcom/snapchat/android/ui/CanvasViewBase;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;,
        Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Point;

.field private h:Landroid/graphics/Paint;

.field private i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

.field private j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CanvasViewBase;-><init>(Landroid/content/Context;)V

    .line 39
    const/high16 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    .line 40
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->d:F

    .line 41
    iput-boolean v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    .line 42
    iput-boolean v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->h:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/snapchat/android/util/ViewUtils;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    .line 54
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 61
    invoke-virtual {p0, p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    new-instance v0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;-><init>(Lcom/snapchat/android/ui/LegacyCanvasView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    .line 63
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->d:F

    .line 67
    const-string v0, "LegacyCanvasView"

    const-string v1, "Canvas view instantiated"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void

    .line 56
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    .line 57
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/LegacyCanvasView;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    return v0
.end method

.method private a(FFF)Landroid/graphics/Matrix;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 176
    div-float v0, p3, v1

    .line 177
    div-float v1, p2, v1

    .line 178
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 180
    sub-float v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 181
    neg-float v4, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 184
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 185
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 186
    return-object v2
.end method

.method private a(FF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4080

    const/high16 v5, 0x4000

    .line 310
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 311
    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 312
    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    iget v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    iget v3, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    add-float/2addr v3, p1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    add-float/2addr v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(FFFF)V

    .line 314
    iput p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    .line 315
    iput p2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    .line 317
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/LegacyCanvasView;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    return v0
.end method

.method private b(FFF)Landroid/graphics/Matrix;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 198
    div-float v0, p3, v1

    .line 199
    div-float v1, p2, v1

    .line 201
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 203
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 204
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 207
    neg-float v1, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    iget v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    iget v4, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 115
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 116
    if-ne p1, v4, :cond_0

    .line 131
    :goto_0
    return-void

    .line 119
    :cond_0
    if-eq v4, v3, :cond_1

    const/4 v0, 0x3

    if-ne v4, v0, :cond_2

    .line 120
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->a:I

    .line 121
    if-eqz v3, :cond_4

    move v0, v2

    :goto_3
    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->b:I

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a()V

    .line 124
    int-to-float v0, v1

    int-to-float v1, v2

    invoke-virtual {p0, v4, p1, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(IIFF)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    .line 127
    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-static {v2}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a(Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 119
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 120
    goto :goto_2

    :cond_4
    move v0, v1

    .line 121
    goto :goto_3

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->invalidate()V

    goto :goto_0
.end method

.method public a(IIFF)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4387

    const/high16 v6, 0x42b4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    if-ne p1, p2, :cond_0

    .line 247
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, "LegacyCanvasView"

    const-string v1, "Rotate drawing from %d to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    if-ne p1, v5, :cond_2

    .line 228
    invoke-direct {p0, v7, p3, p4}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 229
    const-string v1, "LegacyCanvasView"

    const-string v2, "went to rotation 90"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 242
    :cond_1
    const-string v0, "LegacyCanvasView"

    const-string v1, "Drawing is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 231
    invoke-direct {p0, v6, p3, p4}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 232
    const-string v1, "LegacyCanvasView"

    const-string v2, "went to rotation 270"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_1

    .line 233
    :cond_3
    if-ne p2, v5, :cond_4

    .line 234
    invoke-direct {p0, v6, p3, p4}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 235
    const-string v1, "LegacyCanvasView"

    const-string v2, "went from rotation 90 (probz back to portrait)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_1

    .line 237
    :cond_4
    invoke-direct {p0, v7, p3, p4}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 238
    const-string v1, "LegacyCanvasView"

    const-string v2, "else... back to portrait from 270?"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_1

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->postInvalidate()V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const v3, 0x3dcccccd

    .line 280
    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    if-nez v1, :cond_2

    .line 281
    iput-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    .line 282
    new-instance v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    iget v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->d:F

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;-><init>(Lcom/snapchat/android/ui/LegacyCanvasView;IF)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    .line 283
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    .line 284
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(FF)V

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->b(FF)V

    .line 286
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->k:F

    .line 287
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->l:F

    .line 288
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DrawingEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->b:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/DrawingEvent;-><init>(Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView;->invalidate()V

    .line 307
    :cond_1
    return-void

    .line 289
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 290
    iput-boolean v4, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 292
    :goto_1
    if-ge v0, v1, :cond_3

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    .line 295
    invoke-direct {p0, v2, v3}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FF)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(FF)V

    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->b(FF)V

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a(Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;)V

    .line 302
    iput-object v5, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    .line 303
    iput-object v5, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->g:Landroid/graphics/Point;

    .line 304
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/DrawingEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->a:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/DrawingEvent;-><init>(Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    .line 343
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f()V

    .line 155
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->c()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    return v0
.end method

.method public getDrawingEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    return v0
.end method

.method public getLastColor()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b()I

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberOfStrokes()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSavedDrawing()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->j:Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a(Landroid/graphics/Canvas;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->i:Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(Landroid/graphics/Canvas;)V

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 332
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, p2}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(Landroid/view/MotionEvent;)V

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/CanvasViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iput p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->c:I

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    return-void
.end method

.method public setDrawingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView;->e:Z

    .line 136
    return-void
.end method
