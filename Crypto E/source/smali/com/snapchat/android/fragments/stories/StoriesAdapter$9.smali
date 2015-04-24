.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->b:Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget v1, v1, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->H:I

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;I)I

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->b:Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->b:Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->d(Z)Z

    .line 496
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->b:Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 499
    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(Z)Z

    goto :goto_0
.end method
