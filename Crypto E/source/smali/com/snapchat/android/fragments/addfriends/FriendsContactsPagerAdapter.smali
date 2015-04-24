.class public Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;->a:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;->b:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "hide_action_bar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    :cond_0
    return-object v0

    .line 37
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;-><init>()V

    goto :goto_0

    .line 40
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;-><init>()V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 67
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;->a:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;->b:Ljava/lang/String;

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
