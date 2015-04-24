.class public Lcom/snapchat/android/camera/cameraview/CameraView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/PhotoBitmapProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;,
        Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;
    }
.end annotation


# instance fields
.field public a:Landroid/view/SurfaceView;

.field public b:Landroid/view/TextureView;

.field private c:Landroid/widget/FrameLayout;

.field private final d:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

.field private final e:Lcom/snapchat/android/analytics/CameraEventAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->addView(Landroid/view/View;)V

    .line 58
    invoke-static {}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a()Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->d:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    .line 59
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->e:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/cameraview/CameraView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected static a(DD)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 289
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/util/Resolution;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 125
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 126
    :cond_1
    invoke-virtual {p0, v4}, Lcom/snapchat/android/camera/cameraview/CameraView;->setDrawingCacheEnabled(Z)V

    .line 130
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v0

    .line 131
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v1

    .line 133
    new-instance v2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v2}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    .line 134
    invoke-static {v2, v0, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->b(Landroid/util/DisplayMetrics;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 135
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    invoke-virtual {v3, v2}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 140
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    invoke-virtual {v2, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    iget-object v2, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    invoke-virtual {v2, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private setTextureViewParameters(Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    new-instance v1, Lcom/snapchat/android/camera/cameraview/CameraView$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView$1;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 104
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)Landroid/graphics/SurfaceTexture;
    .locals 2
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setTextureViewParameters(Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/util/Resolution;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 252
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 253
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 254
    return-object v0
.end method

.method protected a(FF)Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 231
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    div-float v1, p2, p1

    .line 234
    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;

    invoke-direct {v0, p0, v4, v1}, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;FF)V

    .line 237
    :goto_0
    return-object v0

    .line 236
    :cond_0
    div-float v1, p1, p2

    .line 237
    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;

    invoke-direct {v0, p0, v1, v4}, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;FF)V

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 163
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->a:Z

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 166
    new-instance v0, Lcom/snapchat/android/camera/cameraview/CameraView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/cameraview/CameraView$2;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/TakePhotoCallback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->e:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b(Z)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->d:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    const-string v1, "captureTextureViewPreviewFrame"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView;->b(Lcom/snapchat/android/util/Resolution;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->d:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    const-string v2, "captureTextureViewPreviewFrame"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->b(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;

    invoke-direct {v1}, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;-><init>()V

    .line 114
    invoke-static {v0, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p2, v0}, Lcom/snapchat/android/camera/TakePhotoCallback;->a(Landroid/graphics/Bitmap;)V

    .line 119
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 214
    iget v0, p2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 216
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(FF)Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    iget v2, v0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;->a:F

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 220
    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    iget v0, v0, Lcom/snapchat/android/camera/cameraview/CameraView$ScaleFactorPair;->b:F

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 221
    return-void
.end method

.method public b(Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/camera/cameraview/CameraView$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/camera/cameraview/CameraView$3;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;Lcom/snapchat/android/camera/cameraview/CameraView$SurfaceReadyCallback;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 208
    return-void
.end method

.method public b(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/camera/cameraview/CameraView;->c(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)Lcom/snapchat/android/util/Resolution;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(Lcom/snapchat/android/util/Resolution;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected c(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;)Lcom/snapchat/android/util/Resolution;
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v2

    .line 262
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    .line 264
    iget v1, p2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    .line 265
    iget v0, p2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    .line 267
    iget v4, p2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->heightPixels:I

    int-to-double v4, v4

    iget v6, p2, Lcom/snapchat/android/camera/util/PortraitDisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 269
    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->c()D

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    int-to-double v4, v3

    int-to-double v6, v0

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 275
    :goto_0
    new-instance v2, Lcom/snapchat/android/util/Resolution;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    return-object v2

    .line 272
    :cond_0
    int-to-double v4, v2

    int-to-double v6, v1

    int-to-double v2, v3

    div-double v2, v6, v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_0
.end method
