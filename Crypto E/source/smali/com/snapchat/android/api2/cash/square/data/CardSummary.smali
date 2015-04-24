.class public Lcom/snapchat/android/api2/cash/square/data/CardSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBrand:Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mPanSuffix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pan_suffix"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/square/data/CardBrand;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CardSummary;->mBrand:Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/data/CardSummary;->mPanSuffix:Ljava/lang/String;

    return-object v0
.end method
