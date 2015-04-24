.class public Lcom/snapchat/android/api2/cash/ValidateTransactionTask;
.super Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;,
        Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/cash/BasicScCashRequestTask",
        "<",
        "Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAmount:I

.field private final mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

.field private final mIsRain:Z

.field private final mMessage:Ljava/lang/String;

.field private final mRecipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/snapchat/android/util/CashUtils$CurrencyCode;Ljava/lang/String;ZLcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
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
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 30
    invoke-direct {p0, p6}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;-><init>(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V

    .line 32
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mRecipient:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mAmount:I

    .line 34
    iput-object p3, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    .line 35
    iput-object p4, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mMessage:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mIsRain:Z

    .line 38
    const-class v0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mAmount:I

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->mIsRain:Z

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/cash/validate_transaction"

    return-object v0
.end method
