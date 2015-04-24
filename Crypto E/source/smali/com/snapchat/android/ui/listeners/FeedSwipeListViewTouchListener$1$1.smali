.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;

    iget-object v0, v0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->b(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;

    iget-object v0, v0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;

    iget-object v1, v1, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;

    iget v2, v2, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/view/View;I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    return-void
.end method
