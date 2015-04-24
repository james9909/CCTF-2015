.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 198
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

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

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 251
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b()Lcom/snapchat/android/api2/cash/blockers/Blocker;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;Z)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 250
    invoke-virtual {v0, v3}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_0
.end method
