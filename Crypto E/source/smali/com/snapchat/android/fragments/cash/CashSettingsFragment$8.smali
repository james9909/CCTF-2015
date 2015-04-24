.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic b:Landroid/widget/CompoundButton;

.field final synthetic c:Z

.field final synthetic d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    iput-object p3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->b:Landroid/widget/CompoundButton;

    iput-boolean p4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 375
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->c:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 377
    return-void

    .line 375
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->a:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->b:Landroid/widget/CompoundButton;

    iget-boolean v4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->c:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->g()V

    .line 372
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 380
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->d:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;->c:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 382
    return-void

    .line 380
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
