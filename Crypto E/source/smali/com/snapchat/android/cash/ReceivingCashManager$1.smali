.class Lcom/snapchat/android/cash/ReceivingCashManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/cash/ReceivingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;

.field final synthetic c:Lcom/snapchat/android/cash/ReceivingCashManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/cash/ReceivingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->c:Lcom/snapchat/android/cash/ReceivingCashManager;

    iput-object p2, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->b:Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Lcom/snapchat/android/cash/ReceivingCashManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CASH-LOG: ReceivingCashManager SUCCESS RESOLVED blockers id[%s], sender[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->c:Lcom/snapchat/android/cash/ReceivingCashManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/ReceivingCashManager;->a()V

    .line 58
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->b:Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;->a()V

    .line 60
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 64
    invoke-static {}, Lcom/snapchat/android/cash/ReceivingCashManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CASH-LOG: ReceivingCashManager CANCELED RESOLVED blockers id[%s], sender[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/cash/ReceivingCashManager$1;->b:Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;->b()V

    .line 68
    return-void
.end method
