.class public Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# instance fields
.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 33
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->b()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 111
    new-instance v0, Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;-><init>(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->a(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;->g()V

    .line 89
    return-void
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
    .line 94
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Ljava/util/List;Z)V

    .line 95
    return-void
.end method

.method protected b(Ljava/util/List;Z)V
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
    .line 100
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->b(Ljava/util/List;Z)V

    .line 101
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_RETRIEVE_SENDING_CASH_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
