.class public Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 56
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    return-object v0
.end method

.method public a(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/util/bitmap/internal/ReusableBitmapOptionsProvider;->b(Landroid/util/DisplayMetrics;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 42
    iput-object p4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 43
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 44
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 45
    return-object v0
.end method

.method public b(Landroid/util/DisplayMetrics;II)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xd33

    .line 72
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 73
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 74
    const/4 v0, 0x1

    .line 79
    if-le p2, v1, :cond_1

    if-le p3, v2, :cond_1

    .line 80
    div-int/lit8 v3, p3, 0x2

    .line 81
    div-int/lit8 v4, p2, 0x2

    .line 85
    :goto_0
    div-int v5, v3, v0

    if-le v5, v2, :cond_0

    div-int v5, v4, v0

    if-le v5, v1, :cond_0

    .line 87
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 91
    :cond_0
    div-int/2addr v3, v0

    if-ne v3, v2, :cond_1

    div-int v2, v4, v0

    if-ne v2, v1, :cond_1

    .line 93
    mul-int/lit8 v0, v0, 0x2

    .line 96
    :cond_1
    return v0
.end method
