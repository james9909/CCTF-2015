.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;
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

.field final synthetic b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->a:Z

    .line 350
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->a:Z

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->d(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->e:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    return-void
.end method
