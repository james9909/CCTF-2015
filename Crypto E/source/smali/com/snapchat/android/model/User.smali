.class public Lcom/snapchat/android/model/User;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NUM_RECENTS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "User"

.field public static UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field protected static sExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static sInstance:Lcom/snapchat/android/model/User;

.field private static final sUserSyncLock:Ljava/lang/Object;


# instance fields
.field private mBests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mChatConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

.field private final mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private final mClock:Lcom/snapchat/android/util/system/Clock;

.field private mContactsNotOnSnapchat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsOnSnapchat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsOnSnapchatSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final mDuplicateFirstNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFriendMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsBlockedFromSeeingMyStory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsWhoAddedMe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentityUtils:Lcom/snapchat/android/util/IdentityUtils;

.field private mInitialized:Z

.field private mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

.field private mNextReplayAvailableRealtime:J

.field private final mRecents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mServerHasMostRecentReplayTime:Z

.field mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSnapsToBeUpdatedOnServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoryLibrary:Lcom/snapchat/android/model/StoryLibrary;

.field private final mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryViewRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPrefs:Lcom/snapchat/android/model/UserPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/User;->sUserSyncLock:Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/model/User;->sContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/User;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 199
    new-instance v0, Lcom/snapchat/android/model/User$1;

    invoke-direct {v0}, Lcom/snapchat/android/model/User$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    .line 155
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v6}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    new-instance v7, Lcom/snapchat/android/util/IdentityUtils;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/snapchat/android/util/IdentityUtils;-><init>(Lcom/snapchat/android/model/UserPrefs;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/model/User;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/model/StoryLibrary;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/util/IdentityUtils;)V

    .line 158
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/model/StoryLibrary;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/util/IdentityUtils;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/model/User;->mNextReplayAvailableRealtime:J

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/User;->mServerHasMostRecentReplayTime:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mRecents:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchatSet:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mDuplicateFirstNames:Ljava/util/HashSet;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mRequests:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/User;->mInitialized:Z

    .line 163
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 164
    iput-object p1, p0, Lcom/snapchat/android/model/User;->mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 165
    iput-object p2, p0, Lcom/snapchat/android/model/User;->mChatConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 166
    iput-object p3, p0, Lcom/snapchat/android/model/User;->mStoryLibrary:Lcom/snapchat/android/model/StoryLibrary;

    .line 167
    iput-object p4, p0, Lcom/snapchat/android/model/User;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 168
    iput-object p5, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    .line 169
    iput-object p6, p0, Lcom/snapchat/android/model/User;->mClock:Lcom/snapchat/android/util/system/Clock;

    .line 170
    iput-object p7, p0, Lcom/snapchat/android/model/User;->mIdentityUtils:Lcom/snapchat/android/util/IdentityUtils;

    .line 171
    return-void
.end method

