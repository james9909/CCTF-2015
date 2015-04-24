.class public Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;
.super Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/cash/square/SquareRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashPayment;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteCashPaymentTask"


# instance fields
.field private final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;-><init>()V

    .line 27
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 50
    const-string v0, "DeleteCashPaymentTask"

    const-string v1, "CASH-LOG: SUCCESS deleted transaction id[%s] sender[%s] amount[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 55
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "DeleteCashPaymentTask"

    const-string v1, "CASH-LOG: FAILED deleting transaction id[%s] sender[%s] amount[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cash/payments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
