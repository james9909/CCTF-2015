.class Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;
.super Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneVerificationRetryCountDownTimer"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;IJLandroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    .line 692
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;-><init>(IJLandroid/os/Handler;)V

    .line 693
    invoke-static {p1, p2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;I)I

    .line 694
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 695
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)I

    .line 701
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    .line 708
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    goto :goto_0
.end method
