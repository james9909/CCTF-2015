.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;
.implements Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;
.implements Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    }
.end annotation


# instance fields
.field private B:Ljava/lang/String;

.field private C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

.field private D:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final E:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/snapchat/android/service/SnapchatServiceListener;

.field private M:Landroid/database/DataSetObserver;

.field protected a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/util/FriendSectionizer;

.field protected c:Lcom/snapchat/android/util/FriendSectionizer;

.field public d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Z

.field protected l:Landroid/widget/EditText;

.field protected m:Landroid/view/View;

.field protected n:Landroid/view/View;

.field protected o:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field protected p:Landroid/widget/TextView;

.field protected q:Landroid/widget/TextView;

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/widget/TextView;

.field public u:Landroid/widget/Button;

.field public v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;-><init>(Lcom/snapchat/android/service/SnapchatServiceManager;Ljavax/inject/Provider;)V

    .line 152
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/service/SnapchatServiceManager;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/service/SnapchatServiceManager;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 84
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 87
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$AlphabeticalSectionizer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    .line 88
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$AddFriendsSearchSectionizer;

    invoke-direct {v0}, Lcom/snapchat/android/util/FriendSectionizer$AddFriendsSearchSectionizer;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Ljava/util/HashSet;

    .line 128
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 131
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Lcom/snapchat/android/service/SnapchatServiceListener;

    .line 142
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Landroid/database/DataSetObserver;

    .line 155
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 156
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Ljavax/inject/Provider;

    .line 157
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 228
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Landroid/view/View;

    .line 237
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 246
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 262
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Landroid/view/View;

    .line 263
    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n()V

    .line 310
    :cond_0
    return-void
.end method

.method private M()V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0142

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$9;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00dc

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 553
    return-void
.end method

.method private N()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 563
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/widget/TextView;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    return-void
.end method

.method private O()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 863
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 218
    const v0, 0x7f0a0156

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 221
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->N()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Lcom/snapchat/android/service/SnapchatServiceManager;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 582
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 584
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 585
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 589
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/widget/TextView;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 604
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Landroid/widget/TextView;

    const v4, 0x7f0c0011

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 605
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 611
    return-void

    :cond_2
    move v0, v1

    .line 582
    goto :goto_0

    .line 593
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 597
    :cond_4
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 607
    :cond_5
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected B()V
    .locals 2

    .prologue
    .line 685
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 686
    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lcom/snapchat/android/model/User;)V

    .line 694
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A()V

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Lcom/snapchat/android/model/User;)V

    goto :goto_1
.end method

.method protected C()V
    .locals 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 737
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 740
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 741
    return-void
.end method

.method protected D()V
    .locals 2

    .prologue
    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Z

    .line 844
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 848
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c:Lcom/snapchat/android/util/FriendSectionizer;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/util/FriendSectionizer;)V

    .line 849
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b()V

    .line 850
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 851
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 853
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->O()V

    .line 854
    return-void
.end method

.method protected E()V
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 914
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v2, v3, :cond_0

    .line 915
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    goto :goto_0

    .line 918
    :cond_1
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 617
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 622
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 623
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

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

    .line 624
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-nez v5, :cond_0

    .line 625
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 629
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 630
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 633
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->r()Ljava/util/List;

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

    .line 635
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-nez v5, :cond_2

    .line 636
    sget-object v5, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)V

    .line 637
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 640
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 641
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 642
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 646
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->o()Ljava/util/List;

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

    .line 647
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-nez v5, :cond_4

    .line 648
    sget-object v5, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)V

    .line 649
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 652
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 653
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 658
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

    .line 660
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->I()Z

    move-result v4

    if-nez v4, :cond_6

    .line 661
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 664
    :cond_7
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 665
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 666
    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b(Z)V

    .line 909
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 910
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Ljava/lang/CharSequence;)V

    .line 903
    return-void
.end method

