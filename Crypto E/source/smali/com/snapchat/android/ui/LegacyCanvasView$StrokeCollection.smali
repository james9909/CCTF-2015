.class Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/LegacyCanvasView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrokeCollection"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/snapchat/android/ui/LegacyCanvasView;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/Canvas;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/LegacyCanvasView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 397
    iput-object p1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->c:Landroid/graphics/Paint;

    .line 392
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->d:Landroid/graphics/Matrix;

    .line 395
    iput-boolean v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->g:Z

    .line 398
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a()V

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 400
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 401
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;)Landroid/graphics/Canvas;
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 413
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 414
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 415
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v2}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v2

    int-to-float v3, v2

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v2}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 416
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e()V

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v2}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f:Landroid/graphics/Bitmap;

    .line 443
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e:Landroid/graphics/Canvas;

    .line 444
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v0}, Lcom/snapchat/android/ui/LegacyCanvasView;->a(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-static {v1}, Lcom/snapchat/android/ui/LegacyCanvasView;->b(Lcom/snapchat/android/ui/LegacyCanvasView;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/SnapMediaUtils;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->g:Z

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    .line 421
    iget-boolean v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->g:Z

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 426
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;)V
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a(Landroid/graphics/Canvas;)V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;

    iget-object v0, v0, Lcom/snapchat/android/ui/LegacyCanvasView$LegacyStroke;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    iput-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->e:Landroid/graphics/Canvas;

    .line 462
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;)V

    .line 463
    iput-object v2, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->f:Landroid/graphics/Bitmap;

    .line 464
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->g()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->g:Z

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/ui/LegacyCanvasView$StrokeCollection;->b:Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/LegacyCanvasView;->invalidate()V

    .line 473
    return-void
.end method
