.class Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    const-string v0, "SQCardFormBlocker"

    const-string v2, "CASH-LOG: SUCCESS resolve SQCardFormBlocker"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$ResponsePayload;

    .line 119
    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$ResponsePayload;->cardToken:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/cash/CashCardManager;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->b()V

    .line 136
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;->b()V

    .line 137
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Ljava/util/List;Z)V

    .line 141
    :goto_1
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v2, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

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
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 145
    const-string v1, "SQCardFormBlocker"

    const-string v2, "CASH-LOG: FAILED resolve SQCardFormBlocker statusCode[%d]"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const/16 v1, 0x194

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v1, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/model/CashTransaction;

    .line 151
    new-instance v0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$pan:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$expiry:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$cvv:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v4, v4, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$zip:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->g()V

    .line 168
    :goto_0
    return-void

    .line 152
    :cond_0
    const/16 v1, 0x191

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v0, v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Z)Z

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$pan:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$expiry:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v3, v3, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$cvv:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v4, v4, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$zip:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v5, v5, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Z)V

    goto :goto_0

    .line 159
    :cond_1
    const/16 v1, 0x1ad

    if-ne p2, v1, :cond_3

    .line 160
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 166
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v2, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_0

    .line 161
    :cond_3
    if-nez p2, :cond_4

    .line 162
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    goto :goto_1

    .line 163
    :cond_4
    if-eqz p1, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->a()Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-result-object v0

    goto :goto_1
.end method
