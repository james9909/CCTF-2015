.class public Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;FFFF)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    float-to-int v0, p2

    float-to-int v1, p3

    float-to-int v2, p4

    float-to-int v3, p5

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 54
    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;FII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-interface {p1, p5}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v6

    .line 44
    invoke-interface {p1, p4}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v1

    .line 45
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Landroid/view/View;FFFF)V

    .line 46
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    add-float v4, p3, v0

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, v6

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Landroid/view/View;FFFF)V

    .line 47
    return-void
.end method

.method private a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-interface {p1, p3}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v1

    .line 38
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v0

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Landroid/view/View;FFFF)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/SwipeViewState;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 18
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->g()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(Z)I

    move-result v4

    invoke-virtual {p1, v1}, Lcom/snapchat/android/ui/SwipeViewState;->d(Z)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;FII)V

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->g()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1, v6}, Lcom/snapchat/android/ui/SwipeViewState;->c(Z)I

    move-result v4

    invoke-virtual {p1, v6}, Lcom/snapchat/android/ui/SwipeViewState;->d(Z)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;FII)V

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;I)V

    .line 30
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->d()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/snapchat/android/ui/swipeimageview/OverlayRenderer;->a(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Landroid/util/DisplayMetrics;I)V

    goto :goto_0
.end method
