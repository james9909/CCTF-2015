.class public Lcom/snapchat/android/camera/CameraUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/Camera$Size;)D
    .locals 4
    .parameter

    .prologue
    .line 125
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)D
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    int-to-double v0, v0

    iget v2, p0, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 35
    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-lt p1, v0, :cond_1

    move p1, v0

    .line 41
    :cond_1
    rem-int v0, p0, p1

    return v0
.end method

.method private static a(III)I
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    if-le p0, p2, :cond_0

    .line 54
    :goto_0
    return p2

    .line 53
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 54
    goto :goto_0
.end method

.method public static a([Landroid/hardware/Camera$CameraInfo;)I
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 138
    aget-object v2, p0, v0

    .line 139
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 143
    :goto_1
    return v0

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 143
    goto :goto_1
.end method

.method public static a(I)Landroid/hardware/Camera;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IIFIIIILandroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 71
    int-to-float v0, p0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 72
    int-to-float v1, p1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 73
    div-int/lit8 v2, v0, 0x2

    sub-int v2, p3, v2

    sub-int v3, p5, v0

    invoke-static {v2, v5, v3}, Lcom/snapchat/android/camera/CameraUtils;->a(III)I

    move-result v2

    .line 74
    div-int/lit8 v3, v1, 0x2

    sub-int v3, p4, v3

    sub-int v4, p6, v1

    invoke-static {v3, v5, v4}, Lcom/snapchat/android/camera/CameraUtils;->a(III)I

    move-result v3

    .line 76
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 77
    invoke-virtual {p8, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 78
    invoke-static {v4, p7}, Lcom/snapchat/android/camera/CameraUtils;->a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 79
    return-void
.end method

.method public static a(IILandroid/view/View;Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;)V
    .locals 11
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/16 v0, 0x10a

    const/4 v7, 0x0

    .line 83
    if-nez p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface {p3}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 85
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    const/16 v2, 0x5a

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v1, v7, v2, v3, v4}, Lcom/snapchat/android/camera/CameraUtils;->a(Landroid/graphics/Matrix;ZIII)V

    .line 90
    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 92
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 98
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 99
    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    const/high16 v2, 0x3f80

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v7, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move v1, v0

    move v3, p0

    move v4, p1

    invoke-static/range {v0 .. v8}, Lcom/snapchat/android/camera/CameraUtils;->a(IIFIIIILandroid/graphics/Rect;Landroid/graphics/Matrix;)V

    .line 108
    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 110
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v9, v10}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 111
    :cond_3
    invoke-interface {p3, v9}, Lcom/snapchat/android/camera/hardware/CameraManager$CameraProxy;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 60
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 62
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 65
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 66
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 67
    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 46
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 47
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 48
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 49
    return-void
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/util/Resolution;)[B
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/16 v4, 0x11

    .line 173
    invoke-virtual {p0}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v0

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 174
    invoke-static {v0}, Lcom/snapchat/android/util/MathUtils;->a(I)I

    move-result v0

    .line 176
    const-string v1, "CameraUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocating a Callback Buffer of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v3

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " divided by 8 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-array v0, v0, [B

    return-object v0
.end method

.method public static a()[Landroid/hardware/Camera$CameraInfo;
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 116
    new-array v2, v1, [Landroid/hardware/Camera$CameraInfo;

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v0

    .line 119
    aget-object v3, v2, v0

    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-object v2
.end method

.method public static b([Landroid/hardware/Camera$CameraInfo;)I
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 147
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 148
    aget-object v2, p0, v0

    .line 149
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 153
    :goto_1
    return v0

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 153
    goto :goto_1
.end method

.method public static b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
