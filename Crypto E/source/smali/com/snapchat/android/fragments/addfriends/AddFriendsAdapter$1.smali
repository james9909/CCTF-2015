.class Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ZLcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/snapchat/android/model/FriendAction;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/model/FriendAction;

    .line 174
    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$3;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
