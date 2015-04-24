.class public Lcom/snapchat/android/chat/FeedIconManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/chat/FeedIconManager;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/chat/FeedIconManager;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/snapchat/android/chat/FeedIconManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/chat/FeedIconManager;->a:Lcom/snapchat/android/chat/FeedIconManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/snapchat/android/chat/FeedIconManager;

    invoke-direct {v0}, Lcom/snapchat/android/chat/FeedIconManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/chat/FeedIconManager;->a:Lcom/snapchat/android/chat/FeedIconManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/snapchat/android/chat/FeedIconManager;->a:Lcom/snapchat/android/chat/FeedIconManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 280
    instance-of v0, p1, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_0

    .line 281
    const-class v0, Lcom/snapchat/android/model/Snap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 282
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_1

    .line 283
    const-class v0, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_2

    .line 285
    const-class v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V
    .locals 2
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
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/FeedIconManager;->d(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/util/List;)V

    .line 201
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 204
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
    .locals 20
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ax()Ljava/util/List;

    move-result-object v9

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/util/List;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v7, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v4, 0x0

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->au()Lcom/snapchat/android/model/Snap;

    move-result-object v10

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->at()Lcom/snapchat/android/model/chat/Chat;

    move-result-object v11

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->av()Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v12

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v13

    .line 75
    monitor-enter v13

    .line 80
    if-eqz v9, :cond_3

    .line 81
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 82
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 83
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->s()V

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 88
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/snapchat/android/chat/FeedIconManager;->d(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 90
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 91
    instance-of v3, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v3, :cond_5

    .line 92
    instance-of v3, v2, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v3, :cond_1c

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->G()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 93
    const/4 v7, 0x1

    .line 94
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->an()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 95
    const/4 v5, 0x1

    move v3, v5

    move v5, v7

    .line 99
    :goto_3
    if-eqz v10, :cond_4

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v16

    invoke-virtual {v10}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v18

    cmp-long v7, v16, v18

    if-ltz v7, :cond_1b

    .line 100
    :cond_4
    check-cast v2, Lcom/snapchat/android/model/Snap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/Snap;)V

    move v2, v4

    move v4, v6

    :goto_4
    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v3

    .line 122
    goto :goto_2

    .line 102
    :cond_5
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_8

    .line 103
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatText;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v3, :cond_1a

    :cond_6
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->at()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 106
    const/4 v6, 0x1

    move v3, v6

    .line 109
    :goto_5
    if-eqz v11, :cond_7

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v16

    invoke-virtual {v11}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v18

    cmp-long v6, v16, v18

    if-ltz v6, :cond_19

    .line 110
    :cond_7
    check-cast v2, Lcom/snapchat/android/model/chat/Chat;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/Chat;)V

    move v2, v4

    move v4, v3

    move v3, v5

    move v5, v7

    goto :goto_4

    .line 112
    :cond_8
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_18

    .line 113
    invoke-static {v2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v3

    if-nez v3, :cond_17

    .line 115
    const/4 v4, 0x1

    move v3, v4

    .line 118
    :goto_6
    if-eqz v12, :cond_9

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v16

    invoke-virtual {v12}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v18

    cmp-long v4, v16, v18

    if-ltz v4, :cond_a

    .line 119
    :cond_9
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    :cond_a
    move v2, v3

    move v4, v6

    move v3, v5

    move v5, v7

    goto :goto_4

    .line 123
    :cond_b
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-eqz v11, :cond_c

    .line 127
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_c
    if-eqz v10, :cond_d

    .line 130
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_d
    if-eqz v12, :cond_e

    .line 133
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/snapchat/android/chat/FeedIconManager;->d(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 137
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 138
    const-string v2, "FeedIconManager"

    const-string v3, "FEEDICON-LOG: We couldn\'t find feed icons from existing content for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v2, v3, v11}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :cond_f
    :goto_7
    const/4 v2, 0x0

    .line 160
    if-eqz v9, :cond_10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-eq v3, v8, :cond_16

    .line 161
    :cond_10
    const/4 v2, 0x1

    move v3, v2

    .line 163
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/util/List;)V

    .line 165
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 166
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v8

    .line 168
    if-eqz v8, :cond_11

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 169
    :cond_11
    const/4 v3, 0x1

    .line 170
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 176
    :cond_12
    :goto_9
    if-eqz v3, :cond_13

    .line 177
    const-string v2, "FeedIconManager"

    const-string v3, "FEEDICON-LOG: Feed icons changed for %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ax()Ljava/util/List;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v3, v8}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Z)V

    .line 182
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Z)V

    .line 183
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->i(Z)V

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->h(Z)V

    .line 186
    if-eqz p2, :cond_0

    .line 187
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;

    invoke-direct {v3}, Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 142
    :cond_14
    new-instance v2, Lcom/snapchat/android/chat/FeedIconManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/chat/FeedIconManager$1;-><init>(Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_7

    .line 173
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_9

    :cond_16
    move v3, v2

    goto :goto_8

    :cond_17
    move v3, v4

    goto/16 :goto_6

    :cond_18
    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_4

    :cond_19
    move v2, v4

    move v4, v3

    move v3, v5

    move v5, v7

    goto/16 :goto_4

    :cond_1a
    move v3, v6

    goto/16 :goto_5

    :cond_1b
    move v2, v4

    move v4, v6

    goto/16 :goto_4

    :cond_1c
    move v3, v5

    move v5, v7

    goto/16 :goto_3
.end method

.method protected b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 10
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
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 212
    invoke-direct {p0, v0}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v0, p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v6

    .line 215
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1, p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 216
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected c(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 5
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
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 229
    const/4 v0, -0x1

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 232
    invoke-interface {v0, p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v2

    .line 233
    if-le v2, v1, :cond_1

    .line 235
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v1, v2

    .line 238
    :cond_1
    if-ne v2, v1, :cond_0

    .line 239
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    return-object v3
.end method

.method protected d(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 4
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
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :goto_0
    return-object v0

    .line 253
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/chat/FeedIconManager;->c(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 254
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0, p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    .line 256
    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->f()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 258
    :cond_1
    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 259
    invoke-virtual {p0, p1, v1}, Lcom/snapchat/android/chat/FeedIconManager;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/snapchat/android/chat/FeedIconManager;->e(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected e(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)Ljava/util/List;
    .locals 9
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
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 270
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 271
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 272
    invoke-interface {v0, p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v4

    invoke-interface {v1, p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 275
    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snapchat/android/model/chat/ChatFeedItem;

    aput-object v1, v2, v8

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
