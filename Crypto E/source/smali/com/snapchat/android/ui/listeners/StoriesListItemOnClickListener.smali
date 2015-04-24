.class public Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;
.super Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

.field private b:Lcom/snapchat/android/fragments/stories/StoriesListItem;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;-><init>(ILcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;)V

    .line 17
    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    .line 18
    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->onClick(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/StoriesListItemOnClickListener;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    .line 26
    return-void
.end method
