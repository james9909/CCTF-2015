.class Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 68
    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-direct {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;-><init>()V

    invoke-static {v1}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->a(Ljava/util/List;Z)V

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    invoke-static {v0, p1}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->b(Ljava/util/List;Z)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "SQUARE_RETRIEVE_PAYMENT_FAILED"

    invoke-static {v0, p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    const v2, 0x7f0c0152

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 46
    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SQUARE_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->RECIPIENT_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-eq v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;)V

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->g()Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method
