.class Lcom/snapchat/android/discover/ui/DSnapView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;->a()V

    .line 673
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 688
    const-string v0, "DSnapView"

    const-string v1, "Auto-advancing DSnap %s since there was an error playing it (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v4}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/DSnapView;->d:Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v3}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v4}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/DSnapView$OnAutoAdvanceListener;->a()V

    .line 699
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->e(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->f(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->b()V

    .line 682
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$4;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->g(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/ui/VerticalSwipeLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->setScrollable(Z)V

    .line 684
    :cond_0
    return-void
.end method
