.class public Lcom/snapchat/android/database/table/ConversationTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/snapchat/android/database/table/ConversationTable;


# instance fields
.field private final f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v2

    .line 53
    array-length v3, v2

    .line 54
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ConversationTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 55
    :goto_0
    if-ge v1, v3, :cond_0

    .line 56
    sget-object v4, Lcom/snapchat/android/database/table/ConversationTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ConversationTable;->b:Ljava/util/HashMap;

    .line 61
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 62
    sget-object v4, Lcom/snapchat/android/database/table/ConversationTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/snapchat/android/database/table/ConversationTable;->f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 124
    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/util/Map;Ljava/util/Map;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 33
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;)",
            "Lcom/snapchat/android/model/chat/ChatConversation;"
        }
    .end annotation

    .prologue
    .line 463
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 464
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 465
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 466
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->q:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 467
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->r:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 468
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 469
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->e:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    move v3, v2

    .line 470
    :goto_0
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->f:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    const/4 v2, 0x1

    move v4, v2

    .line 471
    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->g:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    const/4 v2, 0x1

    move v5, v2

    .line 473
    :goto_2
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->h:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    const/4 v2, 0x1

    move v6, v2

    .line 474
    :goto_3
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->i:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 475
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->j:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 476
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->k:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 478
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->l:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 480
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->m:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 482
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->n:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 484
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->o:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 486
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->p:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 489
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 491
    if-nez v2, :cond_0

    .line 492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 495
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v7

    invoke-static {v7}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;)V

    .line 496
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    .line 501
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v7

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v7, v12, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v7

    .line 503
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v32

    if-eqz v32, :cond_10

    .line 504
    :cond_1
    if-nez v7, :cond_d

    .line 505
    new-instance v7, Lcom/snapchat/android/model/chat/ChatConversation;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-direct {v7, v11, v12, v0}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 510
    :goto_4
    invoke-virtual {v7, v14, v15}, Lcom/snapchat/android/model/chat/ChatConversation;->d(J)V

    .line 511
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->e(J)V

    .line 512
    invoke-virtual {v7, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/util/List;)V

    .line 514
    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    .line 515
    invoke-virtual {v7, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->g(Z)V

    .line 516
    invoke-virtual {v7, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Z)V

    .line 517
    invoke-virtual {v7, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->i(Z)V

    .line 518
    invoke-virtual {v7, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->h(Z)V

    .line 519
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v7, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->j(Ljava/lang/String;)V

    .line 520
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v7, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    .line 521
    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->i(J)V

    .line 522
    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->h(J)V

    .line 523
    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->g(J)V

    .line 524
    invoke-virtual {v7, v13}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/Set;)V

    .line 527
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 528
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 529
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 530
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->aq()V

    .line 533
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 534
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 535
    const-string v3, "ConversationTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChatConversation should contain at most 1 chatsForFeedIcon. chatsForFeedIconCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :cond_2
    :goto_7
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->ae()J

    move-result-wide v2

    cmp-long v2, v24, v2

    if-lez v2, :cond_3

    .line 550
    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->k(J)V

    .line 552
    :cond_3
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->ad()J

    move-result-wide v2

    cmp-long v2, v26, v2

    if-lez v2, :cond_4

    .line 553
    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->j(J)V

    .line 555
    :cond_4
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->af()J

    move-result-wide v2

    cmp-long v2, v28, v2

    if-lez v2, :cond_5

    .line 557
    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->l(J)V

    .line 559
    :cond_5
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->ai()J

    move-result-wide v2

    cmp-long v2, v30, v2

    if-lez v2, :cond_6

    .line 561
    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->o(J)V

    .line 563
    :cond_6
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v2

    cmp-long v2, v28, v2

    if-lez v2, :cond_7

    .line 565
    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->m(J)V

    .line 567
    :cond_7
    invoke-virtual {v7}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v2

    cmp-long v2, v30, v2

    if-lez v2, :cond_8

    .line 569
    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->n(J)V

    .line 572
    :cond_8
    return-object v7

    .line 469
    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_0

    .line 470
    :cond_a
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_1

    .line 471
    :cond_b
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_2

    .line 473
    :cond_c
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_3

    .line 508
    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    goto/16 :goto_4

    :cond_e
    move-object v2, v8

    .line 519
    goto/16 :goto_5

    :cond_f
    move-object v2, v9

    .line 520
    goto/16 :goto_6

    .line 542
    :cond_10
    invoke-virtual {v7, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/util/List;)V

    .line 545
    invoke-virtual {v7, v13}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Ljava/util/Set;)V

    .line 546
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    goto :goto_7
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 439
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 441
    const-string v1, "Conversation"

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    :cond_0
    invoke-static {p0, v1, p1, p2}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/util/Map;Ljava/util/Map;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 449
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 453
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_2
    return-object v8

    .line 453
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static varargs a([Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 177
    array-length v5, p0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, p0, v3

    .line 178
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 180
    if-nez v1, :cond_3

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 184
    :goto_2
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 185
    if-eqz v1, :cond_0

    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_0
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 191
    :cond_2
    return-object v4

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/Snap$TargetView;Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    instance-of v0, p3, Lcom/snapchat/android/model/SentSnap;

    if-eqz v0, :cond_1

    move-object v0, p3

    .line 421
    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    check-cast p3, Lcom/snapchat/android/model/SentSnap;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/SentSnap;Lcom/snapchat/android/model/Snap$TargetView;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    instance-of v0, p3, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    move-result-object v0

    move-object v4, p3

    check-cast v4, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/Snap$TargetView;)V

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ConversationTable;
    .locals 3

    .prologue
    .line 127
    const-class v1, Lcom/snapchat/android/database/table/ConversationTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable;->e:Lcom/snapchat/android/database/table/ConversationTable;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/snapchat/android/database/table/ConversationTable;

    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/snapchat/android/database/table/ConversationTable;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable;->e:Lcom/snapchat/android/database/table/ConversationTable;

    .line 130
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable;->e:Lcom/snapchat/android/database/table/ConversationTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ConversationTable;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "Conversation"

    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;Lcom/snapchat/android/model/User;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    if-nez p3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    .line 319
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 320
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->e:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->f:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->g:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ar()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->h:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->al()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->i:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->V()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->j:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->k:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ac()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->l:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ab()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->m:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ae()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->n:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ad()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->o:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->af()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->p:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->ai()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->q:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->r:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->Y()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string v0, "ConversationTable"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save conversation recipient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const-string v0, "Conversation"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 356
    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v6

    .line 357
    if-nez v6, :cond_2

    .line 358
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 360
    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v6

    .line 362
    :cond_2
    if-nez v6, :cond_9

    const/4 v0, 0x0

    move-object v8, v0

    .line 363
    :goto_5
    const/4 v0, 0x0

    .line 366
    invoke-static {p1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;)V

    .line 367
    instance-of v1, v6, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_3

    move-object v0, v6

    .line 368
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {p1, v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 369
    const/4 v0, 0x1

    .line 373
    :cond_3
    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 376
    :goto_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v0

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 377
    invoke-interface {v7}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v4, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    .line 379
    :goto_8
    instance-of v0, v7, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_c

    instance-of v0, v7, Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v0, :cond_c

    move-object v0, v7

    .line 392
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v4, v1}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/Chat;Lcom/snapchat/android/model/Snap$TargetView;Z)V

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable;->f:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    invoke-virtual {v0, p1, v7}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 400
    :cond_4
    :goto_9
    invoke-interface {v7}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 401
    const/4 v0, 0x1

    :goto_a
    move v9, v0

    .line 403
    goto :goto_7

    .line 324
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 325
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 326
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 328
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 362
    :cond_9
    invoke-interface {v6}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    .line 373
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_6

    .line 377
    :cond_b
    sget-object v4, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    goto :goto_8

    .line 394
    :cond_c
    instance-of v0, v7, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_4

    move-object v3, v7

    .line 397
    check-cast v3, Lcom/snapchat/android/model/Snap;

    move-object v0, p1

    move-object v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/Snap$TargetView;Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;)V

    goto :goto_9

    .line 406
    :cond_d
    if-eqz v6, :cond_0

    if-nez v9, :cond_0

    .line 407
    instance-of v0, v6, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_e

    move-object v3, v6

    .line 408
    check-cast v3, Lcom/snapchat/android/model/Snap;

    sget-object v4, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    move-object v0, p1

    move-object v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/Snap$TargetView;Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;)V

    goto/16 :goto_0

    .line 410
    :cond_e
    instance-of v0, v6, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_0

    .line 411
    check-cast v6, Lcom/snapchat/android/model/chat/Chat;

    sget-object v0, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    const/4 v1, 0x0

    invoke-static {p1, p2, v6, v0, v1}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/Chat;Lcom/snapchat/android/model/Snap$TargetView;Z)V

    goto/16 :goto_0

    :cond_f
    move v0, v9

    goto :goto_a
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 197
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 199
    const-string v0, "ConversationTable"

    const-string v2, "populateUserObjectFromTable - beginTransaction"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    :try_start_0
    sget-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v1, v0}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 204
    sget-object v2, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 208
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-virtual {v3, v1, v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 213
    sget-object v4, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v1, v4}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 217
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    invoke-static {v5}, Lcom/snapchat/android/database/table/ConversationTable;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 221
    sget-object v2, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 225
    sget-object v4, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v1, v4}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 230
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-virtual {v5, v1, v6}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 235
    sget-object v6, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v1, v6}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v6

    .line 239
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/util/Map;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v5, v7, v2

    const/4 v2, 0x2

    aput-object v6, v7, v2

    const/4 v2, 0x3

    aput-object v4, v7, v2

    invoke-static {v7}, Lcom/snapchat/android/database/table/ConversationTable;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 243
    invoke-static {v1, v0, v2}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 247
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 252
    instance-of v5, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v5, :cond_1

    .line 255
    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 257
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->j()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/ReceivedSnap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    const-string v1, "ConversationTable"

    const-string v2, "populateUserObjectFromTable - endTransaction"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 262
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 265
    const-string v0, "ConversationTable"

    const-string v1, "populateUserObjectFromTable - endTransaction"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v2

    .line 142
    array-length v3, v2

    .line 143
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 144
    aget-object v4, v2, v0

    .line 145
    if-lez v0, :cond_0

    .line 146
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 281
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v1

    .line 282
    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 283
    const-string v0, "ConversationTable"

    const-string v3, "safeUpdate - beginTransaction"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 287
    :try_start_0
    const-string v0, "ConversationTable"

    const-string v3, "Delete the tables for conversations, chats and snaps for safeUpdate"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    const-string v0, "Conversation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    const-string v0, "Chat"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    const-string v0, "ReceivedSnaps"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 291
    const-string v0, "SentSnaps"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    invoke-static {v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;)V

    .line 294
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 295
    new-instance v4, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;

    invoke-direct {v4}, Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;-><init>()V

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 298
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v5, p1

    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/util/crypto/CbcSlightlySecurePreferences;Lcom/snapchat/android/model/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 306
    const-string v1, "ConversationTable"

    const-string v2, "safeUpdate - endTransaction"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 303
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 306
    const-string v0, "ConversationTable"

    const-string v1, "safeUpdate - endTransaction"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v0

    return-object v0
.end method
