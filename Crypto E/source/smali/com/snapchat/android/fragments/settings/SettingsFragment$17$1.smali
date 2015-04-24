.class Lcom/snapchat/android/fragments/settings/SettingsFragment$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$17;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$17;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$17$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-static {}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->values()[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->h()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->values()[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {p2}, Lcom/snapchat/android/model/UserPrefs;->c(I)V

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$17$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$17;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$17$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$17;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$17;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    new-instance v0, Lcom/snapchat/android/api/SettingsTask;

    const-string v1, "updatePrivacy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/SettingsTask;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SettingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 433
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 434
    return-void
.end method
