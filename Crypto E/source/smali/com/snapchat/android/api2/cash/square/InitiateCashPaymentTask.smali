.class public Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;
.super Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;
    }
.end annotation


# instance fields
.field private final mCardToken:Ljava/lang/String;

.field private final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V
    .locals 0
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
    .line 23
    invoke-direct {p0, p3}, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 25
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->mCardToken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->mCardToken:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "cash/payments"

    return-object v0
.end method
