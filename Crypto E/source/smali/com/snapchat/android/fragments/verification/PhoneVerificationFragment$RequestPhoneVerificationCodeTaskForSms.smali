.class Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPhoneVerificationCodeTaskForSms"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->c:Ljava/lang/String;

    .line 509
    iget-object v0, p1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    .line 510
    if-eqz p3, :cond_1

    .line 512
    const-string v0, "requestPhoneVerification"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->b:Ljava/lang/String;

    .line 513
    if-eqz p2, :cond_0

    .line 514
    const-string v0, "text"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->c:Ljava/lang/String;

    .line 523
    :goto_0
    return-void

    .line 516
    :cond_0
    const-string v0, "call"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->c:Ljava/lang/String;

    goto :goto_0

    .line 518
    :cond_1
    if-eqz p2, :cond_2

    .line 519
    const-string v0, "updatePhoneNumber"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->b:Ljava/lang/String;

    goto :goto_0

    .line 521
    :cond_2
    const-string v0, "updatePhoneNumberWithCall"

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const-string v0, "/bq/phone_verify"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 568
    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 569
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 597
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 599
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const-string v1, ""

    iput-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 602
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->e()V

    .line 608
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 542
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 543
    const-string v1, "action"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v2, v2, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v1, "countryCode"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v1, "skipConfirmation"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 550
    const-string v1, "method"

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    .line 573
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 575
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->message_format:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->message_format:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->v(Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 581
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    long-to-int v3, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v6}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;IJLandroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->d()V

    .line 585
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 587
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->b:Ljava/lang/String;

    const-string v1, "updatePhoneNumberWithCall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    const v0, 0x7f0c009c

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 592
    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->l()V

    .line 593
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    const-string v0, "RequestPhoneVerificationCodeTask"

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 533
    return-void
.end method
