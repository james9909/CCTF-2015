.class public Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask;
.super Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/cash/BasicScCashRequestTask",
        "<",
        "Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/snapchat/android/api2/cash/BasicScCashRequestTask;-><init>(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V

    .line 19
    const-class v0, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/cash/generate_signature_for_phone"

    return-object v0
.end method
