.class Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;
.super Lcom/snapchat/android/ui/EditTextDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditEmailDialog"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 515
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog$1;

    const-string v1, "updateEmail"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;Ljava/lang/String;[Ljava/lang/String;)V

    .line 522
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SettingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 523
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->e(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :cond_0
    return-void
.end method
