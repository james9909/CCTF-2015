.class public Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# instance fields
.field private j:Landroid/view/View;

.field private k:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

.field private l:Landroid/widget/Button;

.field private m:Lcom/snapchat/android/model/UserPrefs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    .line 38
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->m:Lcom/snapchat/android/model/UserPrefs;

    .line 42
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->i:Z

    .line 43
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->k:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 122
    const v0, 0x7f0a021d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->j:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o()V

    .line 112
    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->l:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->l:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$3;-><init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    const v0, 0x7f040061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 69
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->o()V

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->n()V

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->r()V

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->h()V

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->l()V

    .line 75
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->u()V

    .line 79
    :cond_0
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 88
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    new-instance v1, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment$2;-><init>(Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    return-object v0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onPause()V

    .line 53
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 61
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V

    .line 192
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 147
    return-void
.end method

.method protected s()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 154
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->i:Z

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/PhoneNumberVerifiedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/PhoneNumberVerifiedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const v0, 0x7f0c021b

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 169
    invoke-static {v3}, Lcom/snapchat/android/model/UserPrefs;->u(Z)V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->k:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->k:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->b()Lcom/snapchat/android/api/RequestTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->k:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->b()Lcom/snapchat/android/api/RequestTask;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/RequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const v0, 0x7f0c00a2

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 177
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;->b()V

    goto :goto_0
.end method

.method protected t()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method
