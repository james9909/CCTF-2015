.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;
.super Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;->a()V

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 386
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;->b()V

    .line 390
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 391
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;->onPreExecute()V

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$4;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 381
    return-void
.end method
