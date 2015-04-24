.class Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;

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
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;

    iget-object v1, v1, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V

    .line 69
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;I)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    const-string v0, "SQPhoneNumberBlocker"

    const-string v1, "CASH-LOG: FAILED resolve SQPhoneNumberBlocker statusCode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;->this$1:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->c(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V

    .line 75
    return-void
.end method
