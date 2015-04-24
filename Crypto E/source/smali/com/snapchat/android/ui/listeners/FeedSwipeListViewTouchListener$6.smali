.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/animation/AnimatorSet;

.field final synthetic c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

.field final synthetic d:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic e:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Landroid/animation/AnimatorSet;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->e:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->b:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iput-object p4, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->d:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->a:Z

    .line 388
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->a:Z

    if-nez v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->e:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->d(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->d:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->b:Landroid/animation/AnimatorSet;

    iput-object v1, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->e:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;->c:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    return-void
.end method
