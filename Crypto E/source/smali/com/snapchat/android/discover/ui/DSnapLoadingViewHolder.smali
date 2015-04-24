.class public Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/graphics/drawable/AnimationDrawable;

.field private final g:Landroid/animation/ObjectAnimator;

.field private final h:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

.field private i:Z

.field private j:Landroid/animation/Animator;

.field private final k:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 52
    new-instance v0, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-direct {v0, p1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->i:Z

    .line 130
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->k:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    .line 58
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->h:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    .line 59
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->b:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a:I

    .line 62
    const v0, 0x7f0a01a9

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    .line 63
    const v0, 0x7f0a01ab

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0a01aa

    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->e:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->f:Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private a(JFZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;

    invoke-direct {v1, p0, p4}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 225
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d()V

    .line 80
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v0, "DSnapLoadingViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADING-STATE: Hiding with duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    int-to-long v0, p1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(JFZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;I)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    const-string v0, "DSnapLoadingViewHolder"

    const-string v1, "LOADING-STATE %s: state: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    if-nez p1, :cond_3

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne p2, v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 127
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    if-eqz p1, :cond_2

    .line 116
    new-instance v0, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Landroid/widget/ImageView;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->k:Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Lcom/snapchat/android/util/bitmap/OnBitmapDecodedCallback;)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->b(I)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(I)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a(Z)Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest$Builder;->a()Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->h:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Lcom/snapchat/android/util/bitmap/AsyncLoadBitmapRequest;)V

    goto :goto_1
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->i:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->i:Z

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 157
    const/high16 v1, 0x4396

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-long v2, v1

    .line 158
    const-string v1, "DSnapLoadingViewHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADING-STATE: Cancel slow and hide fast with duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, v2, v3, v0, v6}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(JFZ)V

    goto :goto_0

    .line 161
    :cond_1
    const-string v0, "DSnapLoadingViewHolder"

    const-string v1, "LOADING-STATE: Hiding fast"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(I)V

    .line 171
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->f:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->i:Z

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->j:Landroid/animation/Animator;

    .line 196
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->h:Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/AsyncBitmapLoader;->a(Landroid/widget/ImageView;)V

    .line 197
    return-void
.end method
