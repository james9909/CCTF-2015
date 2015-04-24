.class Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    if-nez p1, :cond_1

    move v1, v2

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v1, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v4, v3

    .line 61
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;->getCount()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 63
    instance-of v5, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v5, :cond_0

    .line 64
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-ne v4, p1, :cond_4

    move v5, v2

    :goto_4
    invoke-virtual {v0, v5}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 61
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_1
    move v1, v3

    .line 57
    goto :goto_0

    :cond_2
    move v0, v4

    .line 58
    goto :goto_1

    :cond_3
    move v4, v3

    .line 59
    goto :goto_2

    :cond_4
    move v5, v3

    .line 64
    goto :goto_4

    .line 68
    :cond_5
    if-eqz v1, :cond_6

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V

    .line 74
    :goto_5
    return-void

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_6
    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6
.end method