.method static synthetic K()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/snapchat/android/model/User;->sUserSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method private L()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 240
    sget-object v1, Lcom/snapchat/android/model/User;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    const-string v0, "User"

    const-string v2, "Calling load user from database"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Lcom/snapchat/android/model/User;->b()V

    .line 244
    monitor-exit v1

    .line 257
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "User"

    const-string v2, "User loaded from database with logged in value of %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    iput-object v0, p0, Lcom/snapchat/android/model/User;->mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/model/User;->M()V

    .line 255
    invoke-direct {p0}, Lcom/snapchat/android/model/User;->N()V

    .line 256
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private M()V
    .locals 9
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 262
    const-string v5, "User"

    const-string v6, "Populating from %s table"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-virtual {v4, v5}, Lcom/snapchat/android/database/table/DbTable;->d(Lcom/snapchat/android/model/User;)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method private N()V
    .locals 5

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 392
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-direct {p0, v0}, Lcom/snapchat/android/model/User;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v3

    .line 394
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->r()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/Friend;->a(I)V

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
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

    .line 400
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/model/User$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/model/User$3;-><init>(Lcom/snapchat/android/model/User;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 410
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->a()V

    .line 413
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mDuplicateFirstNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 414
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 415
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 416
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 417
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->p()Ljava/lang/String;

    move-result-object v0

    .line 418
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 420
    iget-object v4, p0, Lcom/snapchat/android/model/User;->mDuplicateFirstNames:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 424
    return-void
.end method

.method private O()V
    .locals 0

    .prologue
    .line 1150
    invoke-static {}, Lcom/snapchat/android/chat/ReceivingMailman;->b()V

    .line 1151
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->b()V

    .line 1152
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->b()V

    .line 1153
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->b()V

    .line 1154
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;->b()V

    .line 1155
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->b()V

    .line 1156
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->b()V

    .line 1157
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->b()V

    .line 1158
    invoke-static {}, Lcom/snapchat/android/util/SnapKidzLoginManager;->b()V

    .line 1159
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->b()V

    .line 1160
    invoke-static {}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->b()V

    .line 1161
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->b()V

    .line 1162
    invoke-static {}, Lcom/snapchat/android/model/MyStoryGroup;->b()V

    .line 1163
    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->b()V

    .line 1164
    invoke-static {}, Lcom/snapchat/android/chat/ChatGapDetector;->b()V

    .line 1165
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 1168
    sget-object v0, Lcom/snapchat/android/model/User;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/model/User$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/model/User$6;-><init>(Lcom/snapchat/android/model/User;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1179
    return-void
.end method

.method private a(JJ)J
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1097
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1098
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1099
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1100
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1102
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_replayed_snap_timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current_timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1109
    :cond_0
    const-wide/16 v0, -0x1

    .line 1127
    :goto_0
    return-wide v0

    .line 1113
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 1116
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1117
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1118
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1119
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 1122
    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 1123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    add-long/2addr v0, v2

    goto :goto_0

    .line 1127
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/snapchat/android/model/User;
    .locals 5
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 175
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    .line 192
    :goto_0
    return-object v0

    .line 178
    :cond_0
    sget-object v1, Lcom/snapchat/android/model/User;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 181
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 182
    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v3, :cond_1

    .line 183
    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 184
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " called getInstance on the UI thread."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_2

    .line 190
    invoke-static {p0}, Lcom/snapchat/android/model/User;->b(Landroid/content/Context;)V

    .line 192
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    monitor-exit v1

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    .line 1224
    sget-object v1, Lcom/snapchat/android/model/User;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1225
    :try_start_0
    sput-object p0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    .line 1226
    monitor-exit v1

    .line 1227
    return-void

    .line 1226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/ServerFriend;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 686
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 687
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 689
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 691
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 693
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerFriend;

    .line 694
    iget-object v1, v0, Lcom/snapchat/android/model/server/ServerFriend;->username:Ljava/lang/String;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 695
    iget-object v1, v0, Lcom/snapchat/android/model/server/ServerFriend;->display:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/model/UserPrefs;->f(Ljava/lang/String;)V

    .line 699
    :cond_2
    iget v1, v0, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    .line 701
    new-instance v5, Lcom/snapchat/android/model/Friend;

    invoke-direct {v5, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)V

    .line 703
    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 704
    invoke-virtual {v5, v1}, Lcom/snapchat/android/model/Friend;->a(I)V

    .line 706
    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Friend;

    .line 707
    if-eqz v1, :cond_3

    .line 708
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/snapchat/android/model/Friend;->b(J)V

    .line 709
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/Friend;->a(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/Friend;->b(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->M()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V

    .line 715
    :cond_3
    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->N()V

    .line 717
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-boolean v1, v0, Lcom/snapchat/android/model/server/ServerFriend;->mCanSeeCustomStories:Z

    if-nez v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    iget-object v0, v0, Lcom/snapchat/android/model/server/ServerFriend;->username:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 724
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    invoke-direct {p0}, Lcom/snapchat/android/model/User;->N()V

    .line 727
    return-void
.end method

.method private a([Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 357
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    .line 358
    invoke-direct {p0, v2, p2}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    .line 359
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 361
    :cond_0
    return-void

    .line 356
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 384
    :goto_0
    return v0

    .line 368
    :cond_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/User;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v3

    .line 369
    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/Friend;->c(Z)V

    .line 371
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 373
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 374
    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 375
    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 377
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 379
    goto :goto_0

    :cond_4
    move v0, v2

    .line 384
    goto :goto_0
.end method

.method public static b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 451
    new-instance v0, Lcom/snapchat/android/api/UpdateStoriesTask;

    invoke-direct {v0}, Lcom/snapchat/android/api/UpdateStoriesTask;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UpdateStoriesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 452
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 453
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-static {v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;)V

    .line 457
    :cond_0
    const-string v0, "User"

    const-string v1, "The user has been reset. Is logged in? %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 5
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_2

    .line 211
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/Property;->b:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    const-string v0, "User"

    const-string v1, "init - sleep 5 seconds for investigating potential ANR. To disable the delay,\n$ adb shell setprop debug.sc.user_init_delay FALSE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    const-string v0, "User"

    const-string v1, "qwert user is null. pulling from shared prefs"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/model/User;->sContext:Landroid/content/Context;

    .line 224
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->c(Landroid/content/Context;)I

    move-result v0

    .line 225
    sget v1, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a:I

    if-ne v0, v1, :cond_1

    .line 226
    new-instance v0, Lcom/snapchat/android/model/User;

    invoke-direct {v0}, Lcom/snapchat/android/model/User;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    .line 227
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/User;->b(Z)V

    .line 236
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 231
    :cond_1
    new-instance v0, Lcom/snapchat/android/model/User;

    invoke-direct {v0}, Lcom/snapchat/android/model/User;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    .line 232
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-direct {v0}, Lcom/snapchat/android/model/User;->L()V

    .line 234
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/User;->b(Z)V

    goto :goto_1

    .line 235
    :cond_2
    const-string v0, "User"

    const-string v1, "sInstance not null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static c()Lcom/snapchat/android/model/User;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    return-object v0
.end method

.method private f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;
    .locals 4
    .parameter

    .prologue
    .line 436
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Friend;->a(J)V

    .line 438
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Friend;->b(J)V

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->g(Z)V

    .line 440
    return-object v0
.end method

.method private i(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/ServerFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 807
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 808
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerFriend;

    .line 809
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/snapchat/android/model/server/ServerFriend;->username:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Friend;

    .line 810
    new-instance v4, Lcom/snapchat/android/model/Friend;

    invoke-direct {v4, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)V

    .line 811
    if-eqz v1, :cond_0

    .line 812
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    invoke-virtual {v4, v0}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$Direction;)V

    .line 813
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$Direction;)V

    .line 814
    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/snapchat/android/model/Friend;->a(J)V

    .line 816
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/User;->e(Ljava/util/List;)V

    .line 820
    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    return-object v0
.end method

.method public B()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    return-object v0
.end method

.method public C()V
    .locals 2

    .prologue
    .line 887
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/model/User;->mNextReplayAvailableRealtime:J

    .line 888
    return-void
.end method

.method public D()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->K()Z

    move-result v2

    if-nez v2, :cond_1

    .line 913
    :cond_0
    :goto_0
    return v1

    .line 896
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    .line 897
    if-eqz v2, :cond_0

    .line 900
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/snapchat/android/util/debug/DevUtils;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 901
    goto :goto_0

    .line 905
    :cond_2
    iget-wide v2, p0, Lcom/snapchat/android/model/User;->mNextReplayAvailableRealtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/snapchat/android/model/User;->mServerHasMostRecentReplayTime:Z

    if-nez v2, :cond_4

    .line 906
    :cond_3
    const-string v0, "User"

    const-string v2, "hasReplay: haven\'t synced with server since boot or replay"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 910
    :cond_4
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current_realtime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next_replay_available_realtime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/snapchat/android/model/User;->mNextReplayAvailableRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current_time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/model/User;->mNextReplayAvailableRealtime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public E()V
    .locals 3

    .prologue
    .line 1085
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1086
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1087
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->N()V

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    return-void
.end method

.method public F()V
    .locals 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->G()V

    .line 1132
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LogoutEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/LogoutEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1133
    return-void
.end method

.method public G()V
    .locals 1

    .prologue
    .line 1138
    invoke-static {}, Lcom/snapchat/android/database/SharedPreferenceKey;->b()V

    .line 1139
    invoke-direct {p0}, Lcom/snapchat/android/model/User;->P()V

    .line 1140
    invoke-static {}, Lcom/snapchat/android/util/cache/Caches;->b()V

    .line 1141
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d()V

    .line 1142
    invoke-direct {p0}, Lcom/snapchat/android/model/User;->O()V

    .line 1143
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SecurityUtils;->a(Landroid/content/Context;)V

    .line 1144
    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;->e()V

    .line 1146
    new-instance v0, Lcom/snapchat/android/model/User;

    invoke-direct {v0}, Lcom/snapchat/android/model/User;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    .line 1147
    return-void
.end method

.method public H()V
    .locals 6

    .prologue
    .line 1182
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 1183
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1184
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->ordinal()I

    move-result v5

    aput-object v4, v1, v5

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 1187
    return-void
.end method

.method public I()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1230
    sget-object v0, Lcom/snapchat/android/model/User;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 1283
    iget-boolean v0, p0, Lcom/snapchat/android/model/User;->mInitialized:Z

    return v0
.end method

.method public a()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x5

    .line 272
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mChatConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 275
    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 276
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/model/User;->a([Ljava/lang/String;Ljava/util/Set;)V

    .line 282
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v10, :cond_0

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v4

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 289
    iget-object v6, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 290
    add-int/lit8 v0, v1, 0x1

    .line 292
    :goto_2
    if-lt v0, v10, :cond_6

    .line 294
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 298
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->y()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 299
    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    goto :goto_3

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 278
    :cond_5
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 279
    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    goto :goto_0

    :cond_6
    move v1, v0

    .line 293
    goto :goto_1

    .line 294
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 302
    :cond_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/User;->a(Ljava/util/List;)V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mRecents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 311
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mRecents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    return-void

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 2
    .parameter

    .prologue
    .line 883
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/FriendsResponse;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 929
    if-nez p1, :cond_0

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/server/FriendsResponse;->friends:Ljava/util/List;

    iget-object v1, p1, Lcom/snapchat/android/model/server/FriendsResponse;->bests:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/User;->a(Ljava/util/List;Ljava/util/List;)V

    .line 932
    iget-object v0, p1, Lcom/snapchat/android/model/server/FriendsResponse;->added_friends:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/User;->i(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/MessagingGatewayInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/snapchat/android/model/User;->mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    .line 1078
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/MessagingGatewayInfoUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/MessagingGatewayInfoUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/UpdatesResponse;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 918
    if-nez p1, :cond_0

    .line 926
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-wide v0, p1, Lcom/snapchat/android/model/server/UpdatesResponse;->last_address_book_updated_date:J

    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AddressBookUtils;->a(JLandroid/content/Context;)V

    .line 921
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->b(Lcom/snapchat/android/model/server/UpdatesResponse;)V

    .line 923
    iget-object v0, p1, Lcom/snapchat/android/model/server/UpdatesResponse;->recents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 924
    iget-wide v0, p1, Lcom/snapchat/android/model/server/UpdatesResponse;->last_replayed_snap_timestamp:J

    iget-wide v2, p1, Lcom/snapchat/android/model/server/UpdatesResponse;->current_timestamp:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/model/User;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/User;->mNextReplayAvailableRealtime:J

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;Z)V

    .line 937
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;Z)V
    .locals 14
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 941
    iget-object v8, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->updates_response:Lcom/snapchat/android/model/server/UpdatesResponse;

    .line 942
    iget-object v9, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->friends_response:Lcom/snapchat/android/model/server/FriendsResponse;

    .line 943
    iget-object v10, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->stories_response:Lcom/snapchat/android/model/server/StoriesResponse;

    .line 944
    iget-object v11, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->conversations_response:Ljava/util/List;

    .line 945
    iget-object v12, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->identity_check_response:Lcom/snapchat/data/gson/identity/IdentityCheckResponse;

    .line 946
    iget-object v13, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->conversations_response_info:Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;

    .line 948
    if-eqz v8, :cond_0

    .line 949
    invoke-virtual {p0, v8}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/UpdatesResponse;)V

    .line 951
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    iget-boolean v2, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->should_show_suggestion_prompt:Z

    iget-object v3, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->suggestion_prompt_link:Ljava/lang/String;

    iget-object v4, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->suggestion_prompt_text:Ljava/lang/String;

    iget-object v5, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->suggestion_prompt_button_text:Ljava/lang/String;

    iget-wide v6, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->suggestion_prompt_duration_in_millis:J

    invoke-virtual/range {v1 .. v7}, Lcom/snapchat/android/model/UserPrefs;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 957
    iget-object v0, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->cash_provider:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->cash_provider:Ljava/lang/String;

    .line 959
    :goto_0
    iget-object v1, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->cash_customer_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->cash_customer_id:Ljava/lang/String;

    .line 961
    :goto_1
    iget-object v2, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->is_cash_active:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    iget-object v2, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->is_cash_active:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 963
    :goto_2
    iget-object v3, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->allowed_to_use_cash:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/snapchat/android/model/UserPrefs;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    if-eqz p2, :cond_0

    .line 969
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 973
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->b()V

    .line 980
    :cond_0
    :goto_3
    if-eqz v9, :cond_8

    .line 981
    invoke-virtual {p0, v9}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/FriendsResponse;)V

    .line 987
    :goto_4
    if-eqz v10, :cond_9

    .line 988
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mStoryLibrary:Lcom/snapchat/android/model/StoryLibrary;

    iget-object v1, v10, Lcom/snapchat/android/model/server/StoriesResponse;->my_stories:Ljava/util/List;

    iget-object v2, v10, Lcom/snapchat/android/model/server/StoriesResponse;->my_group_stories:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/util/List;Ljava/util/List;)V

    .line 989
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mStoryLibrary:Lcom/snapchat/android/model/StoryLibrary;

    iget-object v1, v10, Lcom/snapchat/android/model/server/StoriesResponse;->friend_stories:Ljava/util/List;

    iget-boolean v2, v10, Lcom/snapchat/android/model/server/StoriesResponse;->friend_stories_delta:Z

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/util/List;Z)V

    .line 994
    :goto_5
    if-eqz v11, :cond_2

    .line 995
    if-eqz v13, :cond_1

    .line 996
    const-string v0, "User"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating conversations with isDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v13, Lcom/snapchat/android/model/server/chat/ConversationsResponseInfo;->is_delta:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    :cond_1
    const-string v0, "User"

    const/4 v1, 0x0

    const-string v2, "CHAT-LOG: ALL UPDATES conversations_response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 999
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mChatConversationManager:Lcom/snapchat/android/model/chat/ChatConversationManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->getRequestTaskId()I

    move-result v4

    move-object v1, v11

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/List;ZZIZ)V

    .line 1005
    :cond_2
    invoke-virtual {p0, v12}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/data/gson/identity/IdentityCheckResponse;)V

    .line 1007
    iget-object v0, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    if-eqz v0, :cond_3

    .line 1008
    iget-object v0, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->messaging_gateway_info:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/MessagingGatewayInfo;)V

    .line 1012
    :cond_3
    iget-object v5, p1, Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;->discover:Lcom/snapchat/android/discover/model/server/DiscoverResponse;

    .line 1013
    if-eqz v5, :cond_a

    .line 1014
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v1, v5, Lcom/snapchat/android/discover/model/server/DiscoverResponse;->compatibility:Ljava/lang/String;

    iget-object v2, v5, Lcom/snapchat/android/discover/model/server/DiscoverResponse;->get_channels:Ljava/lang/String;

    iget-object v3, v5, Lcom/snapchat/android/discover/model/server/DiscoverResponse;->video_catalog:Ljava/lang/String;

    iget-object v4, v5, Lcom/snapchat/android/discover/model/server/DiscoverResponse;->resource_parameter_name:Ljava/lang/String;

    iget-object v5, v5, Lcom/snapchat/android/discover/model/server/DiscoverResponse;->resource_parameter_value:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :goto_6
    return-void

    .line 957
    :cond_4
    const-string v0, "SQUARE"

    goto/16 :goto_0

    .line 959
    :cond_5
    iget-object v1, v8, Lcom/snapchat/android/model/server/UpdatesResponse;->username:Ljava/lang/String;

    goto/16 :goto_1

    .line 961
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 975
    :cond_7
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->S()V

    goto/16 :goto_3

    .line 984
    :cond_8
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->E()V

    goto/16 :goto_4

    .line 991
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mStoryLibrary:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->i()V

    goto :goto_5

    .line 1018
    :cond_a
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected a(Lcom/snapchat/data/gson/identity/IdentityCheckResponse;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    .line 1025
    if-nez p1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/UserPrefs;->C(Z)V

    .line 1031
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/UserPrefs;->D(Z)V

    .line 1034
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {p1}, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/UserPrefs;->u(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mIdentityUtils:Lcom/snapchat/android/util/IdentityUtils;

    invoke-virtual {v0}, Lcom/snapchat/android/util/IdentityUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aN()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/snapchat/data/gson/identity/IdentityCheckResponse;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/snapchat/android/model/User;->mClock:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->B(Z)V

    goto :goto_0

    .line 1031
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1249
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 1250
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1251
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1252
    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/Friend;->j(Z)V

    goto :goto_0

    .line 1255
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

    .line 1256
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 329
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 330
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 331
    if-nez v2, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->j()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 337
    :goto_1
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->T()J

    move-result-wide v2

    goto :goto_1

    .line 341
    :cond_1
    new-instance v0, Lcom/snapchat/android/model/User$2;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/User$2;-><init>(Lcom/snapchat/android/model/User;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-boolean p1, p0, Lcom/snapchat/android/model/User;->mServerHasMostRecentReplayTime:Z

    .line 892
    return-void
.end method

.method public varargs a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 2
    .parameter

    .prologue
    .line 1190
    sget-object v0, Lcom/snapchat/android/model/User;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/model/User$7;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/model/User$7;-><init>(Lcom/snapchat/android/model/User;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1195
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 2
    .parameter

    .prologue
    .line 672
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchatSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 431
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mDuplicateFirstNames:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;
    .locals 2
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 648
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    monitor-exit v1

    return-object v0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_0

    .line 1261
    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/Friend;->d(Z)V

    .line 1264
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/User;->c(Ljava/lang/String;Z)V

    .line 1265
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 610
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 611
    monitor-exit v1

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    iput-boolean p1, p0, Lcom/snapchat/android/model/User;->mInitialized:Z

    .line 1280
    return-void
.end method

.method protected varargs b([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 5
    .parameter

    .prologue
    .line 1199
    sget-object v1, Lcom/snapchat/android/model/User;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    monitor-exit v1

    .line 1210
    :goto_0
    return-void

    .line 1204
    :cond_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 1205
    invoke-virtual {v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/model/User;->sInstance:Lcom/snapchat/android/model/User;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/database/table/DbTable;->c(Lcom/snapchat/android/model/User;)V

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->I()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;)V

    .line 1208
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c()Z

    .line 1209
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/model/Friend;)Z
    .locals 2
    .parameter

    .prologue
    .line 678
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;
    .locals 4
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 655
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 657
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    monitor-exit v1

    .line 662
    :goto_0
    return-object v0

    .line 661
    :cond_1
    monitor-exit v1

    .line 662
    const/4 v0, 0x0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 842
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/User;->f(Ljava/util/List;)V

    .line 845
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/FriendsWhoAddedMeUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/FriendsWhoAddedMeUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 847
    return-void

    .line 845
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected c(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1269
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 1270
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1271
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1272
    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/Friend;->d(Z)V

    goto :goto_0

    .line 1275
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

    .line 1276
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 631
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 632
    monitor-exit v1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 8

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 479
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v4

    iget-object v0, p0, Lcom/snapchat/android/model/User;->mUserPrefs:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->j()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 480
    goto :goto_0

    .line 481
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public d(Lcom/snapchat/android/model/Friend;)V
    .locals 3
    .parameter

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1235
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1237
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    monitor-exit v1

    .line 1239
    return-void

    .line 1238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 732
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 733
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 734
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    invoke-direct {p0}, Lcom/snapchat/android/model/User;->N()V

    .line 738
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 666
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryViewRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    return-object v0
.end method

.method public e(Lcom/snapchat/android/model/Friend;)V
    .locals 3
    .parameter

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1245
    monitor-exit v1

    .line 1246
    return-void

    .line 1245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->setGatewayServer(Ljava/lang/String;)V

    .line 799
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/User;->mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 800
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 802
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/MessagingGatewayInfoUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/MessagingGatewayInfoUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 803
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    new-instance v0, Lcom/snapchat/android/model/User$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/User$4;-><init>(Lcom/snapchat/android/model/User;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 834
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 836
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 837
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/FriendsWhoAddedMeUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/FriendsWhoAddedMeUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 839
    return-void

    .line 837
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mStoryLibrary:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryLibrary;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 491
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 492
    return-object v0
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    new-instance v0, Lcom/snapchat/android/model/User$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/User$5;-><init>(Lcom/snapchat/android/model/User;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 860
    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mRecents:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 500
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 502
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v4

    if-nez v4, :cond_0

    .line 503
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
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

    .line 508
    return-object v1
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 863
    iput-object p1, p0, Lcom/snapchat/android/model/User;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    .line 864
    return-void
.end method

.method public h()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 515
    iget-object v3, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 517
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 518
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 522
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 525
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 528
    return-object v1
.end method

.method public h(Ljava/util/List;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/ServerFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1051
    if-nez p1, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1053
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1054
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/ServerFriend;

    .line 1056
    iget v3, v0, Lcom/snapchat/android/model/server/ServerFriend;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1058
    new-instance v3, Lcom/snapchat/android/model/Friend;

    invoke-direct {v3, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)V

    .line 1061
    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->N()V

    .line 1063
    iget-object v4, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object v4, p0, Lcom/snapchat/android/model/User;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iget-boolean v3, v0, Lcom/snapchat/android/model/server/ServerFriend;->mCanSeeCustomStories:Z

    if-nez v3, :cond_1

    .line 1067
    iget-object v3, p0, Lcom/snapchat/android/model/User;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    iget-object v0, v0, Lcom/snapchat/android/model/server/ServerFriend;->username:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1071
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1072
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 540
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v4

    if-nez v4, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 543
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
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

    .line 547
    return-object v1
.end method

.method public j()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 553
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 559
    return-object v1
.end method

.method public k()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 569
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 571
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 572
    invoke-static {v0}, Lcom/snapchat/android/util/FriendUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
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

    .line 577
    return-object v1
.end method

.method public l()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 585
    invoke-static {v0}, Lcom/snapchat/android/util/FriendUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
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

    .line 590
    return-object v1
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mBests:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 603
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/User;->mContactsNotOnSnapchat:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchatSet:Ljava/util/Set;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 624
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/User;->mContactsOnSnapchat:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 637
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 638
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User [logged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mRecents:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mRequests:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 751
    iget-object v1, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 752
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public x()J
    .locals 5

    .prologue
    .line 760
    const-wide/16 v0, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 762
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 763
    goto :goto_0

    .line 764
    :cond_0
    return-wide v2
.end method

.method public y()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 769
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 770
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 771
    iget-object v3, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 773
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 774
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    iget-object v3, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v3

    .line 782
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 783
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 784
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 788
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 789
    return-object v1
.end method

.method public z()Lcom/snapchat/android/model/server/MessagingGatewayInfo;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/snapchat/android/model/User;->mMessagingGatewayInfo:Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    return-object v0
.end method
