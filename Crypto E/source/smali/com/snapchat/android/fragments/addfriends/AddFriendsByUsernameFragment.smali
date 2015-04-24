.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->n()V

    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->u()V

    .line 47
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0c0019

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->E()V

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 29
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_USERNAME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->l:Landroid/widget/EditText;

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v6}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->D()V

    .line 40
    return-object v0
.end method

.method public onFriendProfileUpdateCompleteEvent(Lcom/snapchat/android/util/eventbus/FriendProfileUpdateComplete;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V

    .line 69
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a()Lcom/snapchat/android/model/Friend;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b()Lcom/snapchat/android/model/FriendAction;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v0, v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;->B()V

    goto :goto_0
.end method
