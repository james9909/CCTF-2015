.class Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    invoke-static {v0, p2}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;I)Ljava/util/List;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->d(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V

    .line 105
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "SQUARE_PHONE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;I)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    iget-object v0, v0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    const v2, 0x7f0c0152

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/api2/cash/CashErrorReporter;->a(Lcom/snapchat/android/model/CashTransaction;I[Ljava/lang/Object;)V

    .line 103
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->e(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "SQUARE_PHONE_VERIFICATION_FAILED"

    invoke-static {v0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string v0, "SQPhoneNumberBlocker"

    const-string v1, "CASH-LOG: SUCCESS received phone signature"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    check-cast p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;

    .line 47
    iget-object v0, p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;->signature:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V

    .line 87
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;)V

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;->signature:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;->g()V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v1, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;

    iget-object v2, p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;->signature:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;->g()V

    goto :goto_0
.end method
