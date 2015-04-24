.class public Lcom/snapchat/android/model/chat/ChatConversationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChatConversationManager"

.field private static sInstance:Lcom/snapchat/android/model/chat/ChatConversationManager;


# instance fields
.field private final mChatMessageReleaser:Lcom/snapchat/android/chat/ChatMessageReleaser;

.field private final mConversationUpdater:Lcom/snapchat/android/chat/ChatConversationUpdater;

.field private final mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field

.field private final mConversationsForListView:Lcom/snapchat/android/util/ListViewAdapterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private mIterToken:Ljava/lang/String;

.field private final mSendingMailman:Lcom/snapchat/android/chat/SendingMailman;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/chat/ChatConversationUpdater;Lcom/snapchat/android/chat/ChatMessageReleaser;Lcom/snapchat/android/chat/SendingMailman;)V
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

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-direct {v0}, Lcom/snapchat/android/util/ListViewAdapterList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversationsForListView:Lcom/snapchat/android/util/ListViewAdapterList;

    .line 107
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversationUpdater:Lcom/snapchat/android/chat/ChatConversationUpdater;

    .line 109
    iput-object p2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mChatMessageReleaser:Lcom/snapchat/android/chat/ChatMessageReleaser;

    .line 110
    iput-object p3, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mSendingMailman:Lcom/snapchat/android/chat/SendingMailman;

    .line 111
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->af:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mIterToken:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
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
    .line 306
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-nez p3, :cond_0

    .line 309
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mSendingMailman:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/chat/SendingMailman;->f(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 311
    :cond_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 312
    return-object v0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/model/chat/ChatConversationManager;
    .locals 7

    .prologue
    .line 90
    const-class v6, Lcom/snapchat/android/model/chat/ChatConversationManager;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversationManager;->sInstance:Lcom/snapchat/android/model/chat/ChatConversationManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/snapchat/android/chat/ChatConversationUpdater;

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/chat/ChatGapDetector;->a()Lcom/snapchat/android/chat/ChatGapDetector;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a()Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/chat/ChatConversationUpdater;-><init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/ChatGapDetector;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V

    .line 94
    new-instance v1, Lcom/snapchat/android/model/chat/ChatConversationManager;

    new-instance v2, Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-direct {v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>()V

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversationManager;-><init>(Lcom/snapchat/android/chat/ChatConversationUpdater;Lcom/snapchat/android/chat/ChatMessageReleaser;Lcom/snapchat/android/chat/SendingMailman;)V

    sput-object v1, Lcom/snapchat/android/model/chat/ChatConversationManager;->sInstance:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 97
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversationManager;->sInstance:Lcom/snapchat/android/model/chat/ChatConversationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 319
    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 168
    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 101
    const-class v0, Lcom/snapchat/android/model/chat/ChatConversationManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/model/chat/ChatConversationManager;->sInstance:Lcom/snapchat/android/model/chat/ChatConversationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private m()V
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mIterToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 122
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->af:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    return-void

    .line 124
    :cond_0
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->af:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/chat/ChatConversationManager;->sInstance:Lcom/snapchat/android/model/chat/ChatConversationManager;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversationManager;->mIterToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    if-nez p1, :cond_1

    .line 242
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to get/start conversation with null friend."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 7
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 276
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v2

    .line 277
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_3

    .line 280
    invoke-static {v3, p1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 282
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 287
    :goto_0
    if-nez v0, :cond_1

    .line 288
    const-string v0, "ChatConversationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHAT-LOG: ChatConversationManager CREATING NEW CONVERSATION with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-direct {p0, v3, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 291
    invoke-virtual {v0, p4}, Lcom/snapchat/android/model/chat/ChatConversation;->o(Z)V

    .line 294
    :cond_1
    :goto_1
    monitor-exit v2

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/SentSnap;Ljava/util/Map;)V
    .locals 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/SentSnap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    const/4 v14, 0x0

    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 521
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 523
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;

    .line 524
    new-instance v3, Lcom/snapchat/android/model/SentSnap;

    iget-object v4, v2, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;->id:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/snapchat/android/model/server/SnapOrStoryDoublePostResponse$SnapData;->timestamp:J

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->ao()I

    move-result v10

    sget-object v11, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->f()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->r()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/SentSnap;->k()Z

    move-result v17

    invoke-direct/range {v3 .. v17}, Lcom/snapchat/android/model/SentSnap;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 528
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 529
    if-eqz v2, :cond_1

    .line 531
    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 532
    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/SentSnap;)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 535
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;ZZ)V
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
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversationUpdater:Lcom/snapchat/android/chat/ChatConversationUpdater;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;ZZ)V

    .line 509
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
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
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/List;Z)V

    .line 150
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 162
    :cond_0
    return-void

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;ZZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ServerChatConversation;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/List;ZZIZ)V

    .line 402
    return-void
