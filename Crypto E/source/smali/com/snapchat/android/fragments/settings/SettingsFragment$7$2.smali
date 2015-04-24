.class Lcom/snapchat/android/fragments/settings/SettingsFragment$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$7;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$7$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Z)V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$7$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$7;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/content/Context;)V

    .line 267
    return-void
.end method
