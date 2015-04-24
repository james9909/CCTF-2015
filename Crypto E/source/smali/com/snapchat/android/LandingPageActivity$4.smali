.class Lcom/snapchat/android/LandingPageActivity$4;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 913
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 916
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    .line 919
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    .line 921
    iput v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->d:I

    .line 923
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    return-void
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 989
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 991
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 992
    :goto_0
    if-eqz v0, :cond_1

    .line 1022
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 991
    goto :goto_0

    .line 995
    :cond_1
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    if-eq p1, v0, :cond_2

    .line 998
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1000
    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->p(Z)V

    .line 1001
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->c(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    iget-object v4, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;)I

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v4

    .line 1007
    if-eqz v4, :cond_4

    .line 1009
    invoke-virtual {v4, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 1012
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 1013
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1014
    instance-of v3, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v3, :cond_3

    invoke-virtual {v4, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1015
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 1016
    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    goto :goto_2

    .line 1020
    :cond_4
    const-string v0, "LandingPageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markFragmentVisibilityChanged to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    iput p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    goto :goto_1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 980
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 983
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity$4;->a(I)V

    .line 985
    :cond_0
    iput p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->d:I

    .line 986
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    if-nez p3, :cond_3

    .line 952
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)V

    .line 954
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v3

    .line 955
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 956
    :goto_0
    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {v3, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 960
    :cond_0
    iput-boolean v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    .line 971
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 955
    goto :goto_0

    .line 961
    :cond_3
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    if-nez v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getWidth()I

    move-result v0

    .line 963
    div-int/lit8 v0, v0, 0x2

    if-ge p3, v0, :cond_4

    move v0, v1

    .line 964
    :goto_2
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    .line 965
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v1, v1, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v1, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 966
    const-string v3, "LandingPageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollStart from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    if-eqz v1, :cond_1

    .line 968
    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e(Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 963
    goto :goto_2
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter

    .prologue
    .line 931
    iput p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    .line 932
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(II)V

    .line 933
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(II)V

    .line 934
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadManager;->b()V

    .line 936
    packed-switch p1, :pswitch_data_0

    .line 943
    :goto_0
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->d:I

    if-nez v0, :cond_0

    .line 944
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity$4;->a(I)V

    .line 946
    :cond_0
    return-void

    .line 938
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->j()V

    goto :goto_0

    .line 936
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