.end method

.method public a(Ljava/util/List;ZZIZ)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ServerChatConversation;",
            ">;ZZIZ)V"
        }
    .end annotation

    .prologue
    .line 407
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v8, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v8

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 412
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    iget-wide v2, v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->last_interaction_ts:J

    .line 413
    if-eqz p2, :cond_3

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    move v7, v2

    .line 417
    :goto_2
    const-wide v4, 0x7fffffffffffffffL

    .line 418
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    .line 421
    iget-object v3, v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 422
    if-eqz v3, :cond_4

    .line 423
    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v3, v2, v6, v11}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation;ZZ)V

    .line 430
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    const-string v2, "ChatConversationManager"

    const-string v6, "CHAT-LOG: ChatConversationManager sending release message for %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v6, v11}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mChatMessageReleaser:Lcom/snapchat/android/chat/ChatMessageReleaser;

    sget-object v6, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v2, v3, v6}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    .line 436
    :cond_1
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 439
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    move-object v6, v3

    .line 450
    :goto_4
    if-eqz v6, :cond_a

    .line 451
    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v2

    .line 452
    cmp-long v11, v2, v4

    if-gez v11, :cond_9

    .line 455
    :goto_5
    invoke-virtual {v6}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    move-wide v4, v2

    .line 457
    goto :goto_3

    .line 411
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v2

    move-wide v4, v2

    goto/16 :goto_1

    .line 413
    :cond_3
    const/4 v2, 0x0

    move v7, v2

    goto :goto_2

    .line 442
    :cond_4
    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->getClientChatConversation(Lcom/snapchat/android/model/server/chat/ServerChatConversation;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 444
    if-eqz v2, :cond_b

    .line 445
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    .line 446
    goto :goto_4

    .line 460
    :cond_5
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-direct {p0, v2}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 462
    if-eqz v7, :cond_7

    .line 463
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 464
    :cond_6
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 465
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 468
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_6

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->ap()Z

    move-result v6

    if-nez v6, :cond_6

    .line 474
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 479
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 493
    :catchall_0
    move-exception v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 487
    :cond_7
    if-eqz p3, :cond_8

    .line 488
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->iter_token:Ljava/lang/String;

    iput-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mIterToken:Ljava/lang/String;

    .line 489
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->m()V

    .line 492
    :cond_8
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 493
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    move-wide v2, v4

    goto/16 :goto_5

    :cond_a
    move-wide v2, v4

    goto/16 :goto_6

    :cond_b
    move-object v6, v3

    goto/16 :goto_4
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 253
    if-nez p1, :cond_1

    .line 254
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to get/start conversation with null friend."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;ZZZ)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 322
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 324
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 326
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()V

    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 329
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 330
    monitor-exit v1

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/snapchat/android/util/ListViewAdapterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversationsForListView:Lcom/snapchat/android/util/ListViewAdapterList;

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversationManager$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversationManager$1;-><init>(Lcom/snapchat/android/model/chat/ChatConversationManager;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method protected g()V
    .locals 3

    .prologue
    .line 191
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :goto_0
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversationManager$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversationManager$2;-><init>(Lcom/snapchat/android/model/chat/ChatConversationManager;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 208
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v0, "ChatConversationManager"

    const-string v1, "Comparison method violates its general contract! ChatConversation timestamp transitivity is not preserved in the sorting process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversationsForListView:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ListViewAdapterList;->clear()V

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversationsForListView:Lcom/snapchat/android/util/ListViewAdapterList;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/ListViewAdapterList;->addAll(Ljava/util/Collection;)Z

    .line 221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ConversationListUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ConversationListUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->a()V

    .line 227
    :cond_0
    return-void

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i()V
    .locals 4

    .prologue
    .line 337
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 339
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 341
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aB()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()V

    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 347
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mIterToken:Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->m()V

    .line 349
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 351
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 358
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 360
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 362
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 366
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

    .line 367
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 368
    return-void
.end method

.method public k()V
    .locals 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 378
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->an()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 382
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

    .line 383
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager;->mConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 540
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 542
    return-void

    .line 540
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
