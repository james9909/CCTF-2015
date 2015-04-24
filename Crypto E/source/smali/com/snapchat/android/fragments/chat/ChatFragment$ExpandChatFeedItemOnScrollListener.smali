.class Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandChatFeedItemOnScrollListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Lcom/snapchat/android/model/chat/ChatFeedItem;


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x64

    .line 2842
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->b:Z

    if-eqz v0, :cond_0

    .line 2844
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2845
    if-eqz v0, :cond_0

    .line 2846
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->c:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2847
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2848
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_0

    .line 2849
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2850
    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->c:Landroid/view/View;

    .line 2851
    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->d:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2855
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->T(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->d:Lcom/snapchat/android/model/chat/ChatFeedItem;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->c:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/view/View;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    .line 2857
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2858
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;->a()V

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2864
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_0

    .line 2865
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2866
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;->b()V

    .line 2868
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->c:Landroid/view/View;

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2787
    if-ne p2, v2, :cond_3

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->b:Z

    .line 2788
    if-nez p2, :cond_6

    .line 2789
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setIsActive(Z)V

    .line 2790
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2791
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v4

    .line 2792
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2793
    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 2795
    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/ChatMediaExpander;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/chat/ChatMediaExpander;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/listview/ListViewUtils;->a(Landroid/widget/ListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2797
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2798
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/ChatMediaExpander;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/chat/ChatMediaExpander;->a()V

    .line 2802
    :cond_1
    const/high16 v0, 0x41c8

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 2804
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/ChatMediaExpander;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/chat/ChatMediaExpander;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2805
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2806
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 2807
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2809
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v1

    neg-int v0, v0

    invoke-virtual {v1, v3, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->scrollBy(II)V

    .line 2810
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z

    .line 2838
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v3

    .line 2787
    goto/16 :goto_0

    .line 2793
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 2812
    :cond_5
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2814
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v4, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v4, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v1, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2815
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z

    .line 2817
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2818
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v4

    const-string v5, "translationY"

    new-array v6, v9, [F

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v3

    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    int-to-float v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 2820
    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationY"

    new-array v7, v9, [F

    iget-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v8}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    aput v8, v7, v3

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v8, v0

    add-float/2addr v3, v8

    aput v3, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2822
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;I)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2832
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2833
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 2836
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setIsActive(Z)V

    goto/16 :goto_2
.end method
