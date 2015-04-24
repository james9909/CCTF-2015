.class public Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

.field b:Landroid/view/View;

.field c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 13
    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->b:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->d:Z

    .line 16
    return-void
.end method

.method a(Landroid/view/View;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->b:Landroid/view/View;

    .line 20
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->c:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->d:Z

    .line 22
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 23
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/ExpandedStoriesListItemViewHolder;->d:Z

    return v0
.end method
