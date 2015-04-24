.class Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;
.super Lcom/snapchat/android/api/FriendActionTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/FriendAction;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

.field final synthetic d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a:Lcom/snapchat/android/model/FriendAction;

    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 414
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 428
    :goto_0
    return-void

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 452
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api/FriendActionTask;->a(Ljava/lang/String;I)V

    .line 453
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 455
    :pswitch_0
    const v0, 0x7f0c00ef

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->d(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/snapchat/android/api/FriendActionTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 393
    invoke-super {p0}, Lcom/snapchat/android/api/FriendActionTask;->onPreExecute()V

    .line 394
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
