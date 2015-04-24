.class Lcom/snapchat/android/fragments/settings/SettingsFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 404
    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;->show()V

    .line 405
    return-void
.end method
