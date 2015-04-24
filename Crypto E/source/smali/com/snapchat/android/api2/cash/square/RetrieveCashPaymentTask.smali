.class public Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;
.super Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;
.source "SourceFile"


# instance fields
.field private mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 14
    invoke-direct {p0, p2}, Lcom/snapchat/android/api2/cash/square/SquareCashPaymentTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;->mPaymentId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cash/payments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/RetrieveCashPaymentTask;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
