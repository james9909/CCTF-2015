.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;
.super Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;
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
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->a()V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 364
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 367
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->b()V

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 369
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->onPreExecute()V

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 359
    return-void
.end method
