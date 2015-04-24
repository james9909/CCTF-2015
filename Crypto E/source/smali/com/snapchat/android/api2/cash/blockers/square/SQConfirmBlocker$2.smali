.class Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

.field final synthetic val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 228
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: SQConfirmBlocker SecurityCodeFragment CANCELED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->c(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;)V

    .line 230
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/CashTransaction;->g(Ljava/lang/String;)V

    .line 159
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: SQConfirmBlocker ENTERED security code"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->g()V

    .line 225
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;

    new-array v1, v4, [Lcom/snapchat/android/api2/cash/blockers/Blocker;

    const/4 v2, 0x0

    new-instance v3, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;

    invoke-direct {v3}, Lcom/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->i(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V

    .line 236
    return-void
.end method
