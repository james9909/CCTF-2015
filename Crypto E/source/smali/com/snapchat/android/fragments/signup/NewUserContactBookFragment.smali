.class public Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.source "SourceFile"


# instance fields
.field private B:Lcom/snapchat/android/model/User;

.field private C:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>()V

    return-void
.end method

.method private K()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->B:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->t()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(I)V

    .line 212
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->L()V

    .line 213
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->x:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->startActivity(Landroid/content/Intent;)V

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 222
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->K()V

    return-void
.end method


# virtual methods
.method protected F()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 149
    .line 151
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 152
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v2, v0

    .line 158
    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected a(IZI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    if-eqz p2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a()I

    move-result v0

    invoke-static {p1, p3, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(III)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->H()V

    goto :goto_0
.end method

.method protected a(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->B:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->t()I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    const v1, 0x7f0c01f1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v1, 0x7f0c022a

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    const v1, 0x7f0c0130

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->K()V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->s()V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->t()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->u()V

    goto :goto_0
.end method

.method protected c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->F()Landroid/util/Pair;

    move-result-object v1

    .line 137
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 138
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(ZI)V

    .line 141
    invoke-virtual {p0, v2, p1, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(IZI)V

    .line 142
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(ZI)V

    .line 177
    return v1
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0201c9

    return v0
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->NEW_USER_CONTACT_BOOK_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 47
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Landroid/support/v4/app/FragmentActivity;

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->B:Lcom/snapchat/android/model/User;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 54
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->NEW_USER_CONTACT_BOOK_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->h(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->i()V

    .line 59
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 60
    new-instance v1, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 74
    const v0, 0x7f0a0154

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->x:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->C:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 78
    const-string v0, "REGISTER_ADD_FRIENDS"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->x:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V

    .line 89
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V

    .line 101
    return-void
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u()V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->u:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->u:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->u:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method protected w()V
    .locals 0

    .prologue
    .line 226
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->G()V

    .line 228
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;->L()V

    .line 229
    return-void
.end method
