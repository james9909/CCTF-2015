.class Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;ILandroid/os/Message;)V
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
    .line 243
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->b(Lcom/snapchat/android/model/Friend;)V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->c(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method
