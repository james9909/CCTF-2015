.class Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x()V
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
    .line 397
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 402
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;ZZ)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->i()V

    .line 406
    return-void
.end method
