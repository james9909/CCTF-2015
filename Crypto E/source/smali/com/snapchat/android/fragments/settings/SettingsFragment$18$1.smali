.class Lcom/snapchat/android/fragments/settings/SettingsFragment$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$18;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$18;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$18;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$18$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$18;

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

    .line 449
    invoke-static {}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->values()[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->i()I

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

    .line 453
    invoke-static {p2}, Lcom/snapchat/android/model/UserPrefs;->d(I)V

    .line 454
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$18$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$18;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$18;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$18$1;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$18;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$18;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-static {}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->values()[Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 466
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 467
    return-void

    .line 463
    :cond_0
    new-instance v1, Lcom/snapchat/android/api/SettingsTask;

    const-string v2, "updateStoryPrivacy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/api/SettingsTask;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/SettingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
