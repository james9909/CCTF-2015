.class public Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->b()Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const v0, 0x7f04005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->x:Landroid/view/View;

    .line 55
    const v0, 0x7f0a020c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    .line 56
    const v1, 0x7f0a020d

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->d(I)Landroid/view/View;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 59
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 61
    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$1;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 49
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a(I)V

    .line 99
    :cond_0
    return-void
.end method
