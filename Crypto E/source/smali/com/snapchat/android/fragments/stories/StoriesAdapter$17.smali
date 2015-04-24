.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;
.super Lcom/snapchat/android/util/EditNameDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
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
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/Friend;

    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/EditNameDialog;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 671
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    move-object v1, p0

    move-object v5, p1

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 680
    return-void
.end method
