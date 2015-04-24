.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 149
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->a:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    if-ne p1, v0, :cond_0

    .line 150
    invoke-static {v1}, Lcom/snapchat/android/util/debug/DevUtils;->a(Z)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->a:Landroid/content/SharedPreferences;

    const-string v1, "https://cash-dot-feelinsonice-hrd.appspot.com"

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/DevUtils;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->b:Landroid/widget/TextView;

    const-string v1, "https://cash-dot-feelinsonice-hrd.appspot.com"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->S()V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lcom/snapchat/android/cash/CashAuthManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/cash/CashAuthManager;->a(Lcom/snapchat/android/cash/CashAuthToken;)V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->b()V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->a:Landroid/widget/CompoundButton;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;->a:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
