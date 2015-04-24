.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
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
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    .line 285
    return-void
.end method
