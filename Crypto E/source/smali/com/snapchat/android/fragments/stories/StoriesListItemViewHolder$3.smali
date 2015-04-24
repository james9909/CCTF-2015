.class Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;
.super Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextShowAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Landroid/view/View;Landroid/view/View;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iput-wide p4, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->a:J

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextShowAnimation;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextShowAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 560
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    new-instance v1, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->d:Landroid/view/View;

    iget-wide v4, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->a:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextHideAnimation;-><init>(Landroid/view/View;Landroid/view/View;J)V

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;)Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    .line 566
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$3;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/stories/ui/animation/StoriesSecondaryTextAnimation;->a()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
