.class public Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 126
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void

    .line 126
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 114
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0c00fc

    .line 38
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 40
    const v0, 0x7f040052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->x:Landroid/view/View;

    .line 41
    const v0, 0x7f0a01ea

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->g:Landroid/support/v4/view/ViewPager;

    .line 42
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->g:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->a:Lcom/snapchat/android/fragments/addfriends/FriendsContactsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 46
    const v0, 0x7f0a01e6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a01e8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a01e7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d:Landroid/view/View;

    .line 49
    const v0, 0x7f0a01e9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->e:Landroid/view/View;

    .line 50
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->g:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->f:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->b()V

    .line 109
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;->x:Landroid/view/View;

    return-object v0
.end method
