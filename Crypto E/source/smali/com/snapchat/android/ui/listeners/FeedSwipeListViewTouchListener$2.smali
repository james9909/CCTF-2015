.class Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)F

    move-result v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 210
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 212
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    return-void
.end method
