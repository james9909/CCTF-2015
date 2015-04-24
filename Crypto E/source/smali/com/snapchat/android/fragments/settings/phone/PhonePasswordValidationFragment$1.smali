.class Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/service/SnapchatServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/operation/Operation;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Lcom/snapchat/android/operation/Operation;)I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/snapchat/android/operation/identity/SettingsOperation;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment$1;->a:Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;

    check-cast p1, Lcom/snapchat/android/operation/identity/SettingsOperation;

    invoke-virtual {p1}, Lcom/snapchat/android/operation/identity/SettingsOperation;->g()Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;->a(Lcom/snapchat/android/fragments/settings/phone/PhonePasswordValidationFragment;Lcom/snapchat/android/operation/identity/SettingsOperation$SettingsOperationsResult;)V

    .line 40
    :cond_0
    return-void
.end method
