.class Lcom/snapchat/android/cash/SendingCashManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lcom/snapchat/android/cash/SendingCashManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->c:Lcom/snapchat/android/cash/SendingCashManager;

    iput-object p2, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object p3, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 138
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager INITIATED cash id[%s] successfully"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->c:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->p(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 145
    const-string v0, "SendingCashManager"

    const-string v1, "CASH-LOG: SendingCashManager FAILED to INITIATE cash id[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->c:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/cash/SendingCashManager$3;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/cash/SendingCashManager;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 147
    return-void
.end method
