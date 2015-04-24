.class public Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x1

    .line 25
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->w()Z

    move-result v0

    .line 27
    if-nez v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ag()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ah()Z

    move-result v1

    if-nez v1, :cond_2

    .line 29
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;->a(Ljava/util/List;Z)V

    .line 57
    :goto_0
    return-void

    .line 33
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    sget-object v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v3, 0x7f0c0199

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v6

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->k()Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/snapchat/android/util/CashUtils;->a(ILcom/snapchat/android/util/CashUtils$CurrencyCode;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v2

    const v3, 0x7f0c019a

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->b(I)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker$1;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/snapchat/SendConfirmationBlocker;Z)V

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$Builder;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;Z)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Ljava/util/List;Z)V

    .line 63
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SEND_CONFIRMATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
