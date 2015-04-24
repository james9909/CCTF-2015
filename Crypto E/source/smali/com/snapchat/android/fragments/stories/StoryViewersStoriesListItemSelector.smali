.class public Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;
.super Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;
.source "SourceFile"


# instance fields
.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/stories/StoriesListItemSelector;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemSelector$StoriesListItemSelectorInterface;)V

    .line 18
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->d:Landroid/view/LayoutInflater;

    .line 19
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->e:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->y()V

    .line 25
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->d:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->e:Landroid/content/Context;

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoryViewersStoriesListItemSelector;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->E:Landroid/widget/ScrollView;

    return-object v0
.end method
