.class public Lcom/snapchat/android/cash/ReceivingCashManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/snapchat/android/api2/cash/CashProviderManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/api2/cash/BlockerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/snapchat/android/cash/ReceivingCashManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/cash/ReceivingCashManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/cash/ReceivingCashManager;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    .line 97
    invoke-static {}, Lcom/snapchat/android/chat/ConversationUtils;->d()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 100
    sget-object v2, Lcom/snapchat/android/cash/ReceivingCashManager;->c:Ljava/lang/String;

    const-string v3, "CASH-LOG: UPDATING pending received cash id[%s] sender[%s] amount[%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/snapchat/android/cash/ReceivingCashManager;->b:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v3, Lcom/snapchat/android/cash/ReceivingCashManager$2;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/cash/ReceivingCashManager$2;-><init>(Lcom/snapchat/android/cash/ReceivingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/api2/cash/BlockerManager;->f(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ReceivingCashManager resolveBlockers should only be called on INITIATED or WAITING_ON_RECIPIENT CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    sget-object v0, Lcom/snapchat/android/cash/ReceivingCashManager;->c:Ljava/lang/String;

    const-string v1, "CASH-LOG: ReceivingCashManager RESOLVE blockers id[%s] sender[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 50
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/cash/ReceivingCashManager;->b:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v1, Lcom/snapchat/android/cash/ReceivingCashManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/cash/ReceivingCashManager$1;-><init>(Lcom/snapchat/android/cash/ReceivingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/api2/cash/BlockerManager;->e(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 70
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 77
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v2, v3, :cond_0

    .line 79
    iget-object v2, p0, Lcom/snapchat/android/cash/ReceivingCashManager;->a:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    sget-object v2, Lcom/snapchat/android/cash/ReceivingCashManager;->c:Ljava/lang/String;

    const-string v3, "CASH-LOG: DELETING pending received cash id[%s] sender[%s] amount[%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v2, p0, Lcom/snapchat/android/cash/ReceivingCashManager;->a:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v2, v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method
