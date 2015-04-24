.class public Lcom/snapchat/android/ui/ColorPickerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:I


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroid/view/animation/ScaleAnimation;

.field private f:Landroid/view/animation/TranslateAnimation;

.field private g:Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:[I

.field private l:[F

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    .line 40
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    array-length v0, v0

    sput v0, Lcom/snapchat/android/ui/ColorPickerView;->b:I

    return-void

    .line 26
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x99t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xcct 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x5t 0xe8t 0x25t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xa2t 0xfft 0xfft
        0x1bt 0x5et 0xa9t 0xfft
        0x0t 0x0t 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const-wide/16 v10, 0x8c

    const/4 v4, 0x0

    const/high16 v1, 0x3f80

    const/4 v5, 0x1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->c:Z

    .line 43
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->d:Z

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->k:[I

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->m:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/snapchat/android/ui/ColorPickerView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/ColorPickerView$1;-><init>(Lcom/snapchat/android/ui/ColorPickerView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->n:Ljava/lang/Runnable;

    .line 111
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 112
    const v2, 0x7f040092

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    const v0, 0x7f0a031d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->i:Landroid/view/View;

    .line 115
    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    const v2, 0x7f0a031c

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/ColorPickerView;->j:Landroid/view/View;

    .line 117
    const v2, 0x7f0a0318

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ColorPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    .line 119
    new-instance v2, Lcom/snapchat/android/ui/ColorPickerView$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/ColorPickerView$2;-><init>(Lcom/snapchat/android/ui/ColorPickerView;)V

    .line 190
    iget-object v3, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v3, p0, Lcom/snapchat/android/ui/ColorPickerView;->j:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x3e44

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->f:Landroid/view/animation/TranslateAnimation;

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 200
    new-instance v0, Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;

    const/high16 v2, 0x4140

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x4210

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;-><init>(Lcom/snapchat/android/ui/ColorPickerView;IILandroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->g:Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->g:Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;

    invoke-virtual {v0, v10, v11}, Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;->setDuration(J)V

    .line 205
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x41d0

    const/high16 v8, 0x3f00

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->e:Landroid/view/animation/ScaleAnimation;

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->e:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->e:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 209
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter

    .prologue
    const/high16 v13, 0x4140

    const/4 v12, 0x1

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/16 v9, 0xff

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 215
    iget-object v2, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 216
    sget v3, Lcom/snapchat/android/ui/ColorPickerView;->b:I

    div-int/2addr v2, v3

    .line 218
    iget-object v3, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    iget-object v4, p0, Lcom/snapchat/android/ui/ColorPickerView;->k:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 219
    iget-object v3, p0, Lcom/snapchat/android/ui/ColorPickerView;->k:[I

    aget v3, v3, v12

    .line 220
    iget-object v4, p0, Lcom/snapchat/android/ui/ColorPickerView;->k:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 224
    int-to-float v5, v1

    int-to-float v6, v4

    const/high16 v7, 0x4080

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v8

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    mul-int/lit8 v5, v2, 0xc

    add-int/2addr v5, v3

    if-le v0, v5, :cond_2

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 229
    iget-object v3, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    const/high16 v4, 0x43b4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    aput v0, v3, v10

    .line 230
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    const/high16 v3, 0x3f80

    aput v3, v0, v12

    .line 232
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    const/4 v3, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v11

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ColorPickerView;->a(I)V

    .line 298
    :goto_1
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    int-to-float v1, v1

    mul-float/2addr v1, v11

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v11, v1

    aput v1, v0, v12

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    goto :goto_0

    .line 243
    :cond_2
    add-int v5, v3, v2

    if-ge v0, v5, :cond_4

    .line 244
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    aget v0, v0, v10

    .line 267
    :goto_2
    int-to-float v2, v1

    int-to-float v3, v4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v5

    sub-float/2addr v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_11

    int-to-float v2, v1

    int-to-float v3, v4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v5

    mul-float/2addr v5, v11

    sub-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_11

    .line 270
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 271
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    aget v2, v1, v12

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    aput v2, v1, v12

    .line 273
    sget-object v1, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-ne v0, v1, :cond_e

    .line 274
    const/16 v0, 0x8c

    const/16 v1, 0x8c

    const/16 v2, 0x8c

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 297
    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ColorPickerView;->a(I)V

    goto :goto_1

    .line 245
    :cond_4
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_5

    .line 246
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    aget v0, v0, v12

    goto :goto_2

    .line 247
    :cond_5
    mul-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_6

    .line 248
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    goto :goto_2

    .line 249
    :cond_6
    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_7

    .line 250
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x3

    aget v0, v0, v2

    goto :goto_2

    .line 251
    :cond_7
    mul-int/lit8 v5, v2, 0x5

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_8

    .line 252
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    goto :goto_2

    .line 253
    :cond_8
    mul-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_9

    .line 254
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x5

    aget v0, v0, v2

    goto :goto_2

    .line 255
    :cond_9
    mul-int/lit8 v5, v2, 0x7

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_a

    .line 256
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x6

    aget v0, v0, v2

    goto/16 :goto_2

    .line 257
    :cond_a
    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_b

    .line 258
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x7

    aget v0, v0, v2

    goto/16 :goto_2

    .line 259
    :cond_b
    mul-int/lit8 v5, v2, 0x9

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_c

    .line 260
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0x8

    aget v0, v0, v2

    goto/16 :goto_2

    .line 261
    :cond_c
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_d

    .line 262
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0x9

    aget v0, v0, v2

    goto/16 :goto_2

    .line 264
    :cond_d
    sget-object v0, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    goto/16 :goto_2

    .line 275
    :cond_e
    sget-object v1, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-ne v0, v1, :cond_f

    .line 276
    const/16 v0, 0x6c

    const/16 v1, 0xab

    invoke-static {v9, v0, v1, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto/16 :goto_3

    .line 277
    :cond_f
    sget-object v1, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    if-ne v0, v1, :cond_10

    .line 278
    const/16 v0, 0x78

    invoke-static {v0, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto/16 :goto_3

    .line 280
    :cond_10
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    goto/16 :goto_3

    .line 283
    :cond_11
    int-to-float v1, v1

    int-to-float v2, v4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v3

    mul-float/2addr v3, v11

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 285
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 286
    iget-object v1, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    const/4 v2, 0x2

    aget v3, v1, v2

    const v4, 0x3f19999a

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 288
    sget-object v1, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    if-ne v0, v1, :cond_12

    .line 289
    const/16 v0, 0x50

    invoke-static {v0, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto/16 :goto_3

    .line 290
    :cond_12
    sget-object v1, Lcom/snapchat/android/ui/ColorPickerView;->a:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    if-ne v0, v1, :cond_13

    .line 291
    const/16 v0, 0xc8

    const/16 v1, 0xc8

    const/16 v2, 0xc8

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto/16 :goto_3

    .line 293
    :cond_13
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->l:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ColorPickerView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ColorPickerView;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ColorPickerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ColorPickerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ColorPickerView;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/ColorPickerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/ColorPickerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ColorPickerView;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->f:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->e:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/ColorPickerView;)Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->g:Lcom/snapchat/android/ui/ColorPickerView$HorizontalExpandAnimation;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/ColorPickerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/ui/ColorPickerView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/ui/ColorPickerView;->m:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 301
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ColorPickedEvent;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/eventbus/ColorPickedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 302
    return-void
.end method
