.class Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b(Lcom/snapchat/android/model/server/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 445
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->c(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
