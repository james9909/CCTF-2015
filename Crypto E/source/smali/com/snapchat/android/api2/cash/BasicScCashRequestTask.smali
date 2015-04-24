.class public abstract Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/api2/cash/ScCashResponsePayload;",
        ">",
        "Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BasicScCashRequestTask"


# instance fields
.field private final mCallback:Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;->mCallback:Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/snapchat/android/api2/framework/NetworkResult;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 25
    const-string v0, "BasicScCashRequestTask"

    const-string v1, "CASH-LOG: %s finished with status code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->g()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->a()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;->mCallback:Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;

    invoke-interface {v0, p1}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;)V

    .line 39
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;->mCallback:Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;

    iget-object v1, p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;->status:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;->mCallback:Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNKNOWN:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;->mCallback:Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;

    sget-object v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NO_NETWORK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    invoke-interface {v0, v1, v5}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method
