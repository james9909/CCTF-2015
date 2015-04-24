.class Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;ILjava/util/List;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->c(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->HIDE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    .line 389
    return-void
.end method
