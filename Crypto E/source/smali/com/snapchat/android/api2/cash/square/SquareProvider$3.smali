.class Lcom/snapchat/android/api2/cash/square/SquareProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/square/SquareCashCustomerStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/square/SquareProvider;->j()Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$3;->this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 271
    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    .line 272
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->S()V

    .line 274
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 266
    new-instance v0, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api2/cash/square/SquareCustomerProfile;-><init>(Lcom/snapchat/android/api2/cash/square/data/CashCustomerStatus;)V

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Lcom/snapchat/android/api2/cash/ICashCustomerProfile;)V

    .line 267
    return-void
.end method
