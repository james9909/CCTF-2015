.class Lcom/snapchat/android/fragments/settings/SettingsFragment$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment$6;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$6;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(Z)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://www.snapchat.com/beta"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$6$2;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$6;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method
