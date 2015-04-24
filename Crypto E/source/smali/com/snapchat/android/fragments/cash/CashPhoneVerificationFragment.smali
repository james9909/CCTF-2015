.class public Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;
    }
.end annotation


# instance fields
.field private j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->x:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->k:Z

    .line 33
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    .line 34
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->o(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "CashPhoneVerificationFragment"

    const-string v1, "CASH-LOG: Phone is verified successfully. Closing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->k:Z

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;->a()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    .line 75
    return-void
.end method

.method protected d_()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d_()V

    .line 111
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;->b()V

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    .line 83
    const-string v0, "CashPhoneVerificationFragment"

    const-string v1, "CASH-LOG: Phone is not verified. Closing"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e()Z

    move-result v0

    return v0
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const v0, 0x7f04001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->x:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->o()V

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->n()V

    .line 42
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->r()V

    .line 43
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->h()V

    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->l()V

    .line 46
    const v0, 0x7f0a00ca

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->x:Landroid/view/View;

    return-object v0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 94
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V

    .line 134
    return-void
.end method

.method protected s_()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s_()V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 106
    return-void
.end method
