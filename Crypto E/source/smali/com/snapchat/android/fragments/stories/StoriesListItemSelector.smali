.class public abstract Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;
    }
.end annotation


# instance fields
.field a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

.field c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 28
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 29
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    .line 30
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->c()Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->b()Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a(Z)V

    .line 67
    :cond_0
    :goto_0
    iget-boolean v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->d:Z

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;)Landroid/animation/ValueAnimator;

    .line 71
    :cond_1
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 73
    :cond_2
    return-void

    .line 59
    :cond_3
    iget-boolean v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->d:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->x()V

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, v1, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->d(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->c()Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a(Z)V

    .line 80
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->b()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 87
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->b()Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a()V

    .line 95
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget v3, v3, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    invoke-interface {v0, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->a(I)V

    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->d()V

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Z)V

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->b()Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-virtual {v0, p1, v3, v4}, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a(Landroid/view/View;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;->c()Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;

    move-result-object v3

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v3, v0, v4}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    .line 47
    invoke-virtual {v3, v2}, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a(Z)V

    move v0, v1

    .line 50
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->u()Z

    move-result v0

    return v0
.end method
