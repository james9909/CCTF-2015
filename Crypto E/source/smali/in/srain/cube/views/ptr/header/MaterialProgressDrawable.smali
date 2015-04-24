.class public Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$OvalShadow;,
        Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;,
        Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;,
        Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Landroid/view/animation/Interpolator;


# instance fields
.field private final e:[I

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

.field private final h:Landroid/graphics/drawable/Drawable$Callback;

.field private i:F

.field private j:Landroid/content/res/Resources;

.field private k:Landroid/view/View;

.field private l:Landroid/view/animation/Animation;

.field private m:F

.field private n:D

.field private o:D

.field private p:Landroid/view/animation/Animation;

.field private q:I

.field private r:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;)V

    sput-object v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;)V

    sput-object v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->e:[I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->f:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$1;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->h:Landroid/graphics/drawable/Drawable$Callback;

    .line 130
    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->k:Landroid/view/View;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->j:Landroid/content/res/Resources;

    .line 132
    new-instance v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->h:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    .line 133
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->e:[I

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a([I)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(I)V

    .line 135
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c()V

    .line 136
    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x37t 0x34t 0xc9t 0xfft
        0xf1t 0x5bt 0x37t 0xfft
        0x3et 0xd2t 0xf7t 0xfft
        0x50t 0xa3t 0x34t 0xfft
    .end array-data
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->m:F

    return p1
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->l:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private a(D)V
    .locals 7
    .parameter

    .prologue
    .line 154
    const/high16 v0, 0x3fe0

    invoke-static {v0}, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->a(F)I

    move-result v0

    .line 155
    const/4 v1, 0x0

    invoke-static {v1}, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->a(F)I

    move-result v1

    .line 156
    const/high16 v2, 0x4060

    invoke-static {v2}, Lin/srain/cube/views/ptr/util/PtrLocalDisplay;->a(F)I

    move-result v2

    .line 157
    new-instance v3, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$OvalShadow;

    double-to-int v4, p1

    invoke-direct {v3, p0, v2, v4}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$OvalShadow;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;II)V

    .line 158
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v4, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->r:Landroid/graphics/drawable/ShapeDrawable;

    .line 159
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 160
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->k:Landroid/view/View;

    const/4 v4, 0x1

    iget-object v5, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 162
    :cond_0
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x1e00

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 163
    return-void
.end method

.method private a(DDDDFF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    .line 141
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->j:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 142
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 143
    float-to-double v2, v1

    mul-double/2addr v2, p1

    iput-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->n:D

    .line 144
    float-to-double v2, v1

    mul-double/2addr v2, p3

    iput-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->o:D

    .line 145
    double-to-float v2, p7

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(F)V

    .line 146
    float-to-double v2, v1

    mul-double/2addr v2, p5

    invoke-virtual {v0, v2, v3}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(D)V

    .line 147
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(I)V

    .line 148
    mul-float v2, p9, v1

    mul-float/2addr v1, p10

    invoke-virtual {v0, v2, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(FF)V

    .line 149
    iget-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->n:D

    double-to-int v1, v2

    iget-wide v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->o:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(II)V

    .line 150
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->n:D

    invoke-direct {p0, v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(D)V

    .line 151
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;)F
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->m:F

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 327
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    .line 328
    new-instance v1, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;

    invoke-direct {v1, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$2;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;)V

    .line 344
    sget-object v2, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 345
    const-wide/16 v2, 0x29a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 346
    new-instance v2, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$3;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 363
    new-instance v2, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;

    invoke-direct {v2, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$4;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;)V

    .line 389
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 390
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 391
    sget-object v3, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 392
    const-wide/16 v4, 0x535

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 393
    new-instance v3, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;

    invoke-direct {v3, p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$5;-><init>(Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 412
    iput-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->p:Landroid/view/animation/Animation;

    .line 413
    iput-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->l:Landroid/view/animation/Animation;

    .line 414
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->e(F)V

    .line 194
    return-void
.end method

.method public a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(F)V

    .line 204
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c(F)V

    .line 205
    return-void
.end method

.method public a(I)V
    .locals 14
    .parameter

    .prologue
    const-wide/high16 v2, 0x404c

    const-wide/high16 v12, 0x4044

    .line 173
    if-nez p1, :cond_0

    .line 174
    const-wide/high16 v6, 0x4029

    const-wide/high16 v8, 0x4008

    const/high16 v10, 0x4140

    const/high16 v11, 0x40c0

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(DDDDFF)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const-wide v6, 0x4021800000000000L

    const-wide/high16 v8, 0x4004

    const/high16 v10, 0x4120

    const/high16 v11, 0x40a0

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->a(DDDDFF)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(Z)V

    .line 187
    return-void
.end method

.method public varargs a([I)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a([I)V

    .line 233
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(I)V

    .line 234
    return-void
.end method

.method public b(F)V
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d(F)V

    .line 214
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->q:I

    .line 221
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(I)V

    .line 222
    return-void
.end method

.method c(F)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput p1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->i:F

    .line 282
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->invalidateSelf()V

    .line 283
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->r:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->r:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 255
    iget v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->i:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 256
    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 257
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 258
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->o:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->n:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v3, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->f:Ljava/util/ArrayList;

    .line 293
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 294
    :goto_0
    if-ge v2, v4, :cond_1

    .line 295
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 296
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    .line 300
    :goto_1
    return v0

    .line 294
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 300
    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->c(I)V

    .line 267
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(Landroid/graphics/ColorFilter;)V

    .line 272
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 306
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->j()V

    .line 308
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->g()F

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->k:Landroid/view/View;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(I)V

    .line 312
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->k()V

    .line 313
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->k:Landroid/view/View;

    iget-object v1, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->c(F)V

    .line 321
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->a(Z)V

    .line 322
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->b(I)V

    .line 323
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable;->g:Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialProgressDrawable$Ring;->k()V

    .line 324
    return-void
.end method
