.class public Lcom/snapchat/android/chat/ChatConversationUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/chat/SendingMailman;

.field private final b:Lcom/snapchat/android/chat/ChatGapDetector;

.field private final c:Lcom/snapchat/android/chat/FeedIconManager;

.field private final d:Lcom/snapchat/android/model/SnapWomb;

.field private final e:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/ChatGapDetector;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V
    .locals 0
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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->a:Lcom/snapchat/android/chat/SendingMailman;

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    .line 65
    iput-object p3, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->c:Lcom/snapchat/android/chat/FeedIconManager;

    .line 66
    iput-object p4, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->d:Lcom/snapchat/android/model/SnapWomb;

    .line 67
    iput-object p5, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->e:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/chat/ChatGapDetector;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;Z)V
    .locals 22
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
    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v10

    .line 183
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 184
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 185
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 186
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 187
    const/4 v7, 0x0

    .line 189
    if-eqz p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v6, v2

    .line 190
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v15

    .line 191
    monitor-enter v15

    .line 192
    :try_start_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 193
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_2

    .line 194
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/CashTransaction;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v12, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 403
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 189
    :cond_0
    const/4 v2, 0x0

    move v6, v2

    goto :goto_0

    .line 199
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :cond_2
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->V()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 203
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v18

    sub-long v16, v16, v18

    const-wide/16 v18, 0x4e20

    cmp-long v3, v16, v18

    if-lez v3, :cond_3

    .line 205
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    sget-object v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v3, v5}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 206
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_3
    instance-of v3, v2, Lcom/snapchat/android/model/SentSnap;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/SentSnap;->y()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/SentSnap;->h()V

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/chat/ChatConversationUpdater;->d:Lcom/snapchat/android/model/SnapWomb;

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/SentSnap;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/snapchat/android/model/SnapWomb;->c(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 212
    :cond_4
    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 214
    :cond_5
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 215
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 217
    :cond_6
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 222
    :cond_7
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 223
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->pending_received_snaps:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 224
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->pending_received_snaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/data/gson/GenericSnap;

    .line 225
    invoke-static {v2}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/data/gson/GenericSnap;)Lcom/snapchat/android/model/Snap;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/ReceivedSnap;

    .line 228
    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 235
    :cond_9
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    if-eqz v2, :cond_d

    .line 236
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->getChatMessagesFromServerChatMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v8, v2

    .line 242
    :goto_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 244
    :cond_a
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 245
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 246
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v13, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 248
    instance-of v3, v2, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v3, :cond_b

    .line 249
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 251
    :cond_b
    instance-of v3, v2, Lcom/snapchat/android/model/chat/IIterableChatFeedItem;

    if-eqz v3, :cond_c

    .line 252
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/IIterableChatFeedItem;

    move-object v3, v0

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/IIterableChatFeedItem;->A()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    .line 255
    :cond_c
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 256
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v3, :cond_e

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    move-object v3, v0

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->k()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 259
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 239
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    goto :goto_3

    .line 261
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 263
    :cond_f
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 264
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_11

    .line 265
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/Chat;

    .line 266
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/chat/Chat;->a(Lcom/snapchat/android/model/chat/Chat;)V

    .line 267
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    instance-of v4, v3, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v4, :cond_10

    .line 269
    check-cast v3, Lcom/snapchat/android/model/chat/ChatMedia;

    .line 270
    check-cast v2, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 272
    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 273
    :cond_11
    instance-of v3, v2, Lcom/snapchat/android/model/SentSnap;

    if-eqz v3, :cond_14

    .line 274
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 275
    instance-of v4, v3, Lcom/snapchat/android/model/SentSnap;

    if-eqz v4, :cond_13

    .line 276
    move-object v0, v3

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    move-object v4, v0

    .line 277
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    move-object v5, v0

    .line 279
    invoke-virtual {v4, v5}, Lcom/snapchat/android/model/SentSnap;->a(Lcom/snapchat/android/model/SentSnap;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 281
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 285
    :cond_12
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 288
    :cond_13
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 290
    :cond_14
    instance-of v3, v2, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v3, :cond_15

    .line 293
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 295
    :cond_15
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_a

    .line 298
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 302
    :cond_16
    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_a

    .line 307
    check-cast v2, Lcom/snapchat/android/model/chat/Chat;

    .line 308
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->k()Z

    move-result v3

    if-nez v3, :cond_a

    .line 309
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ae()J

    move-result-wide v20

    cmp-long v3, v4, v20

    if-gtz v3, :cond_17

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v20

    cmp-long v3, v4, v20

    if-lez v3, :cond_18

    :cond_17
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ad()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a

    .line 314
    :cond_18
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 321
    :cond_19
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v12, v8, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/HashMap;Ljava/util/List;Z)V

    .line 322
    if-nez v6, :cond_1c

    .line 323
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    :goto_5
    invoke-interface {v8, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/Collection;)V

    .line 331
    invoke-interface {v8, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 335
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_state:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;

    if-eqz v2, :cond_1a

    .line 336
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_state:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/chat/ChatConversationUpdater;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;)V

    .line 343
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v6

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v10

    .line 346
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_chat_actions:Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_chat_actions:Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;

    iget-wide v2, v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_read_timestamp:J

    move-wide v4, v2

    .line 348
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v7

    .line 349
    :cond_1b
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 350
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 351
    instance-of v7, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v7, :cond_21

    .line 352
    check-cast v2, Lcom/snapchat/android/model/chat/Chat;

    .line 353
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->W()Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->V()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 355
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v16

    cmp-long v7, v12, v16

    if-gtz v7, :cond_20

    .line 356
    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    .line 357
    if-nez v6, :cond_20

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->k()Z

    move-result v2

    if-nez v2, :cond_20

    .line 358
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    move v2, v3

    :goto_8
    move v3, v2

    .line 378
    goto :goto_7

    .line 326
    :cond_1c
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 346
    :cond_1d
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_interaction_ts:J

    move-wide v4, v2

    goto :goto_6

    .line 361
    :cond_1e
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 363
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v16

    cmp-long v7, v12, v16

    if-gtz v7, :cond_1f

    .line 364
    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/model/chat/Chat;->e(J)V

    .line 365
    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    .line 366
    if-nez v6, :cond_20

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->k()Z

    move-result v2

    if-nez v2, :cond_20

    .line 367
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    move v2, v3

    goto :goto_8

    .line 369
    :cond_1f
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->at()Z

    move-result v7

    if-nez v7, :cond_20

    .line 370
    const/4 v3, 0x1

    .line 371
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/Chat;->x()Z

    move-result v7

    if-nez v7, :cond_20

    if-eqz v10, :cond_20

    .line 374
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aO()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/snapchat/android/model/chat/Chat;->c(I)V

    :cond_20
    move v2, v3

    goto :goto_8

    .line 378
    :cond_21
    instance-of v7, v2, Lcom/snapchat/android/model/Snap;

    if-eqz v7, :cond_24

    .line 379
    check-cast v2, Lcom/snapchat/android/model/Snap;

    .line 380
    instance-of v7, v2, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v7, :cond_22

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v16

    cmp-long v7, v12, v16

    if-lez v7, :cond_23

    :cond_22
    instance-of v7, v2, Lcom/snapchat/android/model/SentSnap;

    if-eqz v7, :cond_1b

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v16

    cmp-long v7, v12, v16

    if-gtz v7, :cond_1b

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->W()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 385
    :cond_23
    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->as()V

    .line 386
    if-nez v6, :cond_1b

    .line 387
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_7

    .line 390
    :cond_24
    instance-of v7, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v7, :cond_1b

    .line 391
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 392
    if-nez v6, :cond_1b

    .line 393
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->k()Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->at()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 394
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_7

    .line 395
    :cond_25
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 396
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 402
    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/List;)V

    .line 403
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Z)V

    .line 406
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 574
    if-eqz p2, :cond_1

    .line 575
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "ChatConversationUpdater"

    const-string v1, "CHAT-LOG: OLD myLastSeqNum > NEW myLastSeqNum and now on HTTP"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/snapchat/android/chat/ChatConversationUpdater$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/chat/ChatConversationUpdater$2;-><init>(Lcom/snapchat/android/chat/ChatConversationUpdater;Lcom/snapchat/android/model/chat/ChatConversation;)V

    const-wide/16 v2, 0x157c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    :goto_0
    return-void

    .line 591
    :cond_0
    const-string v0, "ChatConversationUpdater"

    const-string v1, "CHAT-LOG: OLD myLastSeqNum > NEW myLastSeqNum and now on TCP"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V

    .line 594
    invoke-virtual {p1, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(I)V

    .line 595
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->a:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    goto :goto_0

    .line 598
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->e:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;)V
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
    const-wide/16 v2, 0x0

    .line 415
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v6

    .line 418
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v8

    .line 419
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->Y()J

    move-result-wide v10

    .line 420
    iget-object v7, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;->user_sequences:Ljava/util/Map;

    .line 421
    if-eqz v7, :cond_2

    .line 426
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 428
    :goto_0
    cmp-long v10, v0, v10

    if-ltz v10, :cond_9

    .line 429
    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->e(J)V

    .line 430
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->J()V

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/chat/ChatGapDetector;->d(Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_1
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 451
    :goto_2
    cmp-long v2, v0, v8

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a()Lcom/snapchat/android/chat/ChatConnectionMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 452
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->d(J)V

    .line 456
    :cond_2
    iget-object v1, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;->user_chat_releases:Ljava/util/Map;

    .line 457
    if-eqz v1, :cond_5

    .line 458
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 459
    if-eqz v0, :cond_4

    .line 460
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 463
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-lez v0, :cond_3

    .line 464
    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->h(J)V

    .line 466
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aa()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 467
    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->h(J)V

    .line 471
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 472
    if-eqz v0, :cond_5

    .line 473
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 474
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 476
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 477
    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->i(J)V

    .line 483
    :cond_5
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;->user_snap_releases:Ljava/util/Map;

    .line 484
    if-eqz v0, :cond_7

    .line 485
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 486
    if-eqz v0, :cond_7

    .line 487
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 488
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v2

    .line 490
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_6

    .line 491
    invoke-virtual {p1, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->m(J)V

    .line 494
    :cond_6
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 495
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 497
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_7

    .line 499
    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->n(J)V

    .line 504
    :cond_7
    return-void

    :cond_8
    move-wide v0, v2

    .line 426
    goto/16 :goto_0

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/snapchat/android/chat/ChatConversationUpdater$1;

    invoke-direct {v1, p0, v4}, Lcom/snapchat/android/chat/ChatConversationUpdater$1;-><init>(Lcom/snapchat/android/chat/ChatConversationUpdater;Ljava/lang/String;)V

    const-wide/16 v10, 0x1f40

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    move-wide v0, v2

    .line 449
    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/chat/SendingMailman;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->a:Lcom/snapchat/android/chat/SendingMailman;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;)Lcom/snapchat/android/model/chat/Chat;
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 514
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_writer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 515
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v7

    .line 516
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v6

    .line 521
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_writer:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object v2, v6

    move-object v1, v7

    .line 531
    :goto_0
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_write_type:Ljava/lang/String;

    iget-wide v4, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_write_timestamp:J

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;J)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    .line 536
    iget-wide v4, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_read_timestamp:J

    iget-wide v8, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_write_timestamp:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_2

    .line 539
    iget-wide v2, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_read_timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    .line 557
    :cond_0
    :goto_1
    return-object v0

    .line 528
    :cond_1
    sget-object v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-object v2, v7

    move-object v1, v6

    goto :goto_0

    .line 547
    :cond_2
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-nez v1, :cond_3

    .line 549
    iget-wide v2, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_write_timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    goto :goto_1

    .line 550
    :cond_3
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->Y()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 552
    iget-wide v2, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;->last_write_timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/Chat;->a(J)V

    goto :goto_1

    .line 557
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;ZZ)V
    .locals 10
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_messages:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;

    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ChatConversationMessages;->messaging_auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 88
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;Z)V

    .line 91
    iget-wide v4, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_interaction_ts:J

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    .line 93
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    .line 100
    :cond_1
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_snap:Lcom/snapchat/data/gson/GenericSnap;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_snap:Lcom/snapchat/data/gson/GenericSnap;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/data/gson/GenericSnap;)Lcom/snapchat/android/model/Snap;

    move-result-object v4

    .line 102
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->au()Lcom/snapchat/android/model/Snap;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    .line 108
    :cond_2
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/Snap;)V

    .line 120
    :cond_3
    :goto_0
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_cash_transaction:Lcom/snapchat/android/model/server/ServerCashTransaction;

    if-eqz v0, :cond_5

    .line 121
    new-instance v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v4, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_cash_transaction:Lcom/snapchat/android/model/server/ServerCashTransaction;

    invoke-static {v4}, Lcom/snapchat/android/model/CashTransaction$Builder;->a(Lcom/snapchat/android/model/server/ServerCashTransaction;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 123
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->av()Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_c

    .line 126
    :cond_4
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 134
    :cond_5
    :goto_1
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_chat_actions:Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$LastChatActions;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->at()Lcom/snapchat/android/model/chat/Chat;

    move-result-object v4

    .line 138
    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_d

    .line 139
    :cond_6
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/Chat;)V

    .line 147
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_8

    .line 149
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    .line 151
    :cond_8
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->iter_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/chat/ChatGapDetector;->e(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->am()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p4, :cond_e

    move v0, v1

    :goto_3
    invoke-direct {v5, v3, v0}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 158
    if-eqz p3, :cond_9

    .line 159
    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILcom/snapchat/android/model/ReceivedSnap;Z)I

    .line 163
    :cond_9
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->conversation_state:Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;)Z

    move-result v0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->a:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/chat/SendingMailman;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater;->c:Lcom/snapchat/android/chat/FeedIconManager;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 169
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 170
    return-void

    .line 109
    :cond_a
    invoke-virtual {v4}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 110
    instance-of v5, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v5, :cond_b

    instance-of v5, v4, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v5, :cond_b

    .line 111
    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/Snap;)V

    goto/16 :goto_0

    .line 115
    :cond_b
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/Snap;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 128
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->at()Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    invoke-virtual {p1, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto/16 :goto_1

    .line 140
    :cond_d
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/Chat;->ae()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    .line 141
    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v4

    if-nez v4, :cond_7

    .line 142
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/Chat;)V

    goto/16 :goto_2

    :cond_e
    move v0, v2

    .line 155
    goto/16 :goto_3
.end method

.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;)Z
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 612
    if-eqz p2, :cond_2

    .line 613
    iget-object v0, p2, Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;->user_sequences:Ljava/util/Map;

    .line 614
    if-eqz v0, :cond_2

    .line 615
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v0

    .line 618
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 621
    :goto_1
    return v0

    .line 616
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 618
    goto :goto_1

    :cond_2
    move v0, v2

    .line 621
    goto :goto_1
.end method
