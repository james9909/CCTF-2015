.class public Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;
.super Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;
.source "SourceFile"


# instance fields
.field private d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;)V

    .line 20
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a()V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->b()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->d(Z)Z

    .line 52
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 27
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;->a(Landroid/view/View;)Z

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(Z)Z

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/FriendStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->u()Z

    move-result v0

    return v0
.end method
