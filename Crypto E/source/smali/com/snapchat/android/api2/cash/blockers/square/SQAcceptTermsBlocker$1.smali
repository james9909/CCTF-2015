.class Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

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
    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;->b()Ljava/util/List;

    move-result-object v0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v2, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {v2}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->f()Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {v3}, Lcom/snapchat/android/api2/cash/square/data/CashPayment;->h()Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 49
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->U()V

    .line 50
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Ljava/util/List;Z)V

    .line 51
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

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    invoke-static {v0, p2}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Ljava/util/List;Z)V

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "SQUARE_ACCEPT_TERMS_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    const v2, 0x7f0c0152

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    .line 67
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->c(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Ljava/util/List;Z)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "SQUARE_ACCEPT_TERMS_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;I)V

    goto :goto_1
.end method
