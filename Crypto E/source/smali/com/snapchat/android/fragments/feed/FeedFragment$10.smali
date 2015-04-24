.class Lcom/snapchat/android/fragments/feed/FeedFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic b:Lcom/snapchat/android/fragments/feed/FeedFragment;

.field private c:I


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 373
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 354
    if-nez p2, :cond_0

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->c(Z)V

    .line 365
    :goto_0
    iput p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->c:I

    .line 367
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->e(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    .line 368
    return-void

    .line 358
    :cond_0
    iget v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->c:I

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->m(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->c(Z)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$10;->b:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->o(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
