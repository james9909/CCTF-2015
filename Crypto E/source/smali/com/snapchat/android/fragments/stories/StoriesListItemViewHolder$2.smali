.class Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->a(Lcom/snapchat/android/model/StorySnapLogbook;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->k()Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 319
    :cond_0
    return-void
.end method
