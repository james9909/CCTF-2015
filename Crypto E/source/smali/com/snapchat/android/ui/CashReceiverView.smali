.class public Lcom/snapchat/android/ui/CashReceiverView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/ViewGroup;

.field private d:Z

.field private e:Landroid/animation/ValueAnimator;

.field private f:Z

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Ljava/util/HashMap;

    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->b()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Ljava/util/HashMap;

    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->b()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Ljava/util/HashMap;

    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->b()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x4296

    const/high16 v5, 0x4248

    const/high16 v4, 0x41c8

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->f:Z

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    const v1, 0x446d8000

    const v2, 0x44228000

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getHotness()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v5

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getHotness()F

    move-result v1

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 145
    sget-object v1, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->b:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    if-ne p1, v1, :cond_0

    .line 146
    neg-float v0, v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v1

    .line 151
    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getHotness()F

    move-result v3

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    .line 153
    iget-object v3, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/snapchat/android/ui/CashReceiverView$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/snapchat/android/ui/CashReceiverView$1;-><init>(Lcom/snapchat/android/ui/CashReceiverView;FFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v2, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/snapchat/android/ui/CashReceiverView$2;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/snapchat/android/ui/CashReceiverView$2;-><init>(Lcom/snapchat/android/ui/CashReceiverView;FFLcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 195
    return-void

    .line 139
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashReceiverView;Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CashReceiverView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/snapchat/android/ui/CashReceiverView;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    const v1, 0x7f04001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v0, 0x7f0a00d6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashReceiverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->a()V

    .line 63
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->e()V

    .line 113
    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->d()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 118
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/CashReceiverView;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->f:Z

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 121
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->f()Landroid/widget/ImageView;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    const/high16 v0, -0x4000

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 125
    iget-boolean v2, p0, Lcom/snapchat/android/ui/CashReceiverView;->d:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/snapchat/android/ui/CashReceiverView;->d:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 127
    :cond_1
    const/high16 v2, 0x4200

    add-float/2addr v0, v2

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 131
    const/high16 v0, 0x4080

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 132
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 134
    const/high16 v0, -0x3e10

    const/high16 v2, 0x4270

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 135
    return-void
.end method

.method private e()V
    .locals 12

    .prologue
    const v6, 0x3e4ccccd

    .line 198
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->g()Landroid/widget/ImageView;

    move-result-object v2

    .line 200
    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    .line 201
    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 202
    const v3, 0x3f666666

    mul-float/2addr v0, v6

    add-float v4, v3, v0

    .line 203
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    .line 204
    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    .line 206
    const/4 v0, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashReceiverView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/ui/CashReceiverView;->addView(Landroid/view/View;I)V

    .line 212
    const v0, 0x40551eb8

    const v3, 0x3fd47ae1

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v9

    .line 213
    const v0, 0x3dcccccd

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v8

    .line 214
    const v0, 0x3ac49ba6

    const v3, -0x45fced91

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v3

    .line 215
    const/high16 v0, 0x4305

    mul-float/2addr v0, v4

    const/high16 v4, -0x3d7c

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v5

    .line 216
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    sub-float v6, v0, v1

    .line 218
    const-wide v0, 0x401921fb54442d18L

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v10, v4

    mul-double/2addr v0, v10

    double-to-float v4, v0

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40a0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    sub-float v7, v0, v1

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 223
    const-wide/16 v0, 0x1388

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 224
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    new-instance v0, Lcom/snapchat/android/ui/CashReceiverView$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/ui/CashReceiverView$3;-><init>(Lcom/snapchat/android/ui/CashReceiverView;Landroid/view/View;FFFFFFF)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    new-instance v0, Lcom/snapchat/android/ui/CashReceiverView$4;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/ui/CashReceiverView$4;-><init>(Lcom/snapchat/android/ui/CashReceiverView;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    return-void

    .line 222
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private f()Landroid/widget/ImageView;
    .locals 6

    .prologue
    .line 254
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 255
    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    const/high16 v1, 0x4110

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    .line 257
    const/high16 v2, 0x4190

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    .line 258
    const v3, 0x3f666666

    const v4, 0x3e4ccccd

    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 260
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 261
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    const-string v1, "CAUGHT_DOLLAR_TAG"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 263
    return-object v0
.end method

.method private g()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 283
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    const/high16 v1, 0x4290

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    .line 286
    const/high16 v2, 0x4210

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashReceiverView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    .line 287
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    const-string v1, "FALLING_DOLLAR_TAG"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 289
    return-object v0
.end method

.method private getHotness()F
    .locals 10

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 273
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 274
    const-wide/16 v8, 0x7d0

    sub-long v8, v2, v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 275
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 277
    goto :goto_0

    .line 279
    :cond_0
    int-to-float v0, v1

    const/high16 v1, 0x40c0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/snapchat/android/util/MathUtils;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->d:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->a:I

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "CAUGHT_DOLLAR_TAG"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "FALLING_DOLLAR_TAG"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CashReceiverView;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 87
    :cond_4
    return-void
.end method

.method public a(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    move v1, v0

    .line 98
    :goto_0
    if-gtz v1, :cond_2

    .line 109
    :cond_0
    return-void

    :cond_1
    move v1, p1

    .line 95
    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->g:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->a:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;)V

    .line 106
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/snapchat/android/ui/CashReceiverView;->c()V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
