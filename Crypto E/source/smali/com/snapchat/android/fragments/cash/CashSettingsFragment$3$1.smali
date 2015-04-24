.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d()Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 183
    return-void
.end method
