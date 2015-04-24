.class public Lcom/snapchat/android/chat/SendingMailman;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/chat/SendingMailman$3;
    }
.end annotation


# static fields
.field private static l:Lcom/snapchat/android/chat/SendingMailman;


# instance fields
.field protected a:Lcom/snapchat/android/cash/SendingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

.field private final f:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

.field private final g:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final h:Lcom/snapchat/android/model/SnapWomb;

.field private final i:Lcom/snapchat/android/chat/FeedIconManager;

.field private final j:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

.field private final k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 105
    invoke-static {}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a()Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a()Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->a()Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/chat/SendingMailman;-><init>(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;)V
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
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->c:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->d:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->e:Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

    .line 116
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 117
    iput-object p1, p0, Lcom/snapchat/android/chat/SendingMailman;->f:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    .line 118
    iput-object p2, p0, Lcom/snapchat/android/chat/SendingMailman;->g:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 119
    iput-object p3, p0, Lcom/snapchat/android/chat/SendingMailman;->h:Lcom/snapchat/android/model/SnapWomb;

    .line 120
    iput-object p4, p0, Lcom/snapchat/android/chat/SendingMailman;->i:Lcom/snapchat/android/chat/FeedIconManager;

    .line 121
    iput-object p5, p0, Lcom/snapchat/android/chat/SendingMailman;->j:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    .line 122
    iput-object p6, p0, Lcom/snapchat/android/chat/SendingMailman;->k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/chat/SendingMailman;)Lcom/snapchat/android/analytics/SendingMailmanAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->e:Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/chat/SendingMailman;
    .locals 2

    .prologue
    .line 126
    const-class v1, Lcom/snapchat/android/chat/SendingMailman;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/chat/SendingMailman;->l:Lcom/snapchat/android/chat/SendingMailman;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/snapchat/android/chat/SendingMailman;

    invoke-direct {v0}, Lcom/snapchat/android/chat/SendingMailman;-><init>()V

    sput-object v0, Lcom/snapchat/android/chat/SendingMailman;->l:Lcom/snapchat/android/chat/SendingMailman;

    .line 129
    :cond_0
    sget-object v0, Lcom/snapchat/android/chat/SendingMailman;->l:Lcom/snapchat/android/chat/SendingMailman;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 133
    const-class v0, Lcom/snapchat/android/chat/SendingMailman;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/chat/SendingMailman;->l:Lcom/snapchat/android/chat/SendingMailman;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/SentSnap;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 711
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->w()V
    :try_end_0
    .catch Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    :goto_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->s()V

    .line 714
    const v1, 0x7f0c00f0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 715
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0

    .line 712
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 724
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v1

    .line 725
    monitor-enter v1

    .line 730
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 731
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 733
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Y()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    instance-of v4, v0, Lcom/snapchat/android/model/SentSnap;

    if-eqz v4, :cond_1

    .line 735
    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/SentSnap;)V

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 736
    :cond_1
    :try_start_1
    instance-of v4, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;ZZ)V

    goto :goto_0

    .line 740
    :cond_2
    instance-of v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v4, :cond_0

    .line 741
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->a:Lcom/snapchat/android/cash/SendingCashManager;

    invoke-virtual {v0, p1, v2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 746
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 748
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;J)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 757
    const-string v0, "SendingMailman"

    const-string v1, "CHAT-LOG: RETRY sending chat messages above seqNum: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v1

    .line 759
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v2

    .line 760
    monitor-enter v1

    .line 761
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 762
    instance-of v4, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v4, :cond_0

    .line 763
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 764
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->f()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v4

    .line 766
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getSeqNum()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-lez v4, :cond_0

    .line 767
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;ZZ)V

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    invoke-virtual {p0, p1}, Lcom/snapchat/android/chat/SendingMailman;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 774
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 511
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 512
    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v1, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {v1, p2, p3}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->setCount(J)Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->setCreatedAt(J)Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->build()Lcom/snapchat/android/model/server/cash/CashRainMessage;

    move-result-object v0

    .line 519
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/ReceivedSnap;)V
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
    .line 488
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 489
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->setSnapId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->setViewed(Z)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->setReplayed(Z)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->setScreenshotCount(J)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->setTimestamp(J)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/SnapStateMessage;

    move-result-object v0

    .line 500
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0

    .line 492
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 177
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->l(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->f()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->e:Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aE()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;Z)V

    .line 181
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->F()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->p()Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v1, v2, :cond_2

    .line 185
    :cond_0
    const-string v1, "SendingMailman"

    const-string v2, "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (sendChat): %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/snapchat/android/chat/SendingMailman;->f(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 196
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->K()V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->i:Lcom/snapchat/android/chat/FeedIconManager;

    invoke-virtual {v0, p1, v4}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 203
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->c()V

    .line 206
    return-void

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->n()J

    move-result-wide v2

    .line 191
    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage;->setSeqNum(J)V

    .line 192
    invoke-virtual {p2, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->b(J)V

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;IZ)V
    .locals 4
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
    .parameter
    .end parameter

    .prologue
    .line 406
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 407
    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v1

    .line 409
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v2

    .line 411
    new-instance v3, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;

    invoke-direct {v3, v0, v1, v2}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;

    move-result-object v1

    if-eqz p4, :cond_1

    const-string v0, "saved"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->setState(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->setVersion(I)Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/chat/Chat;->b(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0

    .line 411
    :cond_1
    const-string v0, "unsaved"

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;ZZ)V
    .locals 9
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
    .parameter
    .end parameter

    .prologue
    const v6, 0x7f0c00f0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 579
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 582
    if-eqz v1, :cond_0

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 585
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->f()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    .line 586
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v4

    .line 588
    if-nez v0, :cond_4

    .line 590
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 591
    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 594
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 597
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 599
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->h:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapWomb;->i()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 600
    if-nez v0, :cond_2

    .line 601
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 610
    :goto_1
    if-eqz p4, :cond_0

    .line 611
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 612
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 604
    :cond_2
    :try_start_0
    new-instance v1, Lcom/snapchat/android/api/chat/UploadChatMediaTask;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api/chat/UploadChatMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/snapchat/android/api/UploadMediaTask$UploadMediaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 605
    :catch_0
    move-exception v0

    .line 607
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 617
    :cond_3
    new-instance v5, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    invoke-direct {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->setIv(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->setKey(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->setMediaId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    move-result-object v0

    .line 623
    new-instance v5, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    invoke-direct {v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;-><init>()V

    sget-object v6, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setMedia(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    .line 641
    :goto_2
    new-instance v5, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v1, v6, v4}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setMessageBody(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setTimestamp(J)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/chat/Chat;->b(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 649
    invoke-virtual {p2, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 651
    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 652
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 653
    if-eqz p3, :cond_5

    .line 654
    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage;->setTimestamp(J)V

    .line 655
    invoke-virtual {p2, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 657
    :cond_5
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 658
    invoke-virtual {v0, v8}, Lcom/snapchat/android/model/server/chat/ChatMessage;->setRetried(Z)V

    .line 659
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->p()Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v1, v2, :cond_9

    .line 660
    const-string v1, "SendingMailman"

    const-string v2, "CHAT-LOG: ADDING message to pending chat messages because sequence number is not updated (retrySendingChat): %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 663
    invoke-virtual {p0, p1}, Lcom/snapchat/android/chat/SendingMailman;->f(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 670
    :goto_3
    if-eqz p4, :cond_0

    .line 671
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 672
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 628
    :cond_6
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatText;

    if-eqz v0, :cond_7

    .line 629
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;-><init>()V

    sget-object v5, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->ap()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setText(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    goto/16 :goto_2

    .line 633
    :cond_7
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatScreenshot;

    if-eqz v0, :cond_8

    .line 634
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;-><init>()V

    sget-object v5, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    goto/16 :goto_2

    .line 638
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chat type (well this should never happen...): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_9
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->n()J

    move-result-wide v2

    .line 666
    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage;->setSeqNum(J)V

    .line 667
    invoke-virtual {p2, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->b(J)V

    .line 668
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_3
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatMedia;)V
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
    .line 428
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->ae()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->c(J)V

    .line 430
    new-instance v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->setMediaId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->setKey(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->setIv(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;-><init>()V

    sget-object v2, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setMedia(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    .line 441
    new-instance v1, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->m()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setMessageBody(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->ae()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setTimestamp(J)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->b(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 450
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;)V

    .line 451
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatScreenshot;)V
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
    .line 460
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 461
    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatScreenshot;->ae()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/snapchat/android/model/chat/ChatScreenshot;->c(J)V

    .line 464
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 466
    new-instance v1, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;-><init>()V

    sget-object v2, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    .line 469
    new-instance v2, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatScreenshot;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setMessageBody(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatScreenshot;->ae()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setTimestamp(J)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/chat/ChatScreenshot;->b(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/ChatScreenshot;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ChatMessage;)V
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
    .line 878
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 879
    if-nez v0, :cond_0

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 881
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_0
    monitor-enter v0

    .line 884
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V
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
    const/4 v4, 0x0

    .line 215
    new-instance v0, Lcom/snapchat/android/chat/SendingMailman$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/snapchat/android/chat/SendingMailman$1;-><init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 224
    invoke-static {p2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->c:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, ""

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/chat/SendingMailman;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 233
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->setConnSeqNum(J)V

    .line 235
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    .line 236
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v2

    .line 237
    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getAuth()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 238
    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 246
    :cond_2
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->t()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v1

    .line 247
    if-nez v1, :cond_4

    .line 248
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->canSendOverHTTP()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "SendingMailman"

    const-string v2, "CHAT-LOG: Adding message to pending messages because SecureChatService is null %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0, p2, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0

    .line 239
    :cond_3
    if-nez v2, :cond_2

    .line 240
    new-instance v1, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->g()V

    .line 241
    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->c:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, ""

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_4
    instance-of v2, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a()Lcom/snapchat/android/chat/ChatConnectionMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 257
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->k()V

    .line 259
    :cond_5
    invoke-virtual {v1, p2, v0}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    .line 297
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->needsACK()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    if-ne p3, v0, :cond_2

    .line 298
    :cond_0
    const-string v0, "SendingMailman"

    const-string v3, "CHAT-LOG: SUCCEEDED sending message %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    .line 300
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 301
    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 302
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {p1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v3

    .line 304
    if-eqz v3, :cond_1

    .line 305
    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 307
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    .line 308
    invoke-virtual {p1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->m(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->g:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    move v0, v1

    .line 325
    :goto_0
    if-eqz v0, :cond_2

    .line 326
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 329
    :cond_2
    return-void

    .line 311
    :cond_3
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 312
    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V

    move-object v0, p2

    .line 313
    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-static {v3}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 316
    goto :goto_0

    .line 318
    :cond_4
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/PresenceMessage;

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/snapchat/android/model/server/cash/CashRainMessage;

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/SnapStateMessage;

    if-eqz v0, :cond_6

    :cond_5
    move v0, v2

    .line 322
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    const-string v0, "SendingMailman"

    const-string v1, "CHAT-LOG: FAILED sending message %s with status %s and message: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {p4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    if-ne p3, v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->l()V

    .line 349
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    .line 351
    sget-object v0, Lcom/snapchat/android/chat/SendingMailman$3;->a:[I

    invoke-virtual {p4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 376
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    if-ne p3, v0, :cond_4

    .line 377
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->b:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    if-ne p4, v0, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->isRetried()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0132

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->L()V

    .line 385
    invoke-virtual {p0, p1, p2, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Z)V

    .line 386
    invoke-virtual {p0, p1}, Lcom/snapchat/android/chat/SendingMailman;->e(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->g:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 395
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 353
    :pswitch_1
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getTo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->g:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    :cond_3
    invoke-virtual {p0, p1, p2, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Z)V

    goto :goto_0

    .line 364
    :pswitch_2
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_2

    .line 365
    check-cast p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_0

    .line 390
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/SendingMailman;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Z)V
    .locals 4
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
    const/4 v3, 0x0

    .line 833
    const/4 v0, 0x0

    .line 834
    instance-of v1, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v1, :cond_3

    .line 835
    check-cast p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 836
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_0

    .line 838
    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 840
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 841
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->g:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 851
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 852
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->i:Lcom/snapchat/android/chat/FeedIconManager;

    invoke-virtual {v1, p1, v3}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 853
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v2}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 854
    if-eqz v0, :cond_2

    .line 855
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 858
    :cond_2
    :goto_1
    return-void

    .line 843
    :cond_3
    instance-of v1, p2, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    if-eqz v1, :cond_4

    .line 844
    check-cast p2, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    invoke-static {p1, p2, v3}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/MessageStateMessage;Z)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_4
    instance-of v1, p2, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    if-eqz v1, :cond_5

    .line 846
    check-cast p2, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V

    goto :goto_0

    .line 847
    :cond_5
    instance-of v1, p2, Lcom/snapchat/android/model/server/chat/PresenceMessage;

    if-eqz v1, :cond_1

    goto :goto_1
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 280
    if-eqz p3, :cond_0

    .line 281
    invoke-virtual {p0, p1, p2, p4}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;)V

    .line 285
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 147
    new-instance v1, Lcom/snapchat/android/model/chat/ChatText$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/model/chat/ChatText$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, p2}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatText$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatText$Builder;->a()Lcom/snapchat/android/model/chat/ChatText;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 151
    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 153
    new-instance v2, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    invoke-direct {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;-><init>()V

    sget-object v3, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setType(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->ap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->setText(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v2

    .line 157
    new-instance v3, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setChatMessageId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setMessageBody(Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->setTimestamp(J)Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ChatMessage;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/chat/Chat;->b(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 165
    invoke-virtual {p0, p1, v1}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V
    .locals 4
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
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_0

    .line 561
    new-instance v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {v1, p4}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->setReleaseType(Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->setKnownChatSequenceNumbers(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->setKnownReceivedSnapsTs(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    move-result-object v0

    .line 567
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 531
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 532
    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 534
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 535
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aj()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->setPresences(Ljava/util/Map;)Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->setIsDisplayingVideo(Z)Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/PresenceMessage;

    move-result-object v0

    .line 542
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->e:Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V

    .line 868
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 950
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 801
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->H()V

    .line 802
    invoke-virtual {p0, v0}, Lcom/snapchat/android/chat/SendingMailman;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0

    .line 804
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 6
    .parameter

    .prologue
    .line 970
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 971
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 972
    new-instance v2, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->d:Ljava/util/Map;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 973
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 976
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->t()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v3

    .line 977
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 978
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 979
    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    .line 980
    :cond_0
    iget-object v5, p0, Lcom/snapchat/android/chat/SendingMailman;->f:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-virtual {v5, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0

    .line 982
    :cond_1
    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0

    .line 985
    :cond_2
    return-void
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 781
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 782
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v2

    .line 783
    monitor-enter v2

    .line 784
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 785
    instance-of v4, v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    check-cast v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    .line 791
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;ZZ)V

    goto :goto_1

    .line 793
    :cond_2
    return-void
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    .line 684
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->isRetried()Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->setRetried(Z)V

    .line 686
    instance-of v0, p2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 687
    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 688
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v1

    .line 689
    if-nez v1, :cond_0

    .line 691
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    .line 703
    :goto_0
    return-void

    .line 694
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v2

    .line 695
    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 696
    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/server/chat/ChatMessage;->setTimestamp(J)V

    .line 698
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 699
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Z)V

    .line 961
    return-void
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 811
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->N()Ljava/util/Set;

    move-result-object v0

    .line 812
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    :cond_0
    return-void

    .line 814
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v1

    .line 815
    if-eqz v1, :cond_0

    .line 816
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 817
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->O()V

    .line 818
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    .line 819
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 820
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_0
.end method

.method public d(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 893
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 894
    if-eqz v0, :cond_3

    .line 895
    const/4 v1, 0x0

    .line 896
    monitor-enter v0

    .line 900
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->p()Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->F()Z

    move-result v2

    if-nez v2, :cond_0

    .line 903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 904
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 906
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    if-eqz v1, :cond_3

    .line 909
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 910
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {p0, p1, v0, v4, v4}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;ZZ)V

    goto :goto_0

    .line 906
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 915
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 916
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 919
    :cond_3
    return-void
.end method

.method public e(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 926
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 927
    if-eqz v0, :cond_2

    .line 928
    monitor-enter v0

    .line 929
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 930
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 931
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 932
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 933
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Z)V

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 935
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman;->i:Lcom/snapchat/android/chat/FeedIconManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 936
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v2}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 937
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 939
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    :cond_2
    return-void
.end method

.method public f(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 994
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->p()Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    if-eq v0, v1, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 996
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATING:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V

    .line 997
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman;->j:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/chat/SendingMailman$2;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/chat/SendingMailman$2;-><init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;)V

    goto :goto_0
.end method
