.class public Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;
.super Lcom/snapchat/android/ui/swipefilters/FilterPage;
.source "SourceFile"


# instance fields
.field protected b:Landroid/graphics/Bitmap;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object p1, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->c:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->d:I

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(ZLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v0, v1

    .line 67
    :cond_3
    if-eqz v0, :cond_4

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4, v5}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 80
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/util/SnapMediaUtils;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    .line 84
    :cond_6
    :try_start_0
    iget v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->d:I

    iget-object v4, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, p2, v4, v2}, Lcom/snapchat/android/util/PhotoEffectTask;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->a:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->a:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 87
    invoke-static {p2, v3}, Lcom/snapchat/android/util/SnapMediaUtils;->f(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    :try_start_1
    const-string v2, "VisualFilterPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set the bitmap shader"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->d:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/swipefilters/VisualFilterPage;->b:Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method
