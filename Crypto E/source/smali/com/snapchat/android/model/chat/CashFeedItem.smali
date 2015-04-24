.class public Lcom/snapchat/android/model/chat/CashFeedItem;
.super Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;
.implements Lcom/snapchat/android/model/chat/IIterableChatFeedItem;
.implements Lcom/snapchat/android/model/chat/ISavableChatFeedItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/CashFeedItem$3;,
        Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;
    }
.end annotation


# static fields
.field protected static final MAX_NUM_OF_RETRIES_FOR_FAILURES:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBlockerPriorityQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCanShowSparkle:Z

.field private final mCashTransaction:Lcom/snapchat/android/model/CashTransaction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContinueForwardListener:Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHasSeenRain:Z

.field private mHasSparkled:Z

.field private mIterToken:Ljava/lang/String;

.field private mNumberOfFailedRetryAttempts:I

.field protected mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

.field private mSendingClientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 50
    new-instance v0, Lcom/snapchat/android/util/UniquePriorityQueue;

    invoke-direct {v0}, Lcom/snapchat/android/util/UniquePriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    .line 54
    iput v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    .line 55
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSeenRain:Z

    .line 56
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSparkled:Z

    .line 57
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    .line 70
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 74
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 76
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_0

    .line 87
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_0

    .line 90
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_CONFIRMATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 91
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_0
.end method

.method static synthetic F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private G()V
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 724
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/blockers/Blocker;

    .line 726
    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v2, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] continueBlockerResolution attempting to resolve next blocker %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    invoke-virtual {v0, p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 729
    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 756
    :goto_0
    return-void

    .line 734
    :cond_0
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$chat$CashFeedItem$BlockerResolutionState:[I

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 748
    :goto_1
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] RESOLUTION STATE set to %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    :goto_2
    invoke-direct {p0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    goto :goto_0

    .line 737
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_INITIATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    goto :goto_1

    .line 740
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    goto :goto_1

    .line 743
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 745
    :pswitch_3
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_1

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 752
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_2

    .line 735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Z)I
    .locals 5
    .parameter

    .prologue
    .line 559
    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v2, "CASH-LOG: %s cash id[%s] sender[%s] recipient[%s]"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "SAVING"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v1

    .line 567
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v0

    if-ne v0, p1, :cond_2

    :cond_0
    move v0, v1

    .line 630
    :goto_1
    return v0

    .line 559
    :cond_1
    const-string v0, "UNSAVING"

    goto :goto_0

    .line 571
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 572
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/model/CashTransaction;->e(Z)V

    .line 573
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/CashTransaction;->b(I)V

    .line 574
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/model/chat/CashFeedItem$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem$1;-><init>(Lcom/snapchat/android/model/chat/CashFeedItem;ZII)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;)Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->g()V

    goto :goto_1

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v1

    .line 599
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v0

    if-ne v0, p1, :cond_5

    :cond_4
    move v0, v1

    .line 601
    goto :goto_1

    .line 603
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 604
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/model/CashTransaction;->f(Z)V

    .line 605
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/CashTransaction;->c(I)V

    .line 606
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/model/chat/CashFeedItem$2;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem$2;-><init>(Lcom/snapchat/android/model/chat/CashFeedItem;ZII)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;)Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->g()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/CashTransaction;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 759
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    .line 763
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    .line 764
    if-eqz p1, :cond_1

    .line 765
    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->a()V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Z)I

    move-result v0

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->b(Z)I

    move-result v0

    return v0
.end method

.method public D()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 774
    return-void
.end method

.method public E()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    .line 778
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 779
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 780
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 781
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 405
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 406
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 415
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v1

    if-nez v1, :cond_3

    .line 411
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 412
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 413
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4
    .parameter

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/primitives/LongUtils;->a(JJ)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;)Lcom/snapchat/android/api2/cash/UpdateTransactionTask;
    .locals 6
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
    .line 801
    new-instance v0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->I()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/snapchat/android/api2/cash/UpdateTransactionTask$UpdateTransactionTaskCallback;)V

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const v1, 0x7f020030

    const v0, 0x7f02002e

    .line 422
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    const v0, 0x7f020039

    .line 451
    :cond_0
    :goto_0
    new-instance v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    return-object v1

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    const v0, 0x7f020113

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->at()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->y()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const v0, 0x7f02003b

    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->y()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 437
    goto :goto_0

    .line 438
    :cond_4
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 439
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 440
    goto :goto_0

    .line 442
    :cond_5
    const v0, 0x7f02003f

    goto :goto_0

    .line 445
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const v0, 0x7f02002f

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f0c020a

    const/4 v1, 0x0

    .line 384
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 385
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const v0, 0x7f0c00ee

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const v0, 0x7f0c00ec

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->z()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_3
    const v0, 0x7f0c01a3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->y()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 396
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_5
    invoke-super {p0}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 455
    invoke-virtual {p0, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 456
    invoke-static {p0}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 457
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 717
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] STARTING blocker resolution"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mContinueForwardListener:Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;

    .line 720
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->G()V

    .line 721
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 652
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onDismiss %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 661
    :goto_0
    invoke-direct {p0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    .line 662
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 663
    return-void

    .line 659
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 643
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onResolve REMOVING blocker %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {p0, p2, p3}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/List;Z)V

    .line 648
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 638
    return-void
