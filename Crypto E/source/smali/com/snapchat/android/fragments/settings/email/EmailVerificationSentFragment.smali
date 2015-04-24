.class public Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/snapchat/android/model/UserPrefs;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/snapchat/android/service/SnapchatServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>(Lcom/snapchat/android/model/UserPrefs;)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/UserPrefs;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->f:Ljava/util/Set;

    .line 42
    new-instance v0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Lcom/snapchat/android/service/SnapchatServiceListener;

    .line 74
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lcom/snapchat/android/model/UserPrefs;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 111
    const v0, 0x7f0a02a4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b:Landroid/view/View;

    .line 112
    const v0, 0x7f0a02a5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a:Landroid/view/View;

    .line 115
    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Lcom/snapchat/android/model/UserPrefs;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lcom/snapchat/android/model/UserPrefs;

    return-object v0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 79
    const v0, 0x7f040079

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->x:Landroid/view/View;

    .line 81
    const v0, 0x7f0a02a2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v1}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f0a02a3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    const v1, 0x7f0c00e5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->e:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 93
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b()V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->x:Landroid/view/View;

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 106
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 100
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->g:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 101
    return-void
.end method
