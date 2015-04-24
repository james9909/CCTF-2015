.class Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;

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
    .line 171
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 2
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
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    .line 167
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const v1, 0x7f0c003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    .line 180
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 2
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
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    const v1, 0x7f0c003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    .line 176
    return-void
.end method
