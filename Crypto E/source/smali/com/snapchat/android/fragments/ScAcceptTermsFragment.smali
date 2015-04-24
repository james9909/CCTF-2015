.class public Lcom/snapchat/android/fragments/ScAcceptTermsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Random;


# instance fields
.field private final b:Lcom/snapchat/android/service/SnapchatServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;-><init>(Lcom/snapchat/android/service/SnapchatServiceManager;)V

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/service/SnapchatServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->h()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x21

    .line 98
    const v0, 0x7f0c0213

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    const v1, 0x7f0c0215

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    const v2, 0x7f0c0214

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 103
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v5, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$2;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 119
    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v4, v2, v0, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 133
    const v0, 0x7f0a0263

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    const v0, 0x7f0a0268

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 139
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 140
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f0c0212

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$5;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v7, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 163
    const v0, 0x7f0a0264

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 166
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->q()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)Lcom/snapchat/android/service/SnapchatServiceManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->i()Landroid/animation/Animator;

    move-result-object v0

    .line 175
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->k()Landroid/animation/Animator;

    move-result-object v1

    .line 176
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->l()Landroid/animation/Animator;

    move-result-object v2

    .line 177
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->n()Landroid/animation/Animator;

    move-result-object v3

    .line 178
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->o()Landroid/animation/Animator;

    move-result-object v4

    .line 180
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 181
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 182
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 183
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 185
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    return-void
.end method

.method private i()Landroid/animation/Animator;
    .locals 10

    .prologue
    .line 189
    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    const v1, 0x7f0a0260

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    const v2, 0x7f0a0262

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, -0x4080

    mul-float v5, v3, v4

    .line 194
    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v4

    sub-float v6, v3, v4

    .line 199
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v4

    sub-float v4, v3, v4

    .line 200
    const v3, 0x7f0a0263

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 201
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 202
    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    .line 204
    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v7

    sub-float/2addr v3, v7

    sub-float v4, v3, v4

    .line 205
    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v3

    add-float v7, v3, v4

    .line 207
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    float-to-int v7, v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 209
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move v1, v4

    .line 212
    const-string v3, "translationY"

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v4, v7

    const/4 v7, 0x1

    aput v6, v4, v7

    const/4 v7, 0x2

    aput v1, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 213
    const-string v4, "translationX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 214
    const-string v4, "translationY"

    const/4 v7, 0x3

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v6, 0x2

    aput v1, v7, v6

    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 215
    const-string v4, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    aput v5, v6, v7

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 216
    const-wide/16 v6, 0x104

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    const-wide/16 v6, 0x104

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    const-wide/16 v6, 0x104

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    const-wide/16 v6, 0x104

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 221
    const-string v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 222
    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    new-instance v6, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;

    invoke-direct {v6, p0, v2}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$6;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 234
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 236
    const-wide/16 v0, 0x64

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 237
    return-object v2

    .line 221
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private k()Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 241
    const v0, 0x7f0a0263

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    const v1, 0x7f0a0264

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 243
    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 244
    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 246
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 247
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 248
    const-wide/16 v2, 0x82

    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 249
    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$7;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    return-object v4

    .line 243
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 244
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private l()Landroid/animation/Animator;
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 264
    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    const-string v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 266
    const-string v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 268
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 269
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 270
    const-wide/16 v4, 0xe6

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 271
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$8;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$8;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    return-object v3

    .line 265
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 266
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private n()Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 286
    const v0, 0x7f0a0265

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 287
    const-string v1, "rotation"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, -0x3e60

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 288
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 290
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 291
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 292
    const-wide/16 v4, 0x82

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 293
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$9;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    return-object v3

    .line 288
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private o()Landroid/animation/Animator;
    .locals 10

    .prologue
    const-wide/16 v8, 0x16d

    const-wide/16 v6, 0xb6

    const/4 v4, 0x2

    .line 308
    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 309
    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 310
    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 314
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 315
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$10;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$10;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 327
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 328
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 329
    const-string v1, "rotation"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 330
    const-string v1, "rotation"

    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 331
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 332
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 334
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 335
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 336
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 339
    sget-object v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v3, v1, 0x4

    .line 340
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->p()Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$11;

    invoke-direct {v1, p0, v0, v4}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$11;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    return-object v4

    .line 309
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data

    .line 310
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 329
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xdct 0xc2t
    .end array-data

    .line 330
    :array_3
    .array-data 0x4
        0x0t 0x0t 0xdct 0xc2t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private p()Landroid/animation/Animator;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, -0x2

    const/high16 v6, 0x4120

    const/4 v5, 0x0

    .line 360
    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 361
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 363
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    const/4 v3, 0x2

    const v4, 0x7f0a0268

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 368
    const v3, 0x7f0a0267

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    sget-object v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 374
    int-to-float v3, v2

    div-float/2addr v3, v6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 375
    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 377
    const/high16 v0, 0x4296

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 379
    sget-object v0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/16 v2, 0x47

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, -0x1

    .line 380
    sget-object v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->a:Ljava/util/Random;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x50

    mul-int/lit8 v2, v2, -0x1

    .line 381
    const-string v3, "translationX"

    new-array v4, v7, [F

    int-to-float v2, v2

    aput v2, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 382
    const-string v3, "translationY"

    new-array v4, v7, [F

    int-to-float v0, v0

    aput v0, v4, v5

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 384
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 385
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 386
    new-instance v0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$12;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$12;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    const-wide/16 v0, 0xb6

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 400
    return-object v3
.end method

.method private q()V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    const v1, 0x7f0c01b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 414
    const v1, 0x7f0c022a

    new-instance v2, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$13;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    const v1, 0x7f0c0130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 433
    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->q()V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const v0, 0x7f040072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->x:Landroid/view/View;

    .line 74
    invoke-direct {p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->b()V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$1;-><init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->x:Landroid/view/View;

    return-object v0
.end method
