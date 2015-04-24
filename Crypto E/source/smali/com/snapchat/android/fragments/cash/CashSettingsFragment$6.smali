.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v1, "SQUARE"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v1, "SQUARE"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const v3, 0x7f0c01c2

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api2/cash/ICashProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    goto :goto_0
.end method
