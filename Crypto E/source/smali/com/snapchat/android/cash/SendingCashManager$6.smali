.class Lcom/snapchat/android/cash/SendingCashManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;)Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic d:Lcom/snapchat/android/cash/SendingCashManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iput-object p2, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager RETRY SENT cash id[%s] successfully"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->p(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->z()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->g(Ljava/lang/String;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 263
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager RETRY FAILED to SEND cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$6;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 266
    return-void
.end method
