.class public final Lcom/snapchat/android/util/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/util/ViewUtils;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 62
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 172
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_0
    const/16 v0, 0x5a

    .line 173
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 166
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 168
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->c(I)Z

    move-result v3

    .line 199
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->f(I)Z

    move-result v0

    .line 200
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->d(I)Z

    move-result v1

    .line 201
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->e(I)Z

    move-result v2

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 231
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v4, v0

    move v0, v3

    move v3, v1

    move v1, v4

    .line 237
    :goto_0
    if-eqz v0, :cond_1

    .line 238
    const/16 v0, 0x30

    .line 245
    :goto_1
    if-eqz v2, :cond_3

    .line 246
    or-int/lit8 v0, v0, 0x3

    :goto_2
    move p0, v0

    .line 253
    :cond_0
    return p0

    :pswitch_1
    move v4, v3

    move v3, v2

    move v2, v4

    .line 217
    goto :goto_0

    :pswitch_2
    move v4, v2

    move v2, v0

    move v0, v1

    move v1, v4

    .line 223
    goto :goto_0

    :pswitch_3
    move v4, v3

    move v3, v0

    move v0, v2

    move v2, v1

    move v1, v4

    .line 229
    goto :goto_0

    .line 239
    :cond_1
    if-eqz v3, :cond_2

    .line 240
    const/16 v0, 0x50

    goto :goto_1

    .line 242
    :cond_2
    const/16 v0, 0x10

    goto :goto_1

    .line 247
    :cond_3
    if-eqz v1, :cond_4

    .line 248
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 250
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 501
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;III)Landroid/animation/ValueAnimator;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 366
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    new-instance v1, Lcom/snapchat/android/util/ViewUtils$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/ViewUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 378
    return-object v0
.end method

