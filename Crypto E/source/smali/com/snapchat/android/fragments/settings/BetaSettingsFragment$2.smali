.class Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$2;->a:Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://plus.google.com/u/0/communities/101602008277453798645"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment$2;->a:Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/settings/BetaSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
