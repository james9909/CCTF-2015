.class public Lcom/snapchat/android/cash/SendingCashManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;,
        Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/api2/cash/BlockerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)",
            "Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/snapchat/android/cash/SendingCashManager$6;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/snapchat/android/cash/SendingCashManager$6;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 400
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 402
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 403
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 404
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Collection;Ljava/lang/String;Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;)Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;",
            ")",
            "Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;-><init>(Ljava/util/Collection;Ljava/lang/String;Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
            "<",
            "Lcom/snapchat/android/model/server/ServerCashTransaction;",
            ">;)",
            "Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-class v1, Lcom/snapchat/android/model/server/ServerCashTransaction;

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 421
    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;I)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/snapchat/android/model/CashTransaction$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/snapchat/android/model/CashTransaction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Z)Lcom/snapchat/android/model/CashTransaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction$Builder;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->a(J)V

    .line 70
    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/CashTransaction;->b(J)V

    .line 72
    new-instance v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 73
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 74
    return-object v1
.end method

.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V
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
    .line 78
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager CONFIRM cash id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v1, Lcom/snapchat/android/cash/SendingCashManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/cash/SendingCashManager$1;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/api2/cash/BlockerManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 93
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendingCashManager fetchTransactionStatusAndResolveBlockers should only be called on failed CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->E()V

    .line 163
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 166
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RETRIEVING sending cash transaction id[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v1, Lcom/snapchat/android/cash/SendingCashManager$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/snapchat/android/cash/SendingCashManager$4;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/api2/cash/BlockerManager;->d(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 210
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager fetchTransactionStatusAndResolveBlockers RE-INITIATING cash transaction id[%s]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v1, Lcom/snapchat/android/cash/SendingCashManager$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/snapchat/android/cash/SendingCashManager$5;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/api2/cash/BlockerManager;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 207
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v6, 0x0

    .line 97
    const-string v1, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager SEND cash id[%s] recipient[%s] amount[%s] message[%s]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p3

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/CashTransaction;->f(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v1, Lcom/snapchat/android/cash/SendingCashManager$2;

    invoke-direct {v1, p0, p2, p1, p4}, Lcom/snapchat/android/cash/SendingCashManager$2;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/api2/cash/BlockerManager;->b(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 127
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Z)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 133
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager INITIATING cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    new-instance v1, Lcom/snapchat/android/cash/SendingCashManager$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/cash/SendingCashManager$3;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/api2/cash/BlockerManager;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 150
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/cash/SendingCashManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/cash/SendingCashManager$8;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->g()V

    .line 397
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 214
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-interface {p2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 216
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SendingCashManager retrySendCash should only be called on failed CashFeedItems!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->E()V

    .line 223
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    const-string v1, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager retrySendCash RETRIEVING cash transaction id[%s]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api2/cash/BlockerManager;->d(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    const-string v1, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager retrySendCash RE-INITIATING cash transaction id[%s]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager;->a:Lcom/snapchat/android/api2/cash/BlockerManager;

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api2/cash/BlockerManager;->c(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 279
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 284
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 285
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v3

    if-nez v3, :cond_2

    .line 289
    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    .line 291
    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_4

    .line 293
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->v(Ljava/lang/String;)V

    .line 304
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 294
    :cond_4
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_3

    .line 295
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_5
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_6

    .line 299
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->t(Ljava/lang/String;)V

    goto :goto_2

    .line 300
    :cond_6
    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v3, v4, :cond_3

    .line 301
    const-string v3, "USER_DETERMINED_INELIGIBLE"

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->u(Ljava/lang/String;)V

    goto :goto_2

    .line 309
    :cond_7
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const-string v0, "SendingCashManager"

    const-string v2, "CASH-LOG: SendingCashManager mark as viewed %d items"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/cash/SendingCashManager$7;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/cash/SendingCashManager$7;-><init>(Lcom/snapchat/android/cash/SendingCashManager;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/cash/SendingCashManager;->a(Ljava/util/Collection;Ljava/lang/String;Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$MarkTransactionsAsViewedTaskCallback;)Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->g()V

    goto/16 :goto_0
.end method
