.class public Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;
.super Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;
    }
.end annotation


# instance fields
.field private j:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;-><init>()V

    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 90
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;

    .line 38
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->j:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;->o()V

    .line 34
    :cond_0
    return-void
.end method

.method protected d_()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d_()V

    .line 96
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->f:Landroid/widget/Button;

    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 55
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 68
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->b()V

    .line 71
    :cond_0
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V

    .line 104
    return-void
.end method

.method protected s_()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s_()V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment;->u()V

    .line 81
    :cond_0
    return-void
.end method
