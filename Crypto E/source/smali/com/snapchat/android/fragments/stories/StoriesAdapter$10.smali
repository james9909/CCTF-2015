.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;
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
.field final synthetic a:Lcom/snapchat/android/model/StoryGroup;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 505
    new-instance v0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a()V

    .line 506
    return-void
.end method
