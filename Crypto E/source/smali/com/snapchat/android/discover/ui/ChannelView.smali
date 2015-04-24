.class public Lcom/snapchat/android/discover/ui/ChannelView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/snapchat/android/discover/ui/BrandIconProvider;

.field private f:Lcom/snapchat/android/discover/model/ChannelPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    .line 40
    new-instance v0, Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/ui/BrandIconProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    new-instance v1, Lcom/snapchat/android/discover/ui/ChannelView$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/ChannelView$1;-><init>(Lcom/snapchat/android/discover/ui/ChannelView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Lcom/snapchat/android/discover/ui/BrandIconProvider$BrandIconLoadedCallback;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Z

    move-result v0

    .line 108
    if-nez v0, :cond_1

    .line 109
    const/high16 v0, 0x3f00

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setAlpha(F)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setAlpha(F)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setProgressBarVisibility(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Landroid/widget/ImageView;

    .line 169
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->a:Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->b(Ljava/lang/String;)Z

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->i()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->x()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->i()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(I)V

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->e:Lcom/snapchat/android/discover/ui/BrandIconProvider;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->a()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/BrandIconProvider;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;Z)V

    .line 103
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->d()V

    .line 104
    return-void
.end method

.method public getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage;->g()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0a00ec

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->b:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0a00ed

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ProgressBar;

    .line 94
    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->c:Landroid/widget/ImageView;

    .line 95
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 83
    sub-int v4, p4, p2

    div-int/lit8 v4, v4, 0x2

    .line 84
    sub-int v5, p5, p3

    div-int/lit8 v5, v5, 0x2

    .line 85
    div-int/lit8 v6, v2, 0x2

    sub-int v6, v4, v6

    div-int/lit8 v7, v3, 0x2

    sub-int v7, v5, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 59
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->setMeasuredDimension(II)V

    .line 61
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 62
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/high16 v2, 0x4218

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    .line 67
    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 68
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 61
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 73
    :cond_1
    return-void
.end method

.method public setChannelPage(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/ChannelView;->f:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 54
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 2
    .parameter

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
