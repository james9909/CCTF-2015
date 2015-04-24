.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;
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
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;->c:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;->a:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;->a:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method
