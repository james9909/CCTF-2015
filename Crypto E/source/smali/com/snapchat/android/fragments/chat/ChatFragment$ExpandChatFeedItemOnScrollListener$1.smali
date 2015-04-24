.class Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;
.super Lcom/snapchat/android/util/animation/AnimatorEndListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2822
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iput p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->a:I

    invoke-direct {p0}, Lcom/snapchat/android/util/animation/AnimatorEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2825
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->S(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iget-object v2, v2, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 2826
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2827
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2829
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener$1;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->scrollBy(II)V

    .line 2830
    return-void
.end method
