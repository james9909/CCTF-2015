.class Lcom/snapchat/android/cash/SendingCashManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;

.field final synthetic c:Lcom/snapchat/android/cash/SendingCashManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->c:Lcom/snapchat/android/cash/SendingCashManager;

    iput-object p2, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->b:Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 83
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager CONFIRMED cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->b:Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;->a()V

    .line 85
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 89
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager CONFIRM CANCELED id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$1;->b:Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;->b()V

    .line 91
    return-void
.end method
