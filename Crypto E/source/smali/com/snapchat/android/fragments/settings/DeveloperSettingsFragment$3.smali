.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 174
    :goto_0
    return-void

    .line 142
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?"

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;Landroid/widget/CompoundButton;)V

    invoke-static {v0, v3, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/util/debug/DevUtils;->a(Z)V

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, v3}, Lcom/snapchat/android/util/debug/DevUtils;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/network/EndpointManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->S()V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/cash/CashAuthManager;->a(Lcom/snapchat/android/cash/CashAuthToken;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->b()V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "The Snapchat endpoint has also been reset to default."

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
