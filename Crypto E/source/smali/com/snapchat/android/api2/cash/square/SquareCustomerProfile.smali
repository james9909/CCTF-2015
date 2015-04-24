.class public Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/ICashCustomerProfile;


# instance fields
.field private final mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mCashCustomerStatus:Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomerStatus:Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;

    .line 23
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->c()Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    .line 24
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->b()Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;->a()Ljava/lang/String;

    .line 73
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomer:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;->c()Ljava/lang/String;

    .line 33
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomerStatus:Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomerStatus:Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCashCustomerStatus:Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;->f()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

.method public f()Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CardSummary;->a()Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;->mCardSummary:Lcom/snapchat/android/api2/cash/square/data/CardSummary;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CardSummary;->b()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
