.class Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "verifyEmail"

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->f(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    return-void
.end method