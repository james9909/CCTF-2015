.class public Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBlockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "blockers"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_summary"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mNumberOfPayments:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number_of_payments"
    .end annotation
.end field

.field private mPasswordConfirmationEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode_confirmation_enabled"
    .end annotation
.end field

.field private mPayments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/square/data/CashPayment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mNumberOfPayments:I

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mBlockers:Lcom/snapchat/android/api2/cash/square/data/SQPaymentBlockers;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/api2/cash/square/data/CardSummary;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mPasswordConfirmationEnabled:Z

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/square/data/CashPayment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mPayments:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->mNumberOfPayments:I

    return v0
.end method
