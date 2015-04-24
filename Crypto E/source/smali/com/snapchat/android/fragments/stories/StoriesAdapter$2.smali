.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;
.super Lcom/snapchat/android/api/DeleteStorySnapTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/api/DeleteStorySnapTask;-><init>(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/snapchat/android/api/DeleteStorySnapTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 322
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    .line 323
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api/DeleteStorySnapTask;->a(Ljava/lang/String;I)V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 335
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/snapchat/android/api/DeleteStorySnapTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->c()V

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    .line 330
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Lcom/snapchat/android/api/DeleteStorySnapTask;->onPreExecute()V

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$2;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Z)V

    .line 318
    return-void
.end method
