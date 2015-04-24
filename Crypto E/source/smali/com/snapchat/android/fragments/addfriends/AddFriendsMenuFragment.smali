.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 62
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const v0, 0x7f040002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->x:Landroid/view/View;

    .line 27
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->b()V

    .line 28
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->h()V

    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->i()V

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method protected s_()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 71
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;->b()V

    .line 73
    return-void
.end method
