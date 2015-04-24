.class public Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/Button;

.field public c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0a02a6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0a02ad

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 73
    const v0, 0x7f0a02ae

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->c:Landroid/view/View;

    .line 75
    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    .line 76
    const v0, 0x7f0a02ac

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0a02aa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->x:Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->h()V

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 44
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BasePasswordValidationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    .line 52
    :cond_0
    return-void
.end method
