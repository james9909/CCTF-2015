.class Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StoryGroup;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->n()Lcom/snapchat/android/model/StoryGroup$ActionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$1;->a:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 258
    :cond_0
    return-void
.end method
