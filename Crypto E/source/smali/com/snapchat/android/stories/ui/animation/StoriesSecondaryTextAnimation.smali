.class public abstract Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final a:Landroid/animation/AnimatorSet;

.field private b:Z

.field protected final c:Landroid/view/View;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->c:Landroid/view/View;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->d:Landroid/view/View;

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    .line 29
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->b()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->c()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public abstract b()Landroid/animation/ObjectAnimator;
.end method

.method protected abstract c()Landroid/animation/ObjectAnimator;
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->b:Z

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->b:Z

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 68
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    return-void
.end method
