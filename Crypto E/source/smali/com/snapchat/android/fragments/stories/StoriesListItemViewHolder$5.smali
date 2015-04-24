.class Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

.field final synthetic d:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->d:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 710
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->d:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 711
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v0

    .line 712
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->d:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0110

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 713
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->d:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v2}, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->c(Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/util/TelephonyUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 719
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->d()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder$5;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->m(Ljava/lang/String;)V

    .line 726
    :cond_0
    return-void
.end method
