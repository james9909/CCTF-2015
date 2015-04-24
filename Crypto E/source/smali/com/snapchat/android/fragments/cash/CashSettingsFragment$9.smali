.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->a:Z

    iput-object p3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 401
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->a:Z

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->q(Z)V

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d()V

    .line 405
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f0c0164

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c002b

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 412
    sparse-switch p1, :sswitch_data_0

    move-object v6, v0

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v7, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->a:Z

    if-nez v7, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0, v6, p1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    .line 431
    :cond_1
    return-void

    .line 414
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010d

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 416
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_PASSCODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-object v6, v0

    .line 417
    goto :goto_0

    .line 419
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0210

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0165

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-object v6, v0

    .line 422
    goto :goto_0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1ad -> :sswitch_1
    .end sparse-switch
.end method
