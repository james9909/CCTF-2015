.class Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmLogoutDialog"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    .line 476
    const v0, 0x7f0c01b4

    invoke-virtual {p1, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Z)V

    .line 488
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Z)V

    .line 482
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    .line 483
    return-void
.end method
