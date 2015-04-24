.class Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;F)F

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v2, v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->e:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->b(Landroid/view/View;)I

    move-result v0

    .line 456
    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F

    move-result v2

    neg-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 457
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    .line 458
    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F

    move-result v2

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v4}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->c(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->d(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;->a(Landroid/view/View;FFFF)Z

    .line 460
    return-void

    :cond_1
    move v3, v0

    goto :goto_0
.end method
