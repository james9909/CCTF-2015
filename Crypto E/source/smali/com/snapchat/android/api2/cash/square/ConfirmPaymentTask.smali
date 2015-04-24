.class public Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;
.super Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask",
        "<",
        "Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPasscode:Ljava/lang/String;

.field private final mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 17
    invoke-direct {p0, p3}, Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    .line 18
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->mPaymentId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->mPasscode:Ljava/lang/String;

    .line 20
    const-class v0, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->mPasscode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cash/payments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/confirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
