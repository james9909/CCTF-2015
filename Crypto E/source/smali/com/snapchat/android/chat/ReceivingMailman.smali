.class public Lcom/snapchat/android/chat/ReceivingMailman;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/snapchat/android/chat/ReceivingMailman;


# instance fields
.field protected a:Lcom/snapchat/android/cash/SendingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lcom/snapchat/android/chat/SendingMailman;

.field private final d:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final e:Lcom/snapchat/android/chat/ChatMessageReleaser;

.field private final f:Lcom/snapchat/android/chat/ChatGapDetector;

.field private final g:Lcom/snapchat/android/chat/FeedIconManager;

.field private final h:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/chat/ChatMessageReleaser;Lcom/snapchat/android/chat/ChatGapDetector;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V
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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 85
    iput-object p1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->c:Lcom/snapchat/android/chat/SendingMailman;

    .line 86
    iput-object p2, p0, Lcom/snapchat/android/chat/ReceivingMailman;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 87
    iput-object p3, p0, Lcom/snapchat/android/chat/ReceivingMailman;->e:Lcom/snapchat/android/chat/ChatMessageReleaser;

    .line 88
    iput-object p4, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    .line 89
    iput-object p5, p0, Lcom/snapchat/android/chat/ReceivingMailman;->g:Lcom/snapchat/android/chat/FeedIconManager;

    .line 90
    iput-object p6, p0, Lcom/snapchat/android/chat/ReceivingMailman;->h:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    .line 91
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/chat/ReceivingMailman;
    .locals 8

    .prologue
    .line 94
    const-class v7, Lcom/snapchat/android/chat/ReceivingMailman;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/snapchat/android/chat/ReceivingMailman;->b:Lcom/snapchat/android/chat/ReceivingMailman;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/snapchat/android/chat/ReceivingMailman;

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-direct {v3}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>()V

    invoke-static {}, Lcom/snapchat/android/chat/ChatGapDetector;->a()Lcom/snapchat/android/chat/ChatGapDetector;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a()Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/chat/ReceivingMailman;-><init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/chat/ChatMessageReleaser;Lcom/snapchat/android/chat/ChatGapDetector;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V

    sput-object v0, Lcom/snapchat/android/chat/ReceivingMailman;->b:Lcom/snapchat/android/chat/ReceivingMailman;

    .line 99
    :cond_0
    sget-object v0, Lcom/snapchat/android/chat/ReceivingMailman;->b:Lcom/snapchat/android/chat/ReceivingMailman;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private a(Lcom/snapchat/android/model/server/chat/ChatMessage;)Lcom/snapchat/android/model/chat/Chat;
    .locals 2
    .parameter

    .prologue
    .line 462
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->TEXT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Lcom/snapchat/android/model/chat/ChatText;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatText;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 479
    :goto_0
    return-object v0

    .line 465
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->MEDIA:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    new-instance v0, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_0

    .line 468
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->DISCOVER_SHARE:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    new-instance v0, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_0

    .line 471
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    new-instance v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatScreenshot;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_0

    .line 474
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->HERE_SCREENSHOT:Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    new-instance v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatScreenshot;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_0

    .line 479
    :cond_4
    new-instance v0, Lcom/snapchat/android/model/chat/ChatUnknown;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatUnknown;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/cash/CashRainMessage;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/cash/CashRainMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 288
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v6

    new-instance v0, Lcom/snapchat/android/util/eventbus/CashRainEvent;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/cash/CashRainMessage;->getCreatedAt()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/cash/CashRainMessage;->getCount()J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/eventbus/CashRainEvent;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V

    invoke-virtual {v6, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/cash/CashStateMessage;)V
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

    .line 297
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v1, "ReceivingMailman"

    const-string v2, "CASH-LOG: Got a state change message "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->a:Lcom/snapchat/android/cash/SendingCashManager;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/cash/CashStateMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/MessageStateMessage;)V
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
    .line 312
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/MessageStateMessage;Z)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 314
    if-nez v0, :cond_0

    .line 315
    const-string v0, "ReceivingMailman"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chat is null. Conversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V
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
    .line 388
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v1

    .line 389
    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->e:Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V

    .line 391
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->e:Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/chat/ChatMessageReleaser;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 394
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 397
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 398
    return-void

    .line 394
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/SnapStateMessage;)V
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
    const-wide/16 v4, 0x0

    .line 327
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->getSnapId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->i(Ljava/lang/String;)Lcom/snapchat/android/model/SentSnap;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 329
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->isViewed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->getScreenshotCount()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->isReplayed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SentSnap;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 339
    :goto_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/SentSnap;->b(J)V

    .line 340
    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->g:Lcom/snapchat/android/chat/FeedIconManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 341
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 342
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 344
    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->getScreenshotCount()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 333
    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SentSnap;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->isReplayed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SentSnap;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_0

    .line 337
    :cond_3
    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SentSnap;->a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 103
    const-class v0, Lcom/snapchat/android/chat/ReceivingMailman;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/chat/ReceivingMailman;->b:Lcom/snapchat/android/chat/ReceivingMailman;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;)V
    .locals 12
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 244
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v10

    .line 246
    if-nez v10, :cond_2

    .line 247
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/snapchat/android/util/FriendUtils;->d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v7

    sget-object v6, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v6}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v6, v1

    invoke-static/range {v0 .. v9}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 255
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v2

    .line 257
    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 262
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->a(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/chat/ChatGapDetector;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)V

    .line 269
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->K()V

    .line 270
    if-nez v10, :cond_1

    .line 271
    invoke-virtual {p1, v11}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Z)V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->g:Lcom/snapchat/android/chat/FeedIconManager;

    invoke-virtual {v0, p1, v11}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 279
    :goto_1
    return-void

    .line 252
    :cond_2
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aO()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/Chat;->c(I)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/Chat;)V

    goto :goto_1
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ChatMessage;)V
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
    .line 223
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/server/chat/ChatMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getSeqNum()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getSeqNum()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 230
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getSeqNum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->e(J)V

    .line 231
    invoke-direct {p0, p2}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/server/chat/ChatMessage;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;)V

    .line 233
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 238
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/NewChatMessageReceivedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/NewChatMessageReceivedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 408
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getAckId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->h(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage;

    move-result-object v1

    .line 409
    if-eqz v1, :cond_2

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V

    .line 411
    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    .line 412
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 413
    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "chat_message"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 415
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getAckId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v2

    .line 416
    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getTimestamp()J

    move-result-wide v4

    .line 418
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 419
    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/model/chat/Chat;->c(J)V

    .line 420
    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    move-object v0, v1

    .line 422
    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/server/chat/ChatMessage;->setTimestamp(J)V

    :cond_0
    move-object v0, v1

    .line 424
    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->d:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 427
    if-eqz v2, :cond_3

    .line 428
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 438
    :cond_1
    :goto_0
    const-string v0, "ReceivingMailman"

    const-string v2, "CHAT-LOG: SUCCEEDED sending message %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_2
    :goto_1
    return-void

    .line 430
    :cond_3
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 432
    :cond_4
    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message_state"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 433
    check-cast v0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    invoke-static {p1, v0, v6}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/MessageStateMessage;Z)Lcom/snapchat/android/model/chat/Chat;

    goto :goto_0

    .line 435
    :cond_5
    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "message_release"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 436
    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V

    goto :goto_0

    .line 440
    :cond_6
    instance-of v0, v1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_7

    .line 441
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->l()V

    .line 443
    :cond_7
    sget-object v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->NEED_AUTHENTICATION:Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse$FAILURE_REASON;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 445
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->h()Lcom/snapchat/android/model/server/chat/SignedPayload;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_9

    .line 447
    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 454
    :cond_8
    const-string v0, "ReceivingMailman"

    const-string v2, "CHAT-LOG: FAILED sending message %s with reason %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/chat/SendingMailman;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    goto :goto_1

    .line 449
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v0, p1, v1, v6}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;Z)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/PresenceMessage;)V
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
    .line 354
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getPresences()Ljava/util/Map;

    move-result-object v3

    .line 357
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v4

    .line 358
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->supportsHere()Z

    move-result v0

    .line 360
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 361
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Z)V

    .line 362
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getHereAuth()Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 370
    :goto_0
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v5

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eq v5, v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->z()Z

    move-result v3

    invoke-virtual {v0, p1, v1, v4, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->f:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 378
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;

    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->isReceivingVideo()Z

    move-result v3

    const-string v4, "Received presence message."

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 380
    return-void

    .line 366
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v5

    .line 114
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ConnectResponse;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 115
    check-cast v0, Lcom/snapchat/android/model/server/chat/ConnectResponse;

    .line 116
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConnectResponse;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-static {}, Lcom/snapchat/android/chat/ConversationUtils;->c()V

    .line 118
    const-string v0, "ReceivingMailman"

    const-string v4, "CHAT-LOG: We are connected to TCP gateway"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v0, v3

    .line 138
    :goto_1
    if-eqz v3, :cond_0

    .line 140
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    :cond_0
    :goto_2
    return-void

    .line 120
    :cond_1
    const-string v4, "ReceivingMailman"

    const-string v6, "CHAT-LOG: Failed to connect to TCP gateway with reason: %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConnectResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v4, v6, v7}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 124
    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 125
    const-string v3, "ReceivingMailman"

    const-string v4, "CHAT-LOG: RECEIVED %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_3
    const-string v0, "conversation_message_response"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getConvId()Ljava/lang/String;

    move-result-object v4

    .line 130
    if-eqz v4, :cond_8

    .line 131
    invoke-static {v4}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_8

    .line 133
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    goto :goto_1

    .line 146
    :cond_4
    invoke-static {v3}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    .line 147
    if-nez v4, :cond_5

    .line 153
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/chat/ReceivingMailman;->h:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    invoke-virtual {v0, v3, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    goto :goto_2

    .line 163
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_6
    :goto_3
    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v2

    .line 203
    :goto_4
    if-eqz v1, :cond_7

    .line 204
    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatConversation;->S()V

    .line 207
    :cond_7
    instance-of v1, p1, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 208
    check-cast p1, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConnSeqNum()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->f(J)V

    goto/16 :goto_2

    .line 163
    :sswitch_0
    const-string v3, "chat_message"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    goto :goto_3

    :sswitch_1
    const-string v3, "conversation_message_response"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    goto :goto_3

    :sswitch_2
    const-string v3, "message_state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x2

    goto :goto_3

    :sswitch_3
    const-string v3, "presence"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x3

    goto :goto_3

    :sswitch_4
    const-string v3, "message_release"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_5
    const-string v3, "snap_state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_6
    const-string v3, "cash_rain"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_7
    const-string v3, "cash_state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x7

    goto :goto_3

    :pswitch_0
    move-object v0, p1

    .line 165
    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    move v0, v1

    .line 167
    goto :goto_4

    :pswitch_1
    move-object v0, p1

    .line 169
    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;

    invoke-virtual {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V

    move v0, v2

    move v1, v2

    .line 173
    goto :goto_4

    :pswitch_2
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    invoke-direct {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/MessageStateMessage;)V

    move v0, v1

    .line 177
    goto/16 :goto_4

    :pswitch_3
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/snapchat/android/model/server/chat/PresenceMessage;

    invoke-virtual {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/PresenceMessage;)V

    move v0, v1

    .line 181
    goto/16 :goto_4

    :pswitch_4
    move-object v0, p1

    .line 183
    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-direct {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V

    move v0, v1

    .line 185
    goto/16 :goto_4

    :pswitch_5
    move-object v0, p1

    .line 187
    check-cast v0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;

    invoke-direct {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/SnapStateMessage;)V

    move v0, v1

    move v1, v2

    .line 191
    goto/16 :goto_4

    :pswitch_6
    move-object v0, p1

    .line 193
    check-cast v0, Lcom/snapchat/android/model/server/cash/CashRainMessage;

    invoke-direct {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/cash/CashRainMessage;)V

    move v0, v1

    .line 195
    goto/16 :goto_4

    :pswitch_7
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/snapchat/android/model/server/cash/CashStateMessage;

    invoke-direct {p0, v4, v0}, Lcom/snapchat/android/chat/ReceivingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/cash/CashStateMessage;)V

    move v0, v2

    move v1, v2

    .line 199
    goto/16 :goto_4

    :cond_8
    move-object v0, v3

    move-object v3, v4

    goto/16 :goto_1

    :cond_9
    move-object v0, v3

    goto/16 :goto_1

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63e76824 -> :sswitch_5
        -0x4c186305 -> :sswitch_3
        -0x486239a7 -> :sswitch_2
        -0x6a52831 -> :sswitch_4
        -0x5139de0 -> :sswitch_0
        0x141919b5 -> :sswitch_1
        0x2d1d9120 -> :sswitch_6
        0x76ab3085 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
