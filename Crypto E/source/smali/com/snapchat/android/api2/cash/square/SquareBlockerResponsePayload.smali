.class public Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blockers"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public field:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "field"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public payment:Lcom/snapchat/android/api2/cash/square/data/CashPayment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/square/data/ErrorType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareBlockerResponsePayload;->type:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    return-object v0
.end method
