.class public abstract Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;
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
.field private static final TAG:Ljava/lang/String; = "SquareCashPaymentTask"


# instance fields
.field private final mCallback:Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;->mCallback:Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;

    .line 24
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 29
    const-string v0, "SquareCashPaymentTask"

    const-string v1, "CASH-LOG: %s finished with status code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;->mCallback:Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;

    invoke-interface {v0, p1}, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;->mCallback:Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;->a(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/snapchat/android/api2/cash/square/data/CashPayment;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/data/CashPayment;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method
