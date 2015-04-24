.class Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 164
    const-string v0, "SQConfirmBlocker"

    const-string v2, "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v5, v5, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d()V

    .line 169
    if-eqz p1, :cond_1

    .line 170
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v0

    .line 174
    :goto_0
    iget-object v2, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    .line 175
    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v3

    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    .line 180
    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v4, v4, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4, v3}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 181
    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne v4, v5, :cond_2

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v4, v4, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V

    .line 184
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;)V

    .line 200
    :goto_1
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0, v1, v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->f(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v1, v0, v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->g(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
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
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 203
    const-string v0, "SQConfirmBlocker"

    const-string v2, "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v5, v5, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0, p2}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v1, v0, v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->h(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->a()Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-result-object v0

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v2, v2, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/model/CashTransaction;->g(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v1, v0, p2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
