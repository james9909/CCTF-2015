.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 474
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    .line 480
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 483
    :cond_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->g(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    goto :goto_0
.end method
