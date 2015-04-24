.class public Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;,
        Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimatorEndListener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/snapchat/android/discover/ui/ChannelView;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a(FF)F
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x4000

    .line 191
    float-to-double v0, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Point;)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 180
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 181
    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 183
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(FF)F

    move-result v0

    .line 187
    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0, v3}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setBackgroundColor(I)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->removeView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/discover/ui/ChannelView;->addView(Landroid/view/View;I)V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->a(Landroid/widget/ImageView;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    .line 50
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->c()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/ChannelView;->getFillColor()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/ui/ChannelView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/ui/drawable/StrokedFilledCircleDrawable;-><init>(IF)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 57
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 58
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/discover/ui/ChannelView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 66
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Lcom/snapchat/android/discover/ui/ChannelView;

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/discover/ui/ChannelView;->removeView(Landroid/view/View;)V

    .line 69
    const/high16 v3, 0x41c8

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    .line 71
    iget-object v4, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->addView(Landroid/view/View;II)V

    .line 72
    iget-object v4, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setX(F)V

    .line 73
    iget-object v4, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 76
    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Landroid/graphics/Rect;Landroid/graphics/Point;)F

    move-result v0

    .line 79
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, -0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 89
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    sget-object v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    sget-object v5, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 94
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    new-instance v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$2;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V
    .locals 10
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const-wide/16 v8, 0x96

    const/high16 v7, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 125
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$3;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Landroid/widget/ImageView;

    sget-object v4, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->SCALE_Y:Landroid/util/Property;

    new-array v5, v5, [F

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 137
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    new-instance v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 168
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    return-void
.end method
