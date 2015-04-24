.class Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 52
    const-string v0, "SQUpdateReceivedCashPaymentBlocker"

    const-string v1, "CASH-LOG: SQUpdateReceivedCashPaymentBlocker FAILED to retrieve cash payment id[%s] statusCode[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;->a(Ljava/util/List;Z)V

    .line 56
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 28
    const-string v0, "SQUpdateReceivedCashPaymentBlocker"

    const-string v1, "CASH-LOG: SQUpdateReceivedCashPaymentBlocker RECEIVED cash payment %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->g()Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 46
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;

    invoke-virtual {v1, v0, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker;->a(Ljava/util/List;Z)V

    .line 47
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUpdateReceivedCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
