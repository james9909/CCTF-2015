.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/RecentStoryCollection;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/RecentStoryCollection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 774
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    check-cast v0, Lcom/snapchat/android/model/SponsoredStoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryCollection;->s()V

    .line 775
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$18;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 776
    return-void
.end method
