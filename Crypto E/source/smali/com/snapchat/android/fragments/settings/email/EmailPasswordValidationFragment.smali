.class public Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;
.super Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/snapchat/android/service/SnapchatServiceListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    .line 37
    new-instance v0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Lcom/snapchat/android/service/SnapchatServiceListener;

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;Lcom/snapchat/android/operation/identity/ChangeEmailOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Lcom/snapchat/android/operation/identity/ChangeEmailOperation;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;Lcom/snapchat/android/operation/identity/ReauthOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Lcom/snapchat/android/operation/identity/ReauthOperation;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/operation/identity/ChangeEmailOperation;)V
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 110
    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const v0, 0x7f0c0164

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->i()Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->H()Landroid/content/Intent;

    move-result-object v1

    .line 121
    const-string v2, "change_email_message_key"

    invoke-virtual {v0}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v0, "change_email_key"

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/operation/identity/ReauthOperation;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 97
    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/ReauthOperation;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/service/SnapchatServiceManager;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/ReauthOperation;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c01c6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c00e1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onPause()V

    .line 90
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 91
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onResume()V

    .line 83
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f8

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 84
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;->h:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 85
    return-void
.end method