.method protected a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 766
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->g(Z)V

    .line 769
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 890
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n()V

    .line 383
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 401
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u()V

    .line 406
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-eq v0, v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r()V

    goto :goto_0

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s()V

    goto :goto_1

    .line 395
    :pswitch_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t()V

    goto :goto_1

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(Lcom/snapchat/android/model/User;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 673
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 674
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 676
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 677
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 681
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 682
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 883
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 884
    return-void

    .line 883
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 887
    return-void
.end method

.method protected d()I
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 419
    const v0, 0x7f0c0019

    :goto_0
    return v0

    .line 415
    :pswitch_0
    const v0, 0x7f0c00fa

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected d_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 775
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f()V

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 781
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 783
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->c()V

    .line 785
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 786
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 788
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    .line 789
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f()V

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 866
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Z

    .line 867
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 872
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/util/FriendSectionizer;)V

    .line 875
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b()V

    .line 876
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E()V

    .line 877
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 879
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 880
    return-void
.end method

.method public getAnalyticsContext()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public getAnalyticsParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 804
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 224
    const v0, 0x7f020118

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    return-void
.end method

.method protected k()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 314
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected n()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 347
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b()V

    .line 367
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->g:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()V

    .line 704
    :cond_0
    return-void
.end method

.method public onContactsOnSnapchatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 732
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b()V

    .line 733
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 165
    const/high16 v0, 0x7f04

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/view/View;

    .line 167
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->j:Landroid/view/View;

    .line 169
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    const-string v2, "hide_action_bar"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i()V

    .line 174
    :cond_0
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/view/View;

    const v2, 0x7f0a015d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    invoke-static {v2}, Lcom/snapchat/android/util/ViewUtils;->g(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 177
    const v0, 0x7f0a0157

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    .line 178
    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:Landroid/view/View;

    .line 179
    const v0, 0x7f0a015b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->H:Landroid/view/View;

    .line 180
    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0a015c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->J:Landroid/view/View;

    .line 182
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->s:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->t:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->r()V

    .line 193
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->F()V

    .line 194
    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Landroid/content/Context;)V

    .line 197
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b:Lcom/snapchat/android/util/FriendSectionizer;

    new-instance v6, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;

    invoke-direct {v6}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;-><init>()V

    iget-object v7, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->E:Ljavax/inject/Provider;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ZLcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    .line 201
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 205
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K()V

    .line 206
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b()V

    .line 207
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 208
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 210
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 319
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 320
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->K:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 322
    return-void
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 722
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 711
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b()Lcom/snapchat/android/model/FriendAction;

    move-result-object v0

    .line 712
    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v0, v1, :cond_1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 717
    :goto_0
    return-void

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 297
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 299
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 300
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->L()V

    .line 302
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 303
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 292
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->M:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 894
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    new-instance v0, Lcom/snapchat/android/api/SharedStorySearchTask;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/snapchat/android/api/SharedStorySearchTask;-><init>(Ljava/lang/String;Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SharedStorySearchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 897
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Ljava/lang/CharSequence;)V

    .line 898
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 727
    return-void
.end method

.method protected p()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 429
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    :goto_1
    return-object v0

    .line 431
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_0

    .line 435
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 436
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    goto :goto_1

    .line 443
    :pswitch_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    const-string v0, "CONTACT_RETURNING_USER_PHONE_VERIFICATION_FRAGMENT"

    return-object v0
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 462
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 463
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 465
    :cond_0
    return-void
.end method

.method public s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 469
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 472
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    .line 476
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->isInLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 477
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 478
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;-><init>()V

    .line 479
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 481
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 483
    :cond_1
    invoke-virtual {v0, v4}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->a(Z)V

    .line 484
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 485
    invoke-virtual {v0, p0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;)V

    .line 486
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->g(Z)V

    .line 487
    return-void
.end method

.method protected s_()V
    .locals 2

    .prologue
    .line 745
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 746
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 748
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C()V

    .line 751
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Z)V

    .line 753
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    .line 756
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->d()V

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 760
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 761
    return-void

    .line 751
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 491
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$7;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->C:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->d()V

    .line 511
    return-void
.end method

.method public t_()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public u()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 515
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 516
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->m:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->o:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    return-void

    :cond_0
    move v0, v1

    .line 516
    goto :goto_0
.end method

.method protected v()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->k:Z

    return v0
.end method

.method public w()V
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->G()V

    .line 558
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    .line 559
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->b()V

    .line 560
    return-void
.end method

.method protected x()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected y()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->p()Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;->c:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$Page;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
