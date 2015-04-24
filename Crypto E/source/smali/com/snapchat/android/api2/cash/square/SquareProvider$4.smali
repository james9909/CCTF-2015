.class Lcom/snapchat/android/api2/cash/square/SquareProvider$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/square/SquareProvider;->b(Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;

.field final synthetic val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;Lcom/snapchat/android/model/CashTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$4;->this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$4;->val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$4;->this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$4;->val$cashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->a(Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/DeleteCashPaymentTask;->g()V

    .line 290
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method
