.class Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "verifyEmail"

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Lcom/snapchat/android/model/UserPrefs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$3;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method
