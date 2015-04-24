.class Lcom/snapchat/android/cash/SendingCashManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/model/server/ServerCashTransaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/snapchat/android/cash/SendingCashManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->c:Lcom/snapchat/android/cash/SendingCashManager;

    iput-object p2, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p3, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/server/ServerCashTransaction;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 360
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 361
    invoke-static {p1}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/model/server/ServerCashTransaction;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v2, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_2

    .line 372
    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/snapchat/android/util/CashUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->c:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v2, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/cash/SendingCashManager;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 379
    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v0}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 383
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 384
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 395
    :cond_3
    :goto_0
    return-void

    .line 385
    :cond_4
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_3

    .line 386
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_3

    .line 391
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/cash/SendingCashManager$8;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 392
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    check-cast p1, Lcom/snapchat/android/model/server/ServerCashTransaction;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/cash/SendingCashManager$8;->a(Lcom/snapchat/android/model/server/ServerCashTransaction;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method
