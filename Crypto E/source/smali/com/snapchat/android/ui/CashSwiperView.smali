.class public Lcom/snapchat/android/ui/CashSwiperView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/CashSwiperView$AnimationEndListener;,
        Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;,
        Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;,
        Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Landroid/os/Handler;

.field private C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

.field private D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

.field private b:Landroid/view/GestureDetector;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:F

.field private f:Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

.field private g:I

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/VelocityTracker;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/ViewPropertyAnimator;

.field private l:Landroid/view/ViewPropertyAnimator;

.field private m:F

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/ViewGroup;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/media/MediaPlayer;

.field private v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private w:Landroid/animation/ValueAnimator;

.field private x:Landroid/os/Handler;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/CashSwiperView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    .line 109
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    .line 114
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    .line 119
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    return-object v0
.end method

.method private a(F)V
    .locals 4
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 392
    :cond_0
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->n:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$6;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    const/16 v1, 0x270f

    if-ge v0, v1, :cond_1

    .line 402
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    .line 403
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->b(F)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->m()V

    goto :goto_0
.end method

.method private a(FLandroid/view/View;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 194
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 195
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    .line 196
    new-array v4, v8, [I

    .line 197
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v1

    .line 198
    :goto_0
    if-ge v0, v8, :cond_0

    .line 199
    aget v6, v2, v0

    int-to-float v6, v6

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v5

    mul-float/2addr v6, v7

    aget v7, v3, v0

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v4, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const/high16 v0, -0xe00

    aget v1, v4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v4, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, v4, v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBackgroundColor(I)V

    .line 204
    const v0, 0x7f0a01a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    float-to-double v2, p1

    const-wide v4, 0x3ff8532617c1bda5L

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    const-wide v6, 0x3fe0548a9bcfd4bfL

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/snapchat/android/util/ViewUtils;->a(DD)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 207
    return-void

    .line 194
    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 195
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/view/ViewPropertyAnimator;

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/ViewPropertyAnimator;

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->i()V

    .line 337
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x3e8

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 255
    iget-boolean v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->z:Z

    if-nez v2, :cond_0

    .line 325
    :goto_0
    return v0

    .line 258
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 259
    invoke-virtual {p2, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 262
    goto :goto_0

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/view/ViewPropertyAnimator;

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->k:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 267
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->l:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->e:F

    .line 275
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->e:F

    sub-float/2addr v2, v3

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 277
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_6

    .line 279
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 283
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v3, v2, v3

    sub-float v3, v6, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 284
    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/CashSwiperView;->setAlpha(F)V

    .line 288
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 291
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_5

    .line 293
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->e:F

    :cond_5
    move v0, v1

    .line 295
    goto/16 :goto_0

    .line 286
    :cond_6
    invoke-virtual {p0, v6}, Lcom/snapchat/android/ui/CashSwiperView;->setAlpha(F)V

    goto :goto_1

    .line 298
    :cond_7
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 299
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->b:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 300
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v1, :cond_a

    .line 302
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snapchat/android/util/ViewUtils;->b(FLandroid/content/Context;)F

    move-result v2

    .line 303
    const/high16 v4, -0x3cea

    cmpg-float v4, v2, v4

    if-gez v4, :cond_b

    .line 305
    if-nez v3, :cond_8

    .line 306
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 307
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/snapchat/android/ui/CashSwiperView;->a(F)V

    .line 319
    :cond_8
    :goto_2
    if-nez v3, :cond_9

    .line 320
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 323
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_a
    move v0, v1

    .line 325
    goto/16 :goto_0

    .line 309
    :cond_b
    const/high16 v4, 0x4316

    cmpl-float v2, v2, v4

    if-lez v2, :cond_c

    .line 311
    if-nez v3, :cond_8

    .line 312
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 313
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->c()V

    goto :goto_2

    .line 316
    :cond_c
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashSwiperView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private b(F)V
    .locals 11
    .parameter

    .prologue
    const/high16 v5, 0x3fc0

    const/high16 v8, 0x3f80

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 410
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->j()V

    .line 412
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    if-ne v0, v10, :cond_0

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->A:J

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Z

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->n()V

    .line 423
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 424
    const/16 v0, 0xc8

    .line 425
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v10, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v3, v5

    mul-float v4, v5, p1

    const v5, -0x3ac48000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 430
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v10, [F

    aput v2, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 431
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    const-string v4, "scaleX"

    new-array v5, v10, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 432
    iget-object v4, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    const-string v5, "scaleY"

    new-array v6, v10, [F

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 434
    iget-object v5, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    .line 435
    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    iput-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    .line 437
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->g()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    .line 438
    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnBottom(Landroid/view/View;)V

    .line 439
    iget-object v6, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

    invoke-interface {v6}, Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;->r()V

    .line 441
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 442
    int-to-long v8, v0

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 443
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$7;

    invoke-direct {v0, p0, v5}, Lcom/snapchat/android/ui/CashSwiperView$7;-><init>(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v7

    aput-object v2, v0, v10

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 451
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 452
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 696
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 699
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/CashSwiperView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/CashSwiperView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->h()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->l()V

    return-void
.end method

.method private getBlingtonePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    sget-object v0, Lcom/snapchat/android/ui/CashSwiperView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Z

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 213
    :cond_0
    iput-boolean v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Z

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    const-string v0, "coolness"

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$4;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->b()V

    .line 228
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->j()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f80

    .line 340
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getAlpha()F

    move-result v0

    .line 342
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x43fa

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 346
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/ui/CashSwiperView;)Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 371
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    if-nez v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->k()V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const v0, 0x7f0c0203

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 380
    const v0, 0x7f0c0205

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->p()V

    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 384
    const v0, 0x7f0c0204

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 458
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->i()V

    .line 459
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->o()V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->r()V

    .line 478
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getHotness()F

    move-result v0

    .line 479
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a()V

    .line 482
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/ui/CashSwiperView;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Z

    return v0
.end method

.method private o()V
    .locals 6

    .prologue
    .line 609
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    sub-int/2addr v0, v1

    .line 615
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->x:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/ui/CashSwiperView$11;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/CashSwiperView$11;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    add-int/lit16 v3, v3, -0x1f4

    sub-int v0, v3, v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic o(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->q()V

    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 657
    const/high16 v0, 0x3f80

    .line 658
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 659
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 662
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const v2, 0x402df854

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    .line 663
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 664
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 665
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 669
    const v0, 0x402df854

    .line 670
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 674
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const/high16 v2, 0x3f80

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    .line 675
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 676
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 677
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    .line 702
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    if-eqz v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 704
    :cond_0
    const/high16 v0, 0x4240

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 706
    new-instance v1, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;-><init>()V

    .line 707
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->b(I)Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->a(I)Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;

    move-result-object v0

    const/high16 v2, 0x42fa

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->c(I)Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;

    .line 711
    invoke-virtual {v1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->a()Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    .line 712
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->D:Lcom/snapchat/android/cash/QuasiRandomPointGenerator;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ParticleSparkleView;->a(Lcom/snapchat/android/cash/PointGenerator;)V

    goto :goto_0
.end method

.method private setBarTextWithFade(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->z:Z

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/snapchat/android/ui/CashSwiperView;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 357
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 358
    new-instance v2, Lcom/snapchat/android/ui/CashSwiperView$5;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/ui/CashSwiperView$5;-><init>(Lcom/snapchat/android/ui/CashSwiperView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/widget/TextView;

    sget-object v3, Lcom/snapchat/android/ui/CashSwiperView;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f80

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 365
    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 366
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 367
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private setUpDollarViewOnBottom(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x3f6147ae

    .line 173
    invoke-static {p1}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/view/View;)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 175
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->o:Z

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getHotness()F

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/ui/CashSwiperView;->a(FLandroid/view/View;)V

    .line 185
    :cond_0
    return-void
.end method

.method private setUpDollarViewOnTop(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 249
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 250
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 251
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 252
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 465
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnTop(Landroid/view/View;)V

    .line 466
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnBottom(Landroid/view/View;)V

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    .line 468
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->k()V

    .line 469
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 508
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView$8;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 520
    if-nez p1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 124
    const v1, 0x7f04001f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView$1;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    const v0, 0x7f0a00e9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->C:Lcom/snapchat/android/ui/cash/ParticleSparkleView;

    .line 136
    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Landroid/view/ViewGroup;

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Landroid/view/ViewGroup;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$2;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->s:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Ljava/util/List;

    .line 147
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->g()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    .line 148
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->g()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    .line 149
    const v0, 0x7f0a00e8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->h:Landroid/widget/TextView;

    .line 150
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/ui/CashSwiperView$DollarGestureDetectorListener;-><init>(Lcom/snapchat/android/ui/CashSwiperView;Lcom/snapchat/android/ui/CashSwiperView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->b:Landroid/view/GestureDetector;

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->n:Landroid/os/Handler;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:Ljava/util/List;

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->x:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/snapchat/android/ui/CashSwiperView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView$3;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->v:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->B:Landroid/os/Handler;

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnBottom(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpDollarViewOnTop(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setAlpha(F)V

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    .line 501
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 502
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->e()V

    .line 503
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 504
    return-void
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 528
    invoke-virtual {p0, v7}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

    invoke-interface {v0}, Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;->t()V

    .line 531
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const v2, 0x443b8000

    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 536
    sget-object v2, Lcom/snapchat/android/ui/CashSwiperView;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 537
    iget-object v3, p0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/view/View;

    sget-object v4, Lcom/snapchat/android/ui/CashSwiperView;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    aput v1, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 539
    iget-object v4, p0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/view/View;

    sget-object v5, Lcom/snapchat/android/ui/CashSwiperView;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    aput v1, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 542
    const/high16 v4, 0x43fa

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 543
    new-instance v4, Lcom/snapchat/android/ui/CashSwiperView$9;

    invoke-direct {v4, p0}, Lcom/snapchat/android/ui/CashSwiperView$9;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 551
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 552
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 554
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->f()V

    .line 555
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 558
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    .line 559
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->a()V

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

    invoke-interface {v0}, Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;->s()V

    .line 563
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->f()V

    .line 564
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Z

    .line 572
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->p()V

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 576
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 605
    :goto_0
    return-void

    .line 580
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    .line 581
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 582
    sget-object v0, Lcom/snapchat/android/ui/CashSwiperView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$10;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 604
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->u:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0

    .line 586
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->y:Z

    .line 638
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->x:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 640
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView;->q()V

    .line 641
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$12;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 652
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->w:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 653
    return-void
.end method

.method protected g()Landroid/view/View;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 685
    const v1, 0x7f040042

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/ui/CashSwiperView;->r:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 689
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 692
    return-object v0
.end method

.method public getCoolness()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:F

    return v0
.end method

.method public getDollarsSwiped()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    return v0
.end method

.method public getFirstSwipeMillis()J
    .locals 2

    .prologue
    .line 719
    iget-wide v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->A:J

    return-wide v0
.end method

.method protected getHotness()F
    .locals 12

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    const-wide/16 v2, 0x1388

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 489
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 490
    sub-long v10, v4, v2

    cmp-long v0, v8, v10

    if-lez v0, :cond_1

    .line 491
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 493
    goto :goto_0

    .line 494
    :cond_0
    int-to-float v0, v1

    const/high16 v1, 0x4170

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setCoolness(F)V
    .locals 3
    .parameter

    .prologue
    .line 238
    iput p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->m:F

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/ui/CashSwiperView;->a(FLandroid/view/View;)V

    goto :goto_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method protected setDollarsSwiped(I)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->g:I

    .line 725
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 190
    iput-boolean p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->z:Z

    .line 191
    return-void
.end method

.method public setListener(Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView;->f:Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;

    .line 473
    return-void
.end method

.method public setSwipeTimes(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView;->j:Ljava/util/List;

    .line 730
    return-void
.end method
