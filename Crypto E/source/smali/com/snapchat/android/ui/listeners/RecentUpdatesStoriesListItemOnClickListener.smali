.class public Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field private b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

.field private c:Lcom/snapchat/android/model/RecentStoryCollection;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Lcom/snapchat/android/model/RecentStoryCollection;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 22
    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    .line 23
    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;->c:Lcom/snapchat/android/model/RecentStoryCollection;

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(J)Z

    .line 29
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/RecentUpdatesStoriesListItemOnClickListener;->c:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    .line 30
    return-void
.end method
