.class public Lcom/snapchat/android/chat/ChatMessageReleaser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/cash/SendingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Lcom/snapchat/android/chat/SendingMailman;

.field private final c:Lcom/snapchat/android/chat/FeedIconManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/FeedIconManager;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/FeedIconManager;)V
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatMessageReleaser;->b:Lcom/snapchat/android/chat/SendingMailman;

    .line 52
    iput-object p2, p0, Lcom/snapchat/android/chat/ChatMessageReleaser;->c:Lcom/snapchat/android/chat/FeedIconManager;

    .line 53
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;
    .locals 3
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
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v2
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aa()J

    move-result-wide v0

    .line 100
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v2

    .line 101
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v4

    .line 102
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v6

    .line 103
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v8

    .line 105
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v0

    .line 111
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/snapchat/android/chat/ChatMessageReleaser;->b:Lcom/snapchat/android/chat/SendingMailman;

    sget-object v3, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DISPLAY:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;J)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 247
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v6

    .line 248
    monitor-enter v6

    .line 249
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 250
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_0

    .line 251
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    .line 253
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v8

    cmp-long v2, v8, p2

    if-gtz v2, :cond_0

    .line 255
    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V
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
    .line 362
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMessageReleaser;->a:Lcom/snapchat/android/cash/SendingCashManager;

    invoke-static {p2}, Lcom/snapchat/android/util/ListUtils;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/cash/SendingCashManager;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V
    .locals 24
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v4

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v6

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v8

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v10

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ad()J

    move-result-wide v12

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ae()J

    move-result-wide v14

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->af()J

    move-result-wide v16

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ai()J

    move-result-wide v18

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;Ljava/util/List;J)V

    .line 75
    sget-object v20, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    cmp-long v12, v6, v14

    if-nez v12, :cond_0

    cmp-long v12, v8, v16

    if-nez v12, :cond_0

    cmp-long v12, v10, v18

    if-nez v12, :cond_0

    .line 80
    const-string v4, "ChatMessageReleaser"

    const-string v5, "CHAT-LOG: ChatMessageReleaser not sending DELETE message because there\'s no change"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v4}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v4

    .line 86
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v6}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v5

    .line 89
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/chat/ChatMessageReleaser;->b:Lcom/snapchat/android/chat/SendingMailman;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v4, v5, v1}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/Map;Ljava/util/Map;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V
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
    .line 270
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getKnownChatSequenceNumbers()Ljava/util/Map;

    move-result-object v0

    .line 271
    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v2

    .line 275
    monitor-enter v2

    .line 276
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 277
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 278
    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->i(J)V

    .line 280
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 281
    instance-of v4, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v4, :cond_3

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 283
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 284
    invoke-virtual {p2}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 288
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMessageReleaser;->c:Lcom/snapchat/android/chat/FeedIconManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 289
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 24
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v17

    .line 145
    const-wide/16 v6, 0x0

    .line 146
    const-wide/16 v4, 0x0

    .line 147
    const-wide/16 v10, 0x0

    .line 148
    const-wide/16 v14, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v19

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 155
    const/16 v16, 0x0

    .line 157
    monitor-enter v17

    .line 158
    :try_start_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 159
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_1

    .line 160
    check-cast v2, Lcom/snapchat/android/model/chat/Chat;

    .line 161
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 162
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g(Ljava/lang/String;)V

    .line 163
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/model/chat/Chat;->e(J)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/Chat;->c(I)V

    .line 165
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    .line 166
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v2

    .line 167
    cmp-long v9, v2, v4

    if-lez v9, :cond_10

    move-wide v4, v2

    :goto_1
    move-wide v6, v4

    move-wide v4, v2

    .line 172
    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/snapchat/android/model/SentSnap;

    if-eqz v3, :cond_3

    if-nez v8, :cond_3

    .line 173
    check-cast v2, Lcom/snapchat/android/model/SentSnap;

    .line 174
    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->p()Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    const/4 v2, 0x1

    move-wide v8, v10

    :goto_2
    move-wide v10, v8

    move v8, v2

    .line 183
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->as()V

    .line 178
    invoke-virtual {v2}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v2

    .line 179
    cmp-long v9, v2, v10

    if-lez v9, :cond_f

    move/from16 v23, v8

    move-wide v8, v2

    move/from16 v2, v23

    .line 180
    goto :goto_2

    .line 183
    :cond_3
    instance-of v3, v2, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v3, :cond_6

    if-nez v12, :cond_6

    .line 184
    check-cast v2, Lcom/snapchat/android/model/ReceivedSnap;

    .line 187
    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->j()Z

    move-result v3

    if-nez v3, :cond_5

    .line 188
    :cond_4
    const/4 v2, 0x1

    move-wide v12, v14

    :goto_3
    move-wide v14, v12

    move v12, v2

    .line 196
    goto/16 :goto_0

    .line 190
    :cond_5
    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->as()V

    .line 191
    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v2

    .line 192
    cmp-long v9, v2, v14

    if-lez v9, :cond_e

    move/from16 v23, v12

    move-wide v12, v2

    move/from16 v2, v23

    .line 193
    goto :goto_3

    .line 196
    :cond_6
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_0

    .line 197
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 198
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 202
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 234
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 207
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Z)Z

    goto/16 :goto_0

    .line 214
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aa()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-lez v2, :cond_9

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->g(J)V

    .line 218
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_d

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->h(J)V

    .line 220
    const/4 v2, 0x1

    .line 222
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v4

    cmp-long v3, v10, v4

    if-lez v3, :cond_a

    .line 223
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Lcom/snapchat/android/model/chat/ChatConversation;->m(J)V

    .line 224
    const/4 v2, 0x1

    .line 226
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v4

    cmp-long v3, v14, v4

    if-lez v3, :cond_b

    .line 227
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/snapchat/android/model/chat/ChatConversation;->n(J)V

    .line 228
    const/4 v2, 0x1

    .line 231
    :cond_b
    if-eqz v2, :cond_c

    .line 232
    sget-object v2, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->RELEASE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    .line 234
    :cond_c
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/chat/ChatMessageReleaser;->a:Lcom/snapchat/android/cash/SendingCashManager;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/cash/SendingCashManager;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 237
    return-void

    :cond_d
    move/from16 v2, v16

    goto :goto_4

    :cond_e
    move v2, v12

    move-wide v12, v14

    goto/16 :goto_3

    :cond_f
    move v2, v8

    move-wide v8, v10

    goto/16 :goto_2

    :cond_10
    move-wide v2, v4

    move-wide v4, v6

    goto/16 :goto_1
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;J)Z
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v4

    .line 302
    monitor-enter v4

    .line 303
    const-wide/16 v2, 0x0

    .line 304
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 305
    instance-of v1, v0, Lcom/snapchat/android/model/SentSnap;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v6

    cmp-long v1, v6, p2

    if-gtz v1, :cond_3

    .line 306
    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    .line 307
    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v0

    .line 316
    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 317
    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->m(J)V

    .line 318
    const/4 v0, 0x1

    monitor-exit v4

    .line 320
    :goto_1
    return v0

    .line 310
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->as()V

    .line 311
    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v0

    :goto_2
    move-wide v2, v0

    .line 314
    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    monitor-exit v4

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 13
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 424
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v8

    .line 425
    const-wide/16 v4, 0x0

    .line 426
    monitor-enter v8

    .line 427
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 428
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_2

    .line 429
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    .line 430
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v10

    .line 432
    invoke-virtual {v3, v6, v7}, Lcom/snapchat/android/model/chat/Chat;->f(J)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    invoke-virtual {v3, v6, v7}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    .line 435
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1
    move-wide v4, v2

    .line 438
    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v2

    .line 441
    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 442
    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->h(J)V

    .line 443
    const/4 v2, 0x1

    monitor-exit v8

    .line 445
    :goto_2
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit v8

    goto :goto_2

    .line 446
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    move-wide v2, v4

    goto :goto_1
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;J)Z
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v4

    .line 333
    monitor-enter v4

    .line 334
    const-wide/16 v2, 0x0

    .line 335
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 336
    instance-of v1, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v6

    cmp-long v1, v6, p2

    if-gtz v1, :cond_3

    .line 337
    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 338
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v0

    .line 347
    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 348
    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->n(J)V

    .line 349
    const/4 v0, 0x1

    monitor-exit v4

    .line 351
    :goto_1
    return v0

    .line 341
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->as()V

    .line 342
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v0

    :goto_2
    move-wide v2, v0

    .line 345
    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x0

    monitor-exit v4

    goto :goto_1

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method

