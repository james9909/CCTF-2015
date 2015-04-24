.class public Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/snapchat/android/model/StorySnapLogbook;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->n:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a:Landroid/view/View;

    .line 35
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->o:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->b:Landroid/view/View;

    .line 36
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->q:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->d:Landroid/view/View;

    .line 37
    iget-object v0, p2, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->p:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->c:Landroid/view/View;

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->f:Z

    .line 40
    return-void
.end method

.method a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 21
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v0

    if-nez v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->i()Lcom/snapchat/android/model/StorySnapExtra;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/snapchat/android/model/StorySnapExtra;->a()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v1

    .line 25
    :goto_1
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v2

    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {v5}, Lcom/snapchat/android/model/StorySnapExtra;->b()I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v0, :cond_5

    .line 29
    :goto_4
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->c:Landroid/view/View;

    if-eqz v1, :cond_6

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->d:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 24
    goto :goto_1

    :cond_3
    move v3, v4

    .line 25
    goto :goto_2

    :cond_4
    move v3, v4

    .line 26
    goto :goto_3

    :cond_5
    move v1, v2

    .line 28
    goto :goto_4

    :cond_6
    move v0, v4

    .line 29
    goto :goto_5

    :cond_7
    move v2, v4

    .line 30
    goto :goto_6
.end method

.method a()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->f:Z

    return v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->f:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/MyStoryIconsToHideWhenExpanded;->a:Landroid/view/View;

    .line 49
    return-void
.end method
