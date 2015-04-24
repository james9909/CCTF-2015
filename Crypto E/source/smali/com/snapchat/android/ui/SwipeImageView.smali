.class public Lcom/snapchat/android/ui/SwipeImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;

.field protected b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/snapchat/android/ui/SwipeViewState;

.field protected d:Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/widget/FrameLayout;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Z

.field private i:Landroid/util/DisplayMetrics;

.field private j:Lcom/snapchat/android/util/FrameTracking;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/snapchat/android/util/ApiHelper;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/ui/swipeimageview/LayerTypeFactory;->a(Z)Lcom/snapchat/android/ui/layertype/LayerType;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;

    invoke-direct {v6}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;-><init>()V

    new-instance v7, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;

    invoke-direct {v7}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;-><init>()V

    new-instance v8, Lcom/snapchat/android/util/fps/FpsLogger;

    invoke-direct {v8}, Lcom/snapchat/android/util/fps/FpsLogger;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/ui/SwipeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/util/DisplayMetrics;Landroid/widget/FrameLayout;Lcom/snapchat/android/ui/layertype/LayerType;Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;Lcom/snapchat/android/util/FrameTracking;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/util/DisplayMetrics;Landroid/widget/FrameLayout;Lcom/snapchat/android/ui/layertype/LayerType;Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;Lcom/snapchat/android/util/FrameTracking;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    iput-boolean v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->h:Z

    .line 82
    iput-object p3, p0, Lcom/snapchat/android/ui/SwipeImageView;->i:Landroid/util/DisplayMetrics;

    .line 83
    iput-object p4, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Landroid/widget/FrameLayout;

    .line 84
    iput-object p6, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;

    .line 85
    iput-object p7, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;

    .line 86
    iput-object p8, p0, Lcom/snapchat/android/ui/SwipeImageView;->j:Lcom/snapchat/android/util/FrameTracking;

    .line 89
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setWillNotDraw(Z)V

    .line 90
    invoke-virtual {p5}, Lcom/snapchat/android/ui/layertype/LayerType;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SwipeImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SwipeImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;
    .locals 4
    .parameter

    .prologue
    .line 185
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 186
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->i:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->f(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 189
    return-object v0
.end method

.method private getCurrentPage()Lcom/snapchat/android/ui/swipefilters/FilterPage;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    invoke-static {}, Lcom/snapchat/android/util/PhotoEffectTask;->a()V

    .line 121
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 2
    .parameter

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 308
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    :goto_0
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    .line 131
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/snapchat/android/ui/SwipeImageView;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Landroid/graphics/Paint;)V

    .line 132
    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 301
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 145
    const-string v0, "SwipeImageView"

    const-string v2, "setBaseImage() has not been called; aborting."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/SwipeImageView;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Paint;

    move-result-object v2

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-interface {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 155
    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a(Landroid/graphics/Paint;)V

    goto :goto_1

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v2

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a(ZLandroid/graphics/Bitmap;)V

    .line 162
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-interface {v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    new-instance v2, Lcom/snapchat/android/ui/SwipeImageView$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/SwipeImageView$1;-><init>(Lcom/snapchat/android/ui/SwipeImageView;Ljava/util/List;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/SwipeImageView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 160
    goto :goto_2
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-interface {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 270
    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/SwipeViewState;->e()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/SwipeViewState;->f()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/SwipeViewState;->d()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 316
    return-void
.end method

.method public getLeftSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SwipeViewState;->c(Z)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v0

    return v0
.end method

.method public getRightSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SwipeViewState;->d(Z)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public getScrollOffset()F
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 107
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 113
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->a:Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getLayerType()I

    move-result v3

    invoke-static {v3}, Lcom/snapchat/android/ui/layertype/LayerTypeTranslator;->a(I)Lcom/snapchat/android/ui/layertype/LayerType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/snapchat/android/ui/swipeimageview/ImageRenderer;->a(Lcom/snapchat/android/ui/SwipeViewState;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/graphics/Canvas;Lcom/snapchat/android/ui/layertype/LayerType;)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeImageView;->d()V

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->d:Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->i:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Lcom/snapchat/android/ui/SwipeViewState;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;)V

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeImageView;->j:Lcom/snapchat/android/util/FrameTracking;

    invoke-interface {v0}, Lcom/snapchat/android/util/FrameTracking;->a()V

    .line 262
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 237
    if-le p1, p2, :cond_0

    move v0, v1

    .line 238
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 239
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    move v3, v1

    .line 243
    :goto_1
    if-eq v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/snapchat/android/ui/SwipeImageView;->h:Z

    .line 247
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/SwipeImageView;->setMeasuredDimension(II)V

    .line 248
    return-void

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    :cond_1
    move v3, v2

    .line 239
    goto :goto_1

    :cond_2
    move v1, v2

    .line 243
    goto :goto_2

    .line 245
    :cond_3
    iput-boolean v2, p0, Lcom/snapchat/android/ui/SwipeImageView;->h:Z

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/snapchat/android/ui/SwipeImageView;->getCurrentPage()Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public setFilterPageProvider(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    .line 102
    return-void
.end method

.method public setSwipeState(Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeImageView;->c:Lcom/snapchat/android/ui/SwipeViewState;

    .line 98
    return-void
.end method
