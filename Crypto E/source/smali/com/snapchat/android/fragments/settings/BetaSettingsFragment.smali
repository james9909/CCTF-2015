.class public Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->x:Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->b()V

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->x:Landroid/view/View;

    return-object v0
.end method
