.class public Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;
.source "SourceFile"


# instance fields
.field private final e:Landroid/view/LayoutInflater;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

.field private h:Landroid/view/View;

.field private i:I

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/Animator$AnimatorListener;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-direct {v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>()V

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/util/bitmap/BitmapRecycling;)V

    .line 60
    return-void
.end method

.method constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;Lcom/snapchat/android/util/bitmap/BitmapRecycling;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V

    .line 66
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->f:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->e:Landroid/view/LayoutInflater;

    .line 68
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->g:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    .line 69
    return-void
.end method

.method private a(II)Landroid/graphics/Paint;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 146
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 147
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x4040

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 148
    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->k:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->i:I

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->h:Landroid/view/View;

    return-object v0
.end method

.method private h()Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 154
    const/high16 v1, -0x3f60

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->f:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->h:Landroid/view/View;

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v4, v8, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 157
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 159
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 160
    const-wide/16 v2, 0x578

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 161
    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/ImageView;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x3dcccccd

    const/high16 v10, 0x4000

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 93
    int-to-float v1, v0

    const v2, 0x3e851eb8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 94
    int-to-float v2, v0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 95
    int-to-float v3, v2

    const/high16 v4, 0x3ec0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 96
    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 97
    int-to-float v4, v3

    div-float/2addr v4, v10

    .line 99
    add-int v5, v0, v3

    add-int v6, v1, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 101
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-direct {p0, p2, v2}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(II)Landroid/graphics/Paint;

    move-result-object v2

    .line 107
    invoke-direct {p0, p3, v3}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(II)Landroid/graphics/Paint;

    move-result-object v3

    .line 110
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 111
    int-to-float v8, v1

    invoke-virtual {v7, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    int-to-float v8, v0

    div-float/2addr v8, v10

    int-to-float v9, v1

    sub-float/2addr v9, v4

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 113
    int-to-float v0, v0

    div-float/2addr v0, v10

    int-to-float v1, v1

    sub-float/2addr v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 115
    invoke-virtual {v6, v7, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v6, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb47ae147ae147bL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->i:I

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a:Landroid/view/View;

    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->h:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->h:Landroid/view/View;

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 124
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->h()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->k:Landroid/animation/AnimatorSet;

    .line 125
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->l:Landroid/animation/Animator$AnimatorListener;

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->k:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->l:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f040044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a:Landroid/view/View;

    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->c:Landroid/widget/FrameLayout;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a:Landroid/view/View;

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->j:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DSnapView;->getPublisherPrimaryColor()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/DSnapView;->getPublisherSecondaryColor()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(Landroid/widget/ImageView;II)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a:Landroid/view/View;

    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->c()V

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->g:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    .line 198
    :cond_0
    return-void
.end method

.method public n_()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->n_()V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->m:Z

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->m:Z

    goto :goto_0
.end method

.method public o_()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->o_()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->m:Z

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;-><init>(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)V

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method
