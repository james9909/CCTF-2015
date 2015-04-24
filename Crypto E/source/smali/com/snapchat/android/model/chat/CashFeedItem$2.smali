.class Lcom/snapchat/android/model/chat/CashFeedItem$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/chat/CashFeedItem;->b(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic val$modifiedVersion:I

.field final synthetic val$originalVersion:I

.field final synthetic val$saved:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/CashFeedItem;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-boolean p2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$saved:Z

    iput p3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$modifiedVersion:I

    iput p4, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$originalVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 610
    invoke-static {}, Lcom/snapchat/android/model/chat/CashFeedItem;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CASH-LOG: SUCCEEDED %s cash id[%s] sender[%s] recipient[%s]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$saved:Z

    if-eqz v0, :cond_0

    const-string v0, "SAVING"

    :goto_0
    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    new-array v1, v6, [Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 614
    return-void

    .line 610
    :cond_0
    const-string v0, "UNSAVING"

    goto :goto_0
.end method

.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 617
    invoke-static {}, Lcom/snapchat/android/model/chat/CashFeedItem;->F()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CASH-LOG: FAILED %s cash id[%s] sender[%s] recipient[%s] statusCode[%d]"

    const/4 v0, 0x5

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$saved:Z

    if-eqz v0, :cond_1

    const-string v0, "SAVING"

    :goto_0
    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v0

    iget v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$modifiedVersion:I

    if-ne v0, v3, :cond_0

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$saved:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/CashTransaction;->f(Z)V

    .line 622
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    iget v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->val$originalVersion:I

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/CashTransaction;->c(I)V

    .line 623
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    new-array v1, v1, [Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 625
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem$2;->this$0:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 627
    :cond_0
    return-void

    .line 617
    :cond_1
    const-string v0, "UNSAVING"

    goto :goto_0

    :cond_2
    move v0, v2

    .line 621
    goto :goto_1
.end method
