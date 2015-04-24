.class Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 67
    const-string v0, "SQConfirmBlocker"

    const-string v3, "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v3, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    if-eqz p1, :cond_2

    .line 73
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/blockers/Blocker;

    .line 76
    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    move-object v1, v3

    .line 83
    :goto_0
    iget-object v3, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    .line 84
    if-eqz v3, :cond_3

    .line 85
    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v5

    .line 89
    iget-object v6, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v6, v5}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 90
    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v6, v7, :cond_3

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 93
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v5, v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;)V

    .line 111
    :goto_1
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0, v4, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    move-object v1, v4

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v2, v1, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    move-object v1, v3

    goto :goto_0

    :cond_5
    move v0, v2

    move-object v1, v4

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;I)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    const-string v0, "SQConfirmBlocker"

    const-string v2, "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0, p2}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v1, v0, v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->c(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    .line 142
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->g(Ljava/lang/String;)V

    .line 126
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->a()Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-result-object v0

    .line 130
    :goto_1
    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->isNonRecoverableError(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    new-array v1, v6, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    invoke-direct {v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;-><init>()V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->d(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "SQUARE_SECURITY_CODE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    const v3, 0x7f0c0152

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->e(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