.method public static a(DD)Landroid/graphics/ColorFilter;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 459
    new-array v0, v10, [[F

    new-array v1, v10, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    new-array v1, v10, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v10, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v9

    .line 464
    new-array v1, v10, [[F

    new-array v2, v10, [F

    double-to-float v3, p2

    aput v3, v2, v7

    aput v6, v2, v8

    aput v6, v2, v9

    aput-object v2, v1, v7

    new-array v2, v10, [F

    aput v6, v2, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    aput v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v10, [F

    aput v6, v2, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v9

    aput-object v2, v1, v9

    .line 469
    new-array v2, v10, [[F

    new-array v3, v10, [F

    fill-array-data v3, :array_3

    aput-object v3, v2, v7

    new-array v3, v10, [F

    fill-array-data v3, :array_4

    aput-object v3, v2, v8

    new-array v3, v10, [F

    fill-array-data v3, :array_5

    aput-object v3, v2, v9

    .line 474
    invoke-static {v2, v1}, Lcom/snapchat/android/util/ViewUtils;->a([[F[[F)[[F

    move-result-object v1

    invoke-static {v1, v0}, Lcom/snapchat/android/util/ViewUtils;->a([[F[[F)[[F

    move-result-object v0

    .line 475
    const/16 v1, 0x14

    new-array v1, v1, [F

    aget-object v2, v0, v7

    aget v2, v2, v7

    aput v2, v1, v7

    aget-object v2, v0, v7

    aget v2, v2, v8

    aput v2, v1, v8

    aget-object v2, v0, v7

    aget v2, v2, v9

    aput v2, v1, v9

    aput v6, v1, v10

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aget-object v3, v0, v8

    aget v3, v3, v7

    aput v3, v1, v2

    const/4 v2, 0x6

    aget-object v3, v0, v8

    aget v3, v3, v8

    aput v3, v1, v2

    const/4 v2, 0x7

    aget-object v3, v0, v8

    aget v3, v3, v9

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v6, v1, v2

    const/16 v2, 0x9

    aput v6, v1, v2

    const/16 v2, 0xa

    aget-object v3, v0, v9

    aget v3, v3, v7

    aput v3, v1, v2

    const/16 v2, 0xb

    aget-object v3, v0, v9

    aget v3, v3, v8

    aput v3, v1, v2

    const/16 v2, 0xc

    aget-object v0, v0, v9

    aget v0, v0, v9

    aput v0, v1, v2

    const/16 v0, 0xd

    aput v6, v1, v0

    const/16 v0, 0xe

    aput v6, v1, v0

    const/16 v0, 0xf

    aput v6, v1, v0

    const/16 v0, 0x10

    aput v6, v1, v0

    const/16 v0, 0x11

    aput v6, v1, v0

    const/16 v0, 0x12

    const/high16 v2, 0x3f80

    aput v2, v1, v0

    const/16 v0, 0x13

    aput v6, v1, v0

    .line 481
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v0

    .line 459
    nop

    :array_0
    .array-data 0x4
        0x87t 0x16t 0x99t 0x3et
        0xa2t 0x45t 0x16t 0x3ft
        0xd5t 0x78t 0xe9t 0x3dt
    .end array-data

    :array_1
    .array-data 0x4
        0x75t 0x93t 0x18t 0x3ft
        0xbat 0x49t 0x8ct 0xbet
        0x1dt 0x5at 0xa4t 0xbet
    .end array-data

    :array_2
    .array-data 0x4
        0x62t 0x10t 0x58t 0x3et
        0x54t 0xe3t 0x5t 0xbft
        0x64t 0x3bt 0x9ft 0x3et
    .end array-data

    .line 469
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x6at 0xbct 0x74t 0x3ft
        0xdbt 0xf9t 0x1et 0x3ft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x96t 0x43t 0x8bt 0xbet
        0xcbt 0xa1t 0x25t 0xbft
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x2dt 0xb2t 0x8dt 0xbft
        0x71t 0x3dt 0xdat 0x3ft
    .end array-data
.end method

.method public static a(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 542
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 543
    sparse-switch v0, :sswitch_data_0

    .line 563
    const-string v0, "DENSITY_UNKNOWN"

    :goto_0
    return-object v0

    .line 545
    :sswitch_0
    const-string v0, "DENSITY_LOW"

    goto :goto_0

    .line 547
    :sswitch_1
    const-string v0, "DENSITY_MEDIUM"

    goto :goto_0

    .line 549
    :sswitch_2
    const-string v0, "DENSITY_HIGH"

    goto :goto_0

    .line 551
    :sswitch_3
    const-string v0, "DENSITY_XHIGH"

    goto :goto_0

    .line 553
    :sswitch_4
    const-string v0, "DENSITY_XXHIGH"

    goto :goto_0

    .line 555
    :sswitch_5
    const-string v0, "DENSITY_XXXHIGH"

    goto :goto_0

    .line 557
    :sswitch_6
    const-string v0, "DENSITY_TV"

    goto :goto_0

    .line 559
    :sswitch_7
    const-string v0, "DENSITY_400"

    goto :goto_0

    .line 561
    :sswitch_8
    const-string v0, "DENSITY_560"

    goto :goto_0

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_6
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x190 -> :sswitch_7
        0x1e0 -> :sswitch_4
        0x230 -> :sswitch_8
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 437
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 438
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 285
    if-nez p0, :cond_0

    .line 286
    const-string v0, "ViewUtils"

    const-string v1, "Attempting to hide keyboard with null context"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 355
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 356
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 358
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v0

    .line 360
    invoke-static {p0, v2, v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 535
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 577
    new-instance v0, Lcom/snapchat/android/util/ViewUtils$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/snapchat/android/util/ViewUtils$3;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/Window;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 122
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 123
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 124
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 406
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 407
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 88
    const/high16 v0, 0x41c8

    invoke-static {v0, p2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static a(Landroid/view/Window;Z)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/16 v1, 0x800

    const/16 v0, 0x400

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 154
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static a(ZLandroid/view/Window;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 102
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 104
    :goto_1
    if-eq p0, v0, :cond_0

    .line 105
    if-eqz p0, :cond_3

    .line 106
    const/16 v0, 0x300

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :cond_3
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static a(Landroid/view/Window;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([[F[[F)[[F
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 485
    array-length v5, p0

    .line 486
    aget-object v0, p0, v2

    array-length v6, v0

    .line 487
    array-length v0, p1

    .line 488
    aget-object v0, p1, v2

    array-length v7, v0

    .line 489
    filled-new-array {v5, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v4, v2

    .line 490
    :goto_0
    if-ge v4, v5, :cond_2

    move v3, v2

    .line 491
    :goto_1
    if-ge v3, v7, :cond_1

    move v1, v2

    .line 492
    :goto_2
    if-ge v1, v6, :cond_0

    .line 493
    aget-object v8, v0, v4

    aget v9, v8, v3

    aget-object v10, p0, v4

    aget v10, v10, v1

    aget-object v11, p1, v1

    aget v11, v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v8, v3

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 491
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 490
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 497
    :cond_2
    return-object v0
.end method

.method public static b(FLandroid/content/Context;)F
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 74
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    div-float v0, p0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 138
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;Z)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 505
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)I
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 333
    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 335
    const/4 v0, 0x1

    .line 336
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 340
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 341
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 388
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/snapchat/android/util/ViewUtils$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/ViewUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 400
    return-object v0
.end method

.method public static b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    packed-switch p0, :pswitch_data_0

    .line 186
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_0
    const/4 v0, 0x1

    .line 187
    :cond_0
    :pswitch_1
    return v0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 143
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 382
    const/16 v0, 0x12c

    invoke-static {p0, v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 599
    if-eqz p0, :cond_0

    .line 600
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    :cond_0
    return-void
.end method

.method public static c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 257
    and-int/lit8 v0, p0, 0x30

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 410
    if-nez p0, :cond_1

    .line 420
    :cond_0
    return-void

    .line 414
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 415
    check-cast p0, Landroid/view/ViewGroup;

    .line 416
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 417
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/view/View;)V

    .line 416
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 261
    and-int/lit8 v0, p0, 0x50

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 275
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v1

    .line 278
    goto :goto_0

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 294
    if-nez p0, :cond_0

    .line 295
    const-string v0, "ViewUtils"

    const-string v1, "Attempting to show keyboard with null context"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 302
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 423
    if-nez p0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/util/ViewUtils;->d(Landroid/view/View;)V

    .line 429
    instance-of v0, p0, Lcom/snapchat/android/ui/Recyclable;

    if-eqz v0, :cond_0

    .line 430
    check-cast p0, Lcom/snapchat/android/ui/Recyclable;

    invoke-interface {p0}, Lcom/snapchat/android/ui/Recyclable;->c()V

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 265
    and-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 319
    if-nez p0, :cond_0

    .line 320
    const-string v0, "ViewUtils"

    const-string v1, "Attempting to show keyboard with null context"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 324
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 451
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 455
    :cond_0
    return-void
.end method

.method public static f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 269
    and-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/view/View;)I
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 613
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 615
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/ViewUtils;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 617
    add-int/lit8 v0, v2, 0x1

    .line 618
    const v3, 0xffffff

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    .line 620
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 622
    sget-object v4, Lcom/snapchat/android/util/ViewUtils;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 623
    return v2
.end method
