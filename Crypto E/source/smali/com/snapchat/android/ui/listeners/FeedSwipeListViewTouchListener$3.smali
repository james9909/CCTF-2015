.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V
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
    .line 265
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->a:Z

    .line 285
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->a:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a()V

    .line 275
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    .line 277
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->e:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;->b:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    return-void
.end method
