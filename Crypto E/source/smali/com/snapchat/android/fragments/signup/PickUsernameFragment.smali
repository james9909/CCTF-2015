.class public Lcom/snapchat/android/fragments/signup/PickUsernameFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/signup/PickUsernameFragment$RegisterUsernameTask;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Lcom/snapchat/android/model/User;

.field private e:Landroid/widget/Button;

.field private f:I

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i:Z

    .line 185
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 175
    iget v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:I

    new-instance v2, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/verification/NewUserPhoneVerificationFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    const-string v0, "PickUsernameFragment"

    const-string v1, "Attempted to go to PhoneVerificationFragment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public e()Z
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget v2, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:I

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->show()V

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d:Lcom/snapchat/android/model/User;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const v0, 0x7f04006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->x:Landroid/view/View;

    .line 89
    const v0, 0x7f0a024f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->c:Landroid/widget/ProgressBar;

    .line 91
    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    .line 125
    :cond_0
    const v0, 0x7f0a024e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->g:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0a0249

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->e:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->f:I

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 63
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 64
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->d:Lcom/snapchat/android/model/User;

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 74
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->h()V

    .line 77
    :cond_0
    return-void
.end method
