.class public Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/content/Context;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-object p1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private a(Landroid/view/View;FFJ)Landroid/animation/Animator;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    sget-object v0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->ROTATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 246
    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FFJ)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p5, p6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 240
    return-object v0
.end method

.method private a(Landroid/view/View;ZJJ)Landroid/animation/Animator;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 252
    if-eqz p2, :cond_0

    .line 253
    sget-object v0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 258
    :goto_0
    invoke-virtual {v0, p5, p6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 259
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 260
    return-object v0

    .line 255
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 253
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 255
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 9
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->SCALE_X:Landroid/util/Property;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3fc0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->SCALE_Y:Landroid/util/Property;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3fc0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v8, 0x4

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x640

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v8, 0x5

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 170
    return-object p1
.end method

.method private b(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f40

    const v2, -0x435c28f6

    const-wide/16 v6, 0x0

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->SCALE_X:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->SCALE_Y:Landroid/util/Property;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    const/4 v5, 0x1

    const-wide/16 v8, 0xc8

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    const-wide/16 v4, 0x708

    const-wide/16 v6, 0xc8

    move-object v1, p0

    move v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 182
    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 84
    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0a0313

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->e:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->g:Landroid/graphics/Bitmap;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->e(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    .line 103
    return-void
.end method

.method private c(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 12
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x41fae148

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x421eb852

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e70a3d7

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 190
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-wide/16 v10, 0x215

    .line 192
    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x4110

    const-wide/16 v4, 0x2

    div-long v4, v10, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    const/high16 v2, 0x4110

    const/4 v3, 0x0

    const-wide/16 v4, 0x2

    div-long v4, v10, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->c:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 200
    return-object p1
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/16 v1, 0x1f4

    const/high16 v4, 0x437a

    .line 106
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Lcom/snapchat/android/util/SnapMediaUtils;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 110
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    const/high16 v3, 0x4120

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const/high16 v3, 0x4370

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    return-object v0
.end method

.method private d(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 9
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x435c28f6

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x41e66666

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->e:Landroid/widget/TextView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x708

    const-wide/16 v6, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 209
    return-object p1
.end method

.method private e(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 14
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x41e66666

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x4180

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 216
    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x190

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v8

    .line 217
    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 219
    const/4 v1, 0x0

    .line 220
    const-wide/16 v10, 0x215

    .line 221
    const/4 v0, 0x0

    move v9, v0

    move-object v0, v1

    :goto_0
    const/4 v1, 0x3

    if-ge v9, v1, :cond_1

    .line 223
    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x2

    div-long v6, v10, v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v12

    .line 224
    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->SCALE_X:Landroid/util/Property;

    const v4, 0x3e4ccccd

    const v5, 0x3f333333

    move-object v1, p0

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v13

    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    sget-object v3, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->SCALE_Y:Landroid/util/Property;

    const v4, 0x3e4ccccd

    const v5, 0x3f333333

    move-object v1, p0

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;Landroid/util/Property;FFJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    if-nez v9, :cond_0

    move-object v0, v8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    iget-object v2, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x2

    div-long v6, v10, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->a(Landroid/view/View;ZJJ)Landroid/animation/Animator;

    move-result-object v1

    .line 230
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 221
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    move-object v0, v1

    goto :goto_0

    .line 234
    :cond_1
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 120
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->b()V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 154
    :goto_0
    if-ge v0, v2, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 156
    sub-int v4, p4, p2

    .line 157
    sub-int v5, p5, p3

    .line 158
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 128
    .line 130
    invoke-virtual {p0}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->getChildCount()I

    move-result v5

    move v4, v0

    move v2, v0

    move v3, v0

    .line 131
    :goto_0
    if-ge v4, v5, :cond_0

    .line 132
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 135
    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 136
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 138
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v3

    .line 131
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 145
    if-lez v3, :cond_1

    if-lez v2, :cond_1

    .line 146
    mul-int v1, v0, v2

    div-int/2addr v1, v3

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/animation/TapToSkipInstructorView;->setMeasuredDimension(II)V

    .line 149
    :cond_1
    return-void

    :cond_2
    move v0, v2

    move v1, v3

    goto :goto_1
.end method
