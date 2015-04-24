.class Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditionViewerOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;-><init>(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I

    .line 606
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->c(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(I)V

    goto :goto_0

    .line 613
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;I)I

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(I)V

    .line 588
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->a(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;I)V

    .line 595
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v1, v2, :cond_0

    .line 597
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$EditionViewerOnPageChangeListener;->a:Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;->b(Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a(Ljava/lang/String;Z)V

    .line 601
    :cond_0
    return-void
.end method
