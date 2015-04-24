.class Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 64
    const-string v0, "ValidateTransactionBlocker"

    const-string v1, "CASH-LOG: FAILED resolving ValidateTransactionBlocker recipient[%s] amount[%s] status[%s] statusCode[%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 70
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->INVALID_AMOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne p1, v0, :cond_2

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;)V

    .line 78
    :goto_0
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne p1, v0, :cond_1

    .line 79
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 87
    :cond_1
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    check-cast p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->recipientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->c(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->b(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v2, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->createdAt:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->a(J)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v2, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->createdAt:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->b(J)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->d(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/model/CashTransaction;->a(Z)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->createdAt:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 52
    iget-wide v2, p1, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;->createdAt:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    .line 55
    :cond_0
    const-string v0, "ValidateTransactionBlocker"

    const-string v1, "CASH-LOG: SUCCESS resolved ValidateTransactionBlocker recipient[%s] amount[%s] got transaction_id[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;Ljava/util/List;Z)V

    .line 60
    return-void
.end method
