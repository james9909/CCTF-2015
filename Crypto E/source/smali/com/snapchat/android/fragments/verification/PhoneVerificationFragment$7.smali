.class Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n()V
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
    .line 260
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 265
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->o()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 269
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->h()V

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->r()V

    goto :goto_0
.end method
