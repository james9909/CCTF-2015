.class public Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;
.super Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.source "SourceFile"


# instance fields
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
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Ljava/util/Set;

    .line 32
    new-instance v0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->g:Lcom/snapchat/android/service/SnapchatServiceListener;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 81
    iget-boolean v0, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->a:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;

    const v3, 0x7f0c0198

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/settings/SecurityGhostFragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->c:Landroid/view/View;

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

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 46
    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c01cf

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0128

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onPause()V

    .line 76
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->g:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->onResume()V

    .line 70
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->g:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 71
    return-void
.end method
