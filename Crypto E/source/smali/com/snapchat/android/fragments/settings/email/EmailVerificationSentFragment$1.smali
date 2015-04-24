.class Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/service/SnapchatServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;
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
    .line 42
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/operation/Operation;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Lcom/snapchat/android/operation/Operation;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/snapchat/android/operation/identity/SettingsOperation;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    check-cast p1, Lcom/snapchat/android/operation/identity/SettingsOperation;

    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/SettingsOperation;->g()Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->b(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->c(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-boolean v1, v0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->a:Z

    if-eqz v1, :cond_1

    .line 55
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->b:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v0

    const v1, 0x7f0c00e2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$1;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;->d(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)Lcom/snapchat/android/model/UserPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v0, v0, Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
