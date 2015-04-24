.class Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    const-string v0, "SQInitiatePaymentBlocker"

    const-string v1, "CASH-LOG: FAILED SQInitiatePaymentBlocker statusCode[%d]"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-static {v0, p1}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-static {v1, v0, v5}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->d(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "SQUARE_INITIATE_PAYMENT_FAILED"

    invoke-static {v0, p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    const v2, 0x7f0c0152

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->e(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    const-string v3, "SQInitiatePaymentBlocker"

    const-string v4, "CASH-LOG: SUCCESS SQInitiatePaymentBlocker %s status[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4, v3}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 62
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v4, v5, :cond_2

    .line 63
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 64
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->g()Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    move-result-object v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    invoke-virtual {v4}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/blockers/Blocker;

    .line 86
    instance-of v6, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    if-eqz v6, :cond_3

    .line 87
    const-string v3, "SQInitiatePaymentBlocker"

    const-string v4, "CASH-LOG: SQInitiatePaymentBlocker SUCCESS came back with confirm blocker. Attempting autoresolution."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {v0}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V

    goto :goto_0

    :cond_4
    move-object v3, v0

    .line 103
    :cond_5
    if-eqz v3, :cond_7

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/blockers/Blocker;

    .line 105
    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->d()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 111
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-static {v2, v3, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->c(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V

    .line 114
    if-eqz v4, :cond_0

    .line 115
    invoke-virtual {v4}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->e()Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->f()Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->EXPIRED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    if-ne v0, v2, :cond_0

    .line 117
    const-string v0, "CARD_EXPIRED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    const v3, 0x7f0c014e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method
