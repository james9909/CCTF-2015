.class public Lcom/snapchat/android/api2/cash/square/data/Money;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private final mCurrencyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->USD:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-virtual {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/Money;->mCurrencyCode:Ljava/lang/String;

    .line 16
    iput p1, p0, Lcom/snapchat/android/api2/cash/square/data/Money;->mAmount:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/snapchat/android/api2/cash/square/data/Money;->mAmount:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/Money;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method
