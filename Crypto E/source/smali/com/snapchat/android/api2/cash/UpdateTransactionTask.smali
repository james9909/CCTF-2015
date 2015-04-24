.class public Lcom/snapchat/android/api2/cash/UpdateTransactionTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;,
        Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;

.field private final mConversationId:Ljava/lang/String;

.field private final mSaved:Ljava/lang/Boolean;

.field private final mTransactionId:Ljava/lang/String;

.field private final mVersion:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;)V
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->EXPONENTIAL_STRATEGY:Lcom/snapchat/android/api2/framework/backoffs/ExponentialStrategy;

    invoke-direct {p0, v0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>(Lcom/snapchat/android/api2/framework/backoffs/IStrategy;)V

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mTransactionId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mConversationId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mSaved:Ljava/lang/Boolean;

    .line 32
    iput-object p4, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mVersion:Ljava/lang/Integer;

    .line 33
    iput-object p5, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mCallback:Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;

    .line 35
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mSaved:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mVersion:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 62
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mCallback:Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;->a()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->mCallback:Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;->a(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->a(Ljava/lang/Boolean;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "/cash/update_transaction"

    return-object v0
.end method
