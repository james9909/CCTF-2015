.class Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24$1;
.super Lcom/snapchat/android/ui/EditTextDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/EditTextDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lcom/snapchat/android/util/debug/DeveloperSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/debug/DeveloperSettings;->a(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method
