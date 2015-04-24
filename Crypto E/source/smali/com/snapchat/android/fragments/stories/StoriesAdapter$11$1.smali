.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$11$1;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 532
    new-instance v0, Lcom/snapchat/android/api2/HideSharedStoryTask;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;

    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/HideSharedStoryTask;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/HideSharedStoryTask;->g()V

    .line 533
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method
