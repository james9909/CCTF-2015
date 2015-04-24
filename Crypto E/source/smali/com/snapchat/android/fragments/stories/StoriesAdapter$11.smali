.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->d()Ljava/lang/String;

    move-result-object v3

    .line 521
    if-nez v3, :cond_0

    .line 522
    const v0, 0x7f0c0018

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 525
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->c(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;

    move-result-object v2

    const v1, 0x7f0c0142

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0c0216

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$11;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$11$1;->show()V

    .line 535
    return-void
.end method