.method public d(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 16
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 453
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v7

    .line 457
    monitor-enter v7

    .line 458
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v8

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v10

    .line 460
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 461
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_0

    .line 462
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    .line 466
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->k()Z

    move-result v13

    if-nez v13, :cond_0

    .line 470
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v14

    cmp-long v2, v14, v8

    if-gtz v2, :cond_0

    .line 473
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 477
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v14

    cmp-long v2, v14, v10

    if-gtz v2, :cond_0

    .line 478
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Ljava/util/List;)V

    .line 485
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 486
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 487
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v5

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 491
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/util/Set;)V

    .line 492
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    return-void
.end method

.method public d(Lcom/snapchat/android/model/chat/ChatConversation;J)Z
    .locals 16
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aa()J

    move-result-wide v6

    .line 386
    cmp-long v2, p2, v6

    if-gtz v2, :cond_0

    .line 387
    const/4 v2, 0x0

    .line 412
    :goto_0
    return v2

    .line 390
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v10

    .line 392
    const-wide/16 v4, 0x0

    .line 393
    monitor-enter v10

    .line 394
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 395
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_4

    .line 396
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    .line 397
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v12

    .line 399
    cmp-long v14, v12, p2

    if-gtz v14, :cond_4

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 400
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->x()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    invoke-virtual {v3, v8, v9}, Lcom/snapchat/android/model/chat/Chat;->e(J)V

    .line 403
    :cond_1
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    .line 406
    goto :goto_1

    .line 408
    :cond_2
    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 409
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->g(J)V

    .line 410
    const/4 v2, 0x1

    monitor-exit v10

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 412
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move-wide v2, v4

    goto :goto_2
.end method
