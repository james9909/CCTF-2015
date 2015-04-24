.class public Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# instance fields
.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 93
    iget v2, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->j:I

    new-instance v3, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    const-string v0, "NewUserPhoneVerificationFragment"

    const-string v1, "Attempted to go to CaptchaFragment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-static {v3}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->j:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    const-string v0, "NewUserPhoneVerificationFragment"

    const-string v1, "Attempted to go to NewUserAddFriendsFragment"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->x:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 117
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->startActivity(Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 119
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/LoginAndSignupActivity;->a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V

    .line 124
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/LoginAndSignupActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->u()V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->v()V

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->w()V

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/LoginAndSignupActivity;

    .line 129
    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/LoginAndSignupActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget v2, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->j:I

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->show()V

    .line 134
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_1
    new-instance v0, Lcom/snapchat/android/ui/dialog/ConfirmExitSignupDialog;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/dialog/ConfirmExitSignupDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/ConfirmExitSignupDialog;->show()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->j:I

    .line 58
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 60
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Lcom/snapchat/android/LoginAndSignupActivity;

    .line 62
    invoke-virtual {v1}, Lcom/snapchat/android/LoginAndSignupActivity;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    new-instance v1, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 47
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;->b()V

    .line 50
    :cond_0
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V

    .line 142
    return-void
.end method
