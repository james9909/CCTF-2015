.class public Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;,
        Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;

.field private final mConversationId:Ljava/lang/String;

.field private final mTransactionIds:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->EXPONENTIAL_STRATEGY:Lcom/snapchat/android/api2/framework/backoffs/ExponentialStrategy;

    invoke-direct {p0, v0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>(Lcom/snapchat/android/api2/framework/backoffs/IStrategy;)V

    .line 31
    const-string v0, ","

    invoke-static {p1, v0}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mTransactionIds:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mConversationId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mCallback:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;

    .line 35
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mTransactionIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mConversationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->a(Ljava/util/List;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
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
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/api2/framework/NetworkResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mCallback:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;

    invoke-interface {v0, p1}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;->a(Ljava/util/List;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->mCallback:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;->a(I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/cash/mark_as_viewed"

    return-object v0
.end method
