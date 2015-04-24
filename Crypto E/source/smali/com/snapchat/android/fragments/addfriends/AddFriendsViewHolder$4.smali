.class Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->d(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->d(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->b:Landroid/os/Message;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->c(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v4}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->e(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 267
    return-void
.end method
