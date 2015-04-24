.class Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;)I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->a:Landroid/view/View;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->b:Z

    invoke-interface {v1, v2, v0, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->a(Landroid/view/View;IZ)V

    .line 473
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    return-void
.end method
