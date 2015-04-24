.class public Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;
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
        "Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetrieveCashCustomerStatusTask"


# instance fields
.field private mListener:Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;->mListener:Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;

    .line 26
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;Lcom/snapchat/android/api2/framework/NetworkResult;)V
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
    .line 46
    const-string v0, "RetrieveCashCustomerStatusTask"

    const-string v1, "CASH-LOG: RetrieveCashCustomerStatusTask finished with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;->mListener:Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;

    invoke-interface {v0, p1}, Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;->a(Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;->mListener:Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;->a(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/square/RetrieveCashCustomerStatusTask;->a(Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "cash"

    return-object v0
.end method
