.class Lcom/snapchat/android/fragments/stories/StoriesFragment$15;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->onSharedStoryFriendButtonClickedEvent(Lcom/snapchat/android/util/eventbus/SharedStoryFriendButtonClickedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 1106
    new-instance v0, Lcom/snapchat/android/api2/HideSharedStoryTask;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/HideSharedStoryTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/HideSharedStoryTask;->g()V

    .line 1107
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->b:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;->a:Lcom/snapchat/android/model/Friend;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/Friend;)V

    .line 1108
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method
