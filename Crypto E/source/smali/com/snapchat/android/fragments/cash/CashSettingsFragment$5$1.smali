.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 237
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 215
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h()Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v2, v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v6}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;)V

    .line 220
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 232
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v3, v3, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->g()V

    goto :goto_0

    .line 227
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c002b

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0164

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v2, v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v3, v3, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v7, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Z

    if-nez v7, :cond_3

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 239
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c002b

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0164

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v1, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v2, v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->b:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v3, v3, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v6, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Z

    if-nez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 248
    return-void
.end method
