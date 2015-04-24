.class Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const-string v1, ""

    iput-object v1, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;->c()V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->d()V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z

    .line 204
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    return-void
.end method
