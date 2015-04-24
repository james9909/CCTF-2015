.class public Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;
.super Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;
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
.field private final mPaymentId:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field private final mVerificationCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V
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

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 24
    invoke-direct {p0, p4}, Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    .line 25
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mPhoneNumber:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mVerificationCode:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mPaymentId:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mVerificationCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mPaymentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cash/payments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/phone-number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cash/phone-number"

    goto :goto_0
.end method
