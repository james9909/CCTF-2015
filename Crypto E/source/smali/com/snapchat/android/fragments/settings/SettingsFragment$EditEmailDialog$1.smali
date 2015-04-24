.class Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog$1;
.super Lcom/snapchat/android/api/SettingsTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;


# direct methods
.method varargs constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/api/SettingsTask;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 518
    invoke-super {p0, p1}, Lcom/snapchat/android/api/SettingsTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 519
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->e(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog$1;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
