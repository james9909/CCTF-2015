.class public Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifyCodeTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    const-string v0, "/bq/phone_verify"

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 673
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 674
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 677
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 681
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->p()V

    .line 686
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 636
    const-string v1, "action"

    const-string v2, "verifyPhoneNumber"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v1, "code"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v2, v2, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 649
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 652
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    .line 659
    :goto_0
    invoke-static {v0}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics;->a(Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;)V

    .line 661
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Ljava/lang/String;)V

    .line 663
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->allowed_to_use_cash:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->k(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->verification_needed:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V

    .line 665
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s()V

    .line 668
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->t()V

    .line 669
    return-void

    .line 654
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->VERIFIED_NEW_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    goto :goto_0

    .line 657
    :cond_2
    sget-object v0, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;->REGISTERED_NUMBER:Lcom/snapchat/android/analytics/PhoneVerificationAnalytics$VerificationType;

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    const-string v0, "VerifyCodeTask"

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 617
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->c()V

    .line 624
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    .line 626
    :cond_0
    return-void
.end method
