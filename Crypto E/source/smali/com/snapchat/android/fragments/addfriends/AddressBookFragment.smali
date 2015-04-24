.class public Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 70
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 75
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    sget-object v5, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)V

    .line 77
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 87
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    sget-object v5, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)V

    .line 89
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 101
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-nez v5, :cond_4

    .line 102
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 113
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->I()Z

    move-result v4

    if-nez v4, :cond_6

    .line 114
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 117
    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    return-void
.end method

.method protected d()I
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const v0, 0x7f0c0028

    :goto_0
    return v0

    .line 52
    :pswitch_0
    const v0, 0x7f0c00fa

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V

    .line 147
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/snapchat/android/util/FriendSectionizer$AddressBookSearchSectionizer;

    invoke-direct {v1}, Lcom/snapchat/android/util/FriendSectionizer$AddressBookSearchSectionizer;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 39
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 42
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e(Z)V

    .line 44
    return-object v0
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V

    .line 133
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V

    .line 126
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V

    .line 140
    return-void
.end method

.method protected q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FOR_ADDRESS_BOOK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
