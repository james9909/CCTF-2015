.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 638
    packed-switch p2, :pswitch_data_0

    .line 649
    :goto_0
    return-void

    .line 640
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    goto :goto_0

    .line 643
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    goto :goto_0

    .line 646
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$16;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
