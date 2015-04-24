.class Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/SnapListItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenStoryRunnable"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

.field b:Landroid/content/Context;

.field final synthetic c:Lcom/snapchat/android/util/SnapListItemHandler;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/fragments/stories/StoriesListItem;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p3, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->b:Landroid/content/Context;

    .line 470
    iput-object p2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 473
    invoke-direct {p0}, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a()Lcom/snapchat/android/model/StorySnap;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_0

    .line 475
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v2, v2, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-static {p1, v1, v0, v2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)V

    .line 478
    :cond_0
    return-void
.end method

.method private a()Lcom/snapchat/android/model/StorySnap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    :goto_0
    return-object v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 527
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->G()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    .line 530
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a(Lcom/snapchat/android/model/StoryGroup;)Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    goto :goto_0

    .line 532
    :cond_2
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-interface {v2}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 534
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 535
    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->D()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 538
    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/StoryGroup;)Lcom/snapchat/android/model/StorySnap;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 514
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/StoryLibrary;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v1

    .line 516
    if-nez v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-object v0

    .line 517
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->D()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/StorySnap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-nez v0, :cond_0

    const v0, 0x7f0c0147

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->m()Ljava/lang/String;

    move-result-object v1

    .line 504
    if-nez v1, :cond_1

    const v1, 0x7f0c0146

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 506
    :cond_1
    new-instance v2, Lcom/snapchat/android/ui/dialog/OneButtonDialog;

    iget-object v3, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/snapchat/android/ui/dialog/OneButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    iget-object v0, v0, Lcom/snapchat/android/util/SnapListItemHandler;->c:Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;->b(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 4
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v0, v0, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 548
    :goto_0
    if-nez v0, :cond_1

    .line 553
    :goto_1
    return-void

    .line 546
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    goto :goto_0

    .line 551
    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/snapchat/android/model/StoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 482
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->b()V

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->b(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v0

    const-string v1, "story"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->c(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 485
    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    iget-object v2, v2, Lcom/snapchat/android/util/SnapListItemHandler;->c:Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/StorySnap;)V

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 493
    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-static {v1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/util/SnapListItemHandler;Z)Z

    .line 495
    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    iget-object v3, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v3, v3, Lcom/snapchat/android/model/RecentStoryCollection;

    iget-object v4, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenStoryRunnable;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    instance-of v4, v4, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/StorySnap;Lcom/snapchat/android/model/StoryCollection;ZZ)V

    goto :goto_0
.end method
