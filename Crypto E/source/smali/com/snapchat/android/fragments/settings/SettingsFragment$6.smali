.class Lcom/snapchat/android/fragments/settings/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;->b()V
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
    .line 211
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$6;Landroid/content/Context;)V

    .line 215
    const v1, 0x7f0c01e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 216
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v2, 0x7f0c01b6

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v3, 0x7f0c00af

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$2;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$6;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 226
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$3;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$3;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$6;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 234
    return-void
.end method
