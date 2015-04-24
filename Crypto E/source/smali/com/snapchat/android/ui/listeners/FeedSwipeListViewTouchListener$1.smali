.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;ILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iput p2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->a:I

    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 167
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)F

    move-result v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 168
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 170
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->b(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->a:I

    if-lez v1, :cond_0

    .line 171
    new-instance v1, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1$1;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;->d:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->c(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    return-void
.end method
