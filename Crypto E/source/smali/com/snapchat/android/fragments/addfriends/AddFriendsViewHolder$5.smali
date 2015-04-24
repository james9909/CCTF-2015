.class Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Landroid/view/View;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

.field final synthetic b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->d()Ljava/lang/String;

    move-result-object v0

    .line 283
    if-nez v0, :cond_0

    .line 284
    const v0, 0x7f0c0018

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;->a:Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5$1;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->d(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5$1;->show()V

    .line 291
    return-void
.end method
