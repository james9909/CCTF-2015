.class public Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->b(Lcom/snapchat/android/model/User;)V

    .line 84
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->u()V

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->n()V

    .line 96
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/User;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->I()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f0c0129

    return v0
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V

    .line 137
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 33
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 34
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 35
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 39
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider;-><init>()V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;)V

    .line 42
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->f(Z)V

    .line 45
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b(Z)V

    .line 48
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->c(Z)V

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->d(Z)V

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->p:Landroid/widget/TextView;

    const v2, 0x7f0c0134

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    .line 55
    return-object v0
.end method

.method public onFriendProfileUpdateCompleteEvent(Lcom/snapchat/android/util/eventbus/FriendProfileUpdateComplete;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V

    .line 115
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a()Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b()Lcom/snapchat/android/model/FriendAction;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/model/Friend;)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->B()V

    goto :goto_0
.end method

.method protected q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FOR_MY_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t_()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