.end method

.method protected a(Ljava/util/List;Z)V
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 693
    if-eqz p1, :cond_0

    .line 694
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] ADDING NEW blockers %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 701
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] CONTINUING blocker resolution continueResolution[%s]"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->G()V

    .line 714
    :goto_0
    return-void

    .line 705
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] FAILING because continueResolution is false and blockers remain"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 712
    :goto_1
    invoke-direct {p0, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    goto :goto_0

    .line 710
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;)Z
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 481
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->v()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 490
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->r()Z

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->r()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 494
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->t()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 499
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->q()Z

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->q()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 503
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->n()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->n()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->m()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->m()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 515
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public a(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/model/CashTransaction;->c(Z)V

    .line 174
    :goto_0
    return v0

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v1, v2, :cond_2

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/model/CashTransaction;->d(Z)V

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public ap()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->l()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/cash/CashtagParser;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :cond_0
    return-object v0
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public at()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 195
    :cond_0
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_2

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v0

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->r()Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 682
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v1, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onHardFailure %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 685
    invoke-direct {p0, v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->c(Z)V

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 687
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 667
    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem;->TAG:Ljava/lang/String;

    const-string v2, "CASH-LOG: CashFeedItem id[%s] sender[%s] recipient[%s] onFailure %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->J()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    if-eqz p3, :cond_0

    .line 670
    iget v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    if-lt v1, v6, :cond_1

    .line 672
    iput v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    move p3, v0

    .line 677
    :cond_0
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/List;Z)V

    .line 678
    return-void

    .line 674
    :cond_1
    iget v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mNumberOfFailedRetryAttempts:I

    goto :goto_0
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mSendingClientId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 520
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_1

    .line 521
    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 522
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->e()Ljava/lang/String;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x1

    .line 528
    :goto_0
    return v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 528
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/snapchat/android/model/CashTransaction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSparkled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 144
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->s()Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->u()Z

    move-result v0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 178
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->q()Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->r()Z

    move-result v0

    goto :goto_0
.end method

.method public p()V
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    goto :goto_0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mHasSparkled:Z

    .line 214
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const v0, 0x7f0c005d

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const v0, 0x7f0c0063

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    const v0, 0x7f0c01a0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :pswitch_0
    const v0, 0x7f0c01a5

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_1
    const v0, 0x7f0c01a4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_4
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 278
    :pswitch_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_5

    .line 279
    const v0, 0x7f0c0060

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :cond_5
    const v0, 0x7f0c0062

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 287
    :pswitch_3
    const v0, 0x7f0c005f

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 290
    :pswitch_4
    const v0, 0x7f0c005e

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 295
    :pswitch_5
    const v0, 0x7f0c0177

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 299
    :cond_6
    const v0, 0x7f0c005c

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 275
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 785
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->l()Ljava/lang/String;

    move-result-object v0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CashFeedItem{mId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSenderUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecipientUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v2}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendReceiveStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransactionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResolutionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mResolutionState:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    .line 309
    const v0, 0x7f0c0061

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()I
    .locals 6

    .prologue
    const v1, 0x7f0200b1

    const v3, 0x7f0200af

    const v0, 0x7f0200b0

    .line 315
    const/4 v2, 0x0

    .line 316
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    const v0, 0x7f020039

    .line 363
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    sget-object v3, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v4, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 324
    :pswitch_1
    const v0, 0x7f02003f

    .line 325
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 332
    goto :goto_0

    .line 337
    :cond_3
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v4

    invoke-static {v4}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    sget-object v4, Lcom/snapchat/android/model/chat/CashFeedItem$3;->$SwitchMap$com$snapchat$android$model$CashTransaction$TransactionStatus:[I

    iget-object v5, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    :cond_4
    :goto_1
    move v0, v2

    .line 356
    goto :goto_0

    .line 341
    :pswitch_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-eq v0, v1, :cond_4

    move v2, v3

    .line 342
    goto :goto_1

    :pswitch_4
    move v2, v3

    .line 348
    goto :goto_1

    :pswitch_5
    move v2, v0

    .line 351
    goto :goto_1

    :pswitch_6
    move v2, v1

    .line 355
    goto :goto_1

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
