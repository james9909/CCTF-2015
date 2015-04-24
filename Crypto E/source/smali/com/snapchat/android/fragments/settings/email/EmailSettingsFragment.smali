.class public Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/snapchat/android/model/UserPrefs;

.field private m:Lcom/snapchat/android/service/SnapchatServiceListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;-><init>(Lcom/snapchat/android/model/UserPrefs;)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/UserPrefs;)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k:Ljava/util/Set;

    .line 72
    new-instance v0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Lcom/snapchat/android/service/SnapchatServiceListener;

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;Lcom/snapchat/android/operation/identity/ChangeEmailOperation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Lcom/snapchat/android/operation/identity/ChangeEmailOperation;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/operation/identity/ChangeEmailOperation;)V
    .locals 4
    .parameter

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/settings/email/EmailPasswordValidationFragment;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 343
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;->i()Lcom/snapchat/data/gson/identity/SettingOperationResponse;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    .line 332
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b()V

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    .line 339
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b()V

    .line 340
    invoke-virtual {v0}, Lcom/snapchat/data/gson/identity/SettingOperationResponse;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V
    .locals 4
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-boolean v0, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->a:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    .line 304
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b()V

    .line 305
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p1, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    const v0, 0x7f0c00e7

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i:Ljava/lang/String;

    .line 97
    const v0, 0x7f0c00ea

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->j:Ljava/lang/String;

    .line 100
    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/snapchat/android/util/EmojiUtils;->g:[B

    invoke-static {v4}, Lcom/snapchat/android/util/EmojiUtils;->a([B)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0a01c3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 116
    const v0, 0x7f0a01c4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    .line 118
    const v0, 0x7f0a01c2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 122
    const v0, 0x7f0a01be

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    .line 123
    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0a01bd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v1}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i()V

    .line 183
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b()V

    .line 184
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_1
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v1}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aJ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected b()V
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->l:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    const v1, 0x7f0c0221

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 210
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    const v0, 0x7f040048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->x:Landroid/view/View;

    .line 90
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h()V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 216
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 217
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 219
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 190
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f4

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 191
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    const/16 v1, 0x3f7

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->m:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 192
    return-void
.end method

.method public s_()V
    .locals 3

    .prologue
    .line 196
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 197
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b()V

    .line 198
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->H()Landroid/content/Intent;

    move-result-object v0

    .line 199
    const-string v1, "change_email_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a:Landroid/widget/EditText;

    const-string v2, "change_email_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const-string v1, "change_email_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 202
    const-string v1, "change_email_message_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Ljava/lang/String;)V

    .line 203
    const-string v1, "change_email_message_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method
