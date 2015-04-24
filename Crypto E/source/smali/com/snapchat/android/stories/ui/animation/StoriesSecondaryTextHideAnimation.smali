.class public Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;
.super Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;-><init>(Landroid/view/View;Landroid/view/View;J)V

    .line 20
    return-void
.end method


# virtual methods
.method public b()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 25
    iget-object v1, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->c:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected c()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->d:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->d:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
