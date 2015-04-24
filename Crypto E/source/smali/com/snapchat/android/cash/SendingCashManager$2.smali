.class Lcom/snapchat/android/cash/SendingCashManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;

.field final synthetic d:Lcom/snapchat/android/cash/SendingCashManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iput-object p2, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iput-object p4, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->c:Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager PRE-INITIATED cash id[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->K()V

    .line 111
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Z)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->c:Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;->a()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0, v1, v2, v5}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Z)V

    .line 118
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 122
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager SEND CANCELED id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->c:Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;

    invoke-interface {v0}, Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;->b()V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->d:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$2;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 125
    return-void
.end method
