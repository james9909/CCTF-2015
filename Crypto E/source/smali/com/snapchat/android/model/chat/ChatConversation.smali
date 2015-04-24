.class public Lcom/snapchat/android/model/chat/ChatConversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/ChronologicalSnapProvider;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/model/ChronologicalSnapProvider;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHAT_ID_DELIMITER:Ljava/lang/String; = "~"

.field private static final RECIPIENT_PRESENCE_TIME_INTERVAL:I = 0x3e80

.field private static final SENDER_PRESENCE_TIME_INTERVAL:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "ChatConversation"

.field private static final TIME_BEFORE_DELETING_FAILED_CHATS_IN_MILLISECONDS:I = 0x36ee80


# instance fields
.field private mAmIPresent:Z

.field private mAmITyping:Z

.field private mBeingCleared:Z

.field private final mChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mChatsIterToken:Ljava/lang/String;

.field private mClearedChatIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnteredConversationFromRecentStoryReply:Z

.field private mFailedChatMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/server/chat/ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedReleaseMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedSnaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/SentSnap;",
            ">;"
        }
    .end annotation
.end field

.field mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHasUnopenedReceivedSnaps:Z

.field private mHasUnreleasedReceivedChats:Z

.field private mHasUnviewedCash:Z

.field private mHasUnviewedSnapsWithAudio:Z

.field private mHereAuth:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

.field private final mId:Ljava/lang/String;

.field private mIsDisplayingVideo:Z

.field private mIsNotifyingRecipientAboutTyping:Z

.field private mIsRecipientPresent:Z

.field private mIsSavableConversation:Z

.field private mIsStub:Z

.field private mIsUserInConversation:Z

.field private mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field private mItemsForFeedIcon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIterToken:Ljava/lang/String;

.field private mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

.field private mLastChatFromServer:Lcom/snapchat/android/model/chat/Chat;

.field private mLastSeqNumOfMyChatIDeleted:J

.field private mLastSeqNumOfMyChatTheyReleased:J

.field private mLastSeqNumOfTheirChatIDeleted:J

.field private mLastSeqNumOfTheirChatIDisplayed:J

.field private mLastSeqNumOfTheirChatIReleased:J

.field private mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

.field private mLastTCPMessageSentTimestamp:J

.field private mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

.field private mLastTimestampOfReceivedSnapReadReceiptIReleased:J

.field private mLastTimestampOfSentSnapReadReceiptIDeleted:J

.field private mLastTimestampOfSentSnapReadReceiptIReleased:J

.field mMediaImageCache:Lcom/snapchat/android/util/cache/Cache;

.field private mMessagingAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

.field private mMyLastConnSeqNum:J

.field private mMyLastSeqNum:J

.field private mMyUsername:Ljava/lang/String;

.field private mNumTCPChatMessagesSendingOrSent:I

.field private mPendingRainBills:I

.field private mPendingRainTransactionTimestamp:J

.field private mPendingReceivedChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecipientPresenceHandler:Landroid/os/Handler;

.field private final mRecipientPresenceRunnable:Ljava/lang/Runnable;

.field private mRecipientSupportsHere:Z

.field private mSecondsLeftInUnviewedSnaps:I

.field private final mSenderPresenceHandler:Landroid/os/Handler;

.field private final mSenderPresenceRunnable:Ljava/lang/Runnable;

.field mSendingCashManager:Lcom/snapchat/android/cash/SendingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSendingChatFeedItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendingMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field

.field private mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

.field mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTheirLastConnSeqNum:J

.field private mTheirLastSeqNum:J

.field private mTheirUsername:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 174
    invoke-static {p1, p2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
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
    .line 180
    invoke-static {p1, p2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iput-wide p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 182
    iput-wide p5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    .line 183
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->i:Lcom/snapchat/android/util/cache/Cache;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMediaImageCache:Lcom/snapchat/android/util/cache/Cache;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    .line 122
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 126
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    .line 132
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    .line 138
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 187
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 189
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    .line 195
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation$1;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation$2;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b()Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    .line 217
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    const-class v2, Lcom/snapchat/android/model/server/chat/SignedPayload;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SignedPayload;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 222
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 171
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatConversation;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 4
    .parameter

    .prologue
    .line 1587
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v0

    .line 1588
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v1, :cond_2

    .line 1591
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    .line 1592
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1594
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 1596
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->p()V

    .line 1598
    :cond_2
    return-void
.end method

.method private d(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 4
    .parameter

    .prologue
    .line 479
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 484
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 485
    return-void

    .line 482
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private n(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1410
    const-string v0, "ChatConversation"

    const-string v1, "Message marked as Failed. Removing [%s] from sending ID list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1411
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1412
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1413
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->E()Z

    move-result v1

    if-nez v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a()Lcom/snapchat/android/chat/ChatConnectionMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public G()J
    .locals 2

    .prologue
    .line 777
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTCPMessageSentTimestamp:J

    return-wide v0
.end method

.method public H()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x36ee80

    .line 790
    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    .line 791
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 792
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/server/chat/ChatMessage;

    .line 795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v5, v6, v12

    if-ltz v5, :cond_0

    .line 797
    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;

    move-result-object v2

    .line 798
    if-eqz v2, :cond_1

    .line 799
    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 801
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 822
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 805
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 806
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 807
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 808
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 809
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_3

    .line 810
    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v3, v0

    .line 811
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-ltz v2, :cond_3

    .line 815
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 821
    :cond_4
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 822
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    return-void
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 878
    return-void
.end method

.method public K()V
    .locals 4

    .prologue
    .line 881
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 885
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 887
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 888
    return-void

    .line 885
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public L()V
    .locals 2

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 892
    return-void
.end method

.method protected M()J
    .locals 6

    .prologue
    .line 896
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 897
    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 899
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 901
    instance-of v5, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 902
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 903
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->W()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->V()Z

    move-result v5

    if-nez v5, :cond_0

    .line 904
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v0

    .line 909
    :goto_0
    monitor-exit v4

    .line 910
    return-wide v0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public N()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    return-object v0
.end method

.method public O()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1045
    return-void
.end method

.method public P()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1052
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1054
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    monitor-exit v2

    move v0, v1

    .line 1060
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 1061
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 1060
    goto :goto_1
.end method

.method public Q()V
    .locals 2

    .prologue
    .line 1068
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    .line 1069
    return-void
.end method

.method public R()V
    .locals 4

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1074
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1077
    :cond_0
    return-void
.end method

.method public S()V
    .locals 4

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    :cond_0
    return-void
.end method

.method public T()J
    .locals 2

    .prologue
    .line 1088
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    return-wide v0
.end method

.method public U()J
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    .line 1097
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    goto :goto_0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    return-object v0
.end method

.method public X()J
    .locals 2

    .prologue
    .line 1117
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    return-wide v0
.end method

.method public Y()J
    .locals 2

    .prologue
    .line 1121
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    return-wide v0
.end method

.method public Z()J
    .locals 2

    .prologue
    .line 1143
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    return-wide v0
.end method

.method public a(ILcom/snapchat/android/model/ReceivedSnap;Z)I
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 1270
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public a(ILcom/snapchat/android/model/ReceivedSnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 6
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 1286
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILcom/snapchat/android/model/ReceivedSnap;)Ljava/util/List;

    move-result-object v0

    .line 1287
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    :goto_0
    return v2

    .line 1290
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 1291
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1292
    add-int/lit8 v1, v1, 0x1

    .line 1293
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1294
    new-instance v4, Lcom/snapchat/android/api/LoadSnapMediaTask;

    invoke-direct {v4, v0, p4, p5}, Lcom/snapchat/android/api/LoadSnapMediaTask;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v5, v2, [Ljava/lang/Void;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/api/LoadSnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    move v0, v1

    move v1, v0

    .line 1298
    goto :goto_1

    :cond_2
    move v2, v1

    .line 1300
    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1255
    iget-wide v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/primitives/LongUtils;->a(JJ)I

    move-result v0

    return v0
.end method

.method public a(J)J
    .locals 5
    .parameter

    .prologue
    .line 786
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    const-wide/16 v2, 0x1

    add-long p1, v0, v2

    :cond_0
    return-wide p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(ILcom/snapchat/android/model/ReceivedSnap;)Ljava/util/List;
    .locals 9
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1304
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1305
    if-nez p2, :cond_1

    move v1, v3

    .line 1306
    :goto_0
    iget-object v6, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v6

    .line 1307
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v1

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1308
    if-nez v5, :cond_2

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v3

    .line 1310
    goto :goto_1

    .line 1305
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1312
    :cond_2
    instance-of v2, v1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1313
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v6

    move-object v1, v4

    .line 1319
    :goto_2
    return-object v1

    .line 1317
    :cond_3
    monitor-exit v6

    move-object v1, v4

    .line 1319
    goto :goto_2

    .line 1317
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    .line 343
    return-void
.end method

.method public a(Lcom/snapchat/android/model/SentSnap;)V
    .locals 2
    .parameter

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 459
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    .line 460
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->o()V

    .line 461
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Snap;)V
    .locals 0
    .parameter

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    .line 1461
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1469
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/Chat;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 841
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/model/chat/ChatConversation$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/model/chat/ChatConversation$3;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 853
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 389
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2
    .parameter

    .prologue
    .line 430
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_0

    .line 434
    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 436
    :cond_0
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 3
    .parameter

    .prologue
    .line 622
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->c(J)V

    .line 623
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 624
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 625
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->K()V

    .line 626
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 351
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    .line 696
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V
    .locals 6
    .parameter

    .prologue
    .line 699
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ScTextUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getKnownChatSequenceNumbers()Ljava/util/Map;

    move-result-object v1

    .line 704
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 705
    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 706
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 709
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 710
    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    .line 712
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getKnownReceivedSnapsTs()Ljava/util/Map;

    move-result-object v1

    .line 713
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 714
    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 715
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    .line 717
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 718
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 719
    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 324
    new-instance v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->b:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->b()Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 330
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1417
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1418
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1420
    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;Ljava/util/List;Z)V
    .locals 5
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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 727
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 729
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 731
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 732
    check-cast v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 733
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 735
    invoke-static {p0, v0, v1}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 740
    invoke-interface {v4, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 741
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/CashUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 752
    if-eqz p3, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_3

    .line 756
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 757
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 758
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    goto :goto_1

    .line 761
    :cond_2
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingCashManager:Lcom/snapchat/android/cash/SendingCashManager;

    invoke-virtual {v0, p0, v3}, Lcom/snapchat/android/cash/SendingCashManager;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 765
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    .line 247
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 16
    .parameter

    .prologue
    .line 564
    const/4 v5, 0x0

    .line 566
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 568
    const/4 v4, 0x0

    .line 570
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v10

    .line 571
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 573
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ap()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    .line 577
    :goto_1
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    move-object v3, v0

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->k()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->at()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->V()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->t()Z

    move-result v3

    if-nez v3, :cond_5

    .line 580
    :cond_2
    const-string v12, "ChatConversation"

    const-string v13, "CHAT-LOG: NOT clearing chat with id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v3, 0x4

    new-array v14, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v7, v14, v3

    const/4 v3, 0x2

    aput-object v6, v14, v3

    const/4 v15, 0x3

    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v6

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v15

    invoke-static {v12, v13, v14}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    if-nez v4, :cond_a

    instance-of v3, v2, Lcom/snapchat/android/model/chat/IIterableChatFeedItem;

    if-eqz v3, :cond_a

    .line 585
    check-cast v2, Lcom/snapchat/android/model/chat/IIterableChatFeedItem;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/IIterableChatFeedItem;->A()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 586
    const/4 v2, 0x1

    move v3, v5

    :goto_3
    move v4, v2

    move v5, v3

    .line 603
    goto/16 :goto_0

    .line 574
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 580
    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 589
    :cond_5
    const-string v5, "ChatConversation"

    const-string v12, "CHAT-LOG: Clearing chat with id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v3, 0x4

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v7, v13, v3

    const/4 v3, 0x2

    aput-object v6, v13, v3

    const/4 v14, 0x3

    instance-of v3, v2, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_7

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v6

    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-static {v5, v12, v13}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v3, :cond_8

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMediaImageCache:Lcom/snapchat/android/util/cache/Cache;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 601
    :cond_6
    :goto_5
    const/4 v2, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    .line 589
    :cond_7
    const-wide/16 v6, -0x1

    goto :goto_4

    .line 598
    :cond_8
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_6

    .line 599
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 608
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 605
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 607
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 608
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    return v5

    :cond_a
    move v2, v4

    move v3, v5

    goto/16 :goto_3
.end method

.method public aA()Z
    .locals 3

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1510
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1511
    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_0

    .line 1512
    const/4 v0, 0x1

    monitor-exit v1

    .line 1516
    :goto_0
    return v0

    .line 1515
    :cond_1
    monitor-exit v1

    .line 1516
    const/4 v0, 0x0

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aB()Z
    .locals 1

    .prologue
    .line 1524
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    return v0
.end method

.method public aC()Z
    .locals 1

    .prologue
    .line 1532
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    return v0
.end method

.method public aD()Z
    .locals 1

    .prologue
    .line 1540
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    return v0
.end method

.method public aE()Z
    .locals 1

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    return v0
.end method

.method public aF()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 1565
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1566
    instance-of v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v4, :cond_0

    .line 1567
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1568
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    .line 1569
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v4, v5, :cond_0

    .line 1571
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1575
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

    .line 1576
    return-object v1
.end method

.method public aG()I
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    return v0
.end method

.method public aH()J
    .locals 2

    .prologue
    .line 1605
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    return-wide v0
.end method

.method public aI()V
    .locals 2

    .prologue
    .line 1609
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    .line 1610
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 1611
    return-void
.end method

.method public aa()J
    .locals 2

    .prologue
    .line 1153
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    return-wide v0
.end method

.method public ab()J
    .locals 2

    .prologue
    .line 1161
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    return-wide v0
.end method

.method public ac()J
    .locals 2

    .prologue
    .line 1169
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    return-wide v0
.end method

.method public ad()J
    .locals 2

    .prologue
    .line 1177
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    return-wide v0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 1185
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    return-wide v0
.end method

.method public af()J
    .locals 2

    .prologue
    .line 1193
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    return-wide v0
.end method

.method public ag()J
    .locals 2

    .prologue
    .line 1201
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    return-wide v0
.end method

.method public ah()J
    .locals 2

    .prologue
    .line 1209
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    return-wide v0
.end method

.method public ai()J
    .locals 2

    .prologue
    .line 1217
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    return-wide v0
.end method

.method public aj()Ljava/util/List;
    .locals 2
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
    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1231
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    return-object v0
.end method

.method public ak()Z
    .locals 1

    .prologue
    .line 1328
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    return v0
.end method

.method public al()Z
    .locals 1

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    return v0
.end method

.method public am()Z
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnopenedReceivedSnaps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public an()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1352
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lcom/snapchat/android/model/chat/Chat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->P()Z

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

.method public ao()Z
    .locals 3

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1362
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    .line 1365
    :goto_0
    return v0

    .line 1364
    :cond_1
    monitor-exit v1

    .line 1365
    const/4 v0, 0x0

    goto :goto_0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ap()Z
    .locals 4

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1371
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->V()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    .line 1374
    :goto_0
    return v0

    .line 1373
    :cond_2
    monitor-exit v1

    .line 1374
    const/4 v0, 0x0

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aq()V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lcom/snapchat/android/model/chat/Chat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v0, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lcom/snapchat/android/model/chat/Chat;

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v0, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_2

    .line 1389
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/Snap;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    goto :goto_0

    .line 1390
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v0, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    goto :goto_0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    return v0
.end method

.method public as()Z
    .locals 1

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnopenedReceivedSnaps:Z

    return v0
.end method

.method public at()Lcom/snapchat/android/model/chat/Chat;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lcom/snapchat/android/model/chat/Chat;

    return-object v0
.end method

.method public au()Lcom/snapchat/android/model/Snap;
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

    return-object v0
.end method

.method public av()Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

    return-object v0
.end method

.method public aw()Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    return-object v0
.end method

.method public ax()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    return-object v0
.end method

.method public ay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1489
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-nez v1, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public az()Z
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 5
    .parameter

    .prologue
    .line 860
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 861
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 863
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 864
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 865
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 870
    monitor-exit v1

    .line 871
    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/model/SentSnap;)V
    .locals 2
    .parameter

    .prologue
    .line 464
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 466
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->h()V

    .line 468
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 469
    return-void
.end method

.method public b(Lcom/snapchat/android/model/chat/Chat;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastChatFromServer:Lcom/snapchat/android/model/chat/Chat;

    .line 1453
    return-void
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2
    .parameter

    .prologue
    .line 451
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    monitor-exit v1

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 357
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1041
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 240
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 242
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    if-ne v0, p1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    .line 636
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    iget-boolean v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/server/chat/ChatMessage;)Z
    .locals 4
    .parameter

    .prologue
    .line 440
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 442
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x1

    monitor-exit v1

    .line 447
    :goto_0
    return v0

    .line 446
    :cond_1
    monitor-exit v1

    .line 447
    const/4 v0, 0x0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/model/SentSnap;
    .locals 4
    .parameter

    .prologue
    .line 914
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 916
    instance-of v3, v0, Lcom/snapchat/android/model/SentSnap;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 917
    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    monitor-exit v1

    .line 921
    :goto_0
    return-object v0

    .line 920
    :cond_1
    monitor-exit v1

    .line 921
    const/4 v0, 0x0

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 1
    .parameter

    .prologue
    .line 1092
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 1093
    return-void
.end method

.method public c(Lcom/snapchat/android/model/SentSnap;)V
    .locals 2
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->l(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 474
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 476
    return-void
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1478
    return-void
.end method

.method public c(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1033
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
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 517
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    .line 641
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 4
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 931
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 933
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 934
    monitor-exit v1

    .line 938
    :goto_0
    return-object v0

    .line 937
    :cond_1
    monitor-exit v1

    .line 938
    const/4 v0, 0x0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(J)V
    .locals 3
    .parameter

    .prologue
    .line 1131
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1132
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 1134
    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 1486
    return-void
.end method

.method public d(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 656
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    .line 658
    if-eqz p1, :cond_0

    .line 662
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 663
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->R()V

    .line 670
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    iget-boolean v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    .line 671
    return-void

    .line 666
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->g()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 5

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 394
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 396
    instance-of v4, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 399
    goto :goto_0

    .line 400
    :cond_0
    monitor-exit v2

    .line 401
    return v1

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 948
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 950
    instance-of v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 951
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    monitor-exit v1

    .line 955
    :goto_0
    return-object v0

    .line 954
    :cond_1
    monitor-exit v1

    .line 955
    const/4 v0, 0x0

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(J)V
    .locals 3
    .parameter

    .prologue
    .line 1137
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1138
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    .line 1140
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    .line 676
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->S()V

    .line 677
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1237
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->g()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;
    .locals 4
    .parameter

    .prologue
    .line 964
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 966
    instance-of v3, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    monitor-exit v1

    .line 971
    :goto_0
    return-object v0

    .line 970
    :cond_1
    monitor-exit v1

    .line 971
    const/4 v0, 0x0

    goto :goto_0

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(J)V
    .locals 3
    .parameter

    .prologue
    .line 1147
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1148
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    .line 1150
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    .line 685
    return-void
.end method

.method public g()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 278
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    .line 279
    const/4 v4, 0x0

    .line 280
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 281
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnopenedReceivedSnaps:Z

    .line 282
    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v5

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 284
    instance-of v3, v2, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v3

    if-nez v3, :cond_3

    .line 285
    check-cast v2, Lcom/snapchat/android/model/ReceivedSnap;

    .line 286
    if-nez v4, :cond_1

    move-object v3, v2

    .line 292
    :goto_1
    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->an()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 295
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnopenedReceivedSnaps:Z

    move-object v2, v3

    :goto_2
    move-object v4, v2

    .line 297
    goto :goto_0

    .line 289
    :cond_1
    iget v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    int-to-double v8, v3

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->M()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    move-object v3, v4

    goto :goto_1

    .line 298
    :cond_2
    monitor-exit v5

    .line 299
    return-object v4

    .line 298
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    move-object v2, v4

    goto :goto_2
.end method

.method public g(Ljava/lang/String;)Lcom/snapchat/android/model/chat/Chat;
    .locals 4
    .parameter

    .prologue
    .line 980
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 982
    instance-of v3, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_0

    .line 983
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 984
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 985
    monitor-exit v1

    .line 990
    :goto_0
    return-object v0

    .line 989
    :cond_1
    monitor-exit v1

    .line 990
    const/4 v0, 0x0

    goto :goto_0

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(J)V
    .locals 1
    .parameter

    .prologue
    .line 1157
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    .line 1158
    return-void
.end method

.method public g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 1325
    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ConversationMessage;
    .locals 4
    .parameter

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 1001
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 1002
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1003
    monitor-exit v1

    .line 1007
    :goto_0
    return-object v0

    .line 1006
    :cond_1
    monitor-exit v1

    .line 1007
    const/4 v0, 0x0

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Lcom/snapchat/android/model/server/chat/SignedPayload;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    return-object v0
.end method

.method public h(J)V
    .locals 1
    .parameter

    .prologue
    .line 1165
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    .line 1166
    return-void
.end method

.method public h(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1336
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    .line 1337
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 6

    .prologue
    .line 303
    const/4 v3, 0x0

    .line 304
    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 306
    instance-of v2, v1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->D()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    .line 309
    if-nez v3, :cond_1

    :goto_1
    move-object v3, v1

    .line 313
    goto :goto_0

    .line 314
    :cond_0
    monitor-exit v4

    .line 315
    return-object v3

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move-object v1, v3

    goto :goto_1
.end method

.method public i(Ljava/lang/String;)Lcom/snapchat/android/model/SentSnap;
    .locals 5
    .parameter

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1016
    :try_start_0
    invoke-static {p1}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1018
    instance-of v4, v0, Lcom/snapchat/android/model/SentSnap;

    if-eqz v4, :cond_0

    .line 1019
    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    .line 1020
    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->ak()Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-static {v4}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1022
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1023
    monitor-exit v1

    .line 1028
    :goto_0
    return-object v0

    .line 1027
    :cond_1
    monitor-exit v1

    .line 1028
    const/4 v0, 0x0

    goto :goto_0

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i(J)V
    .locals 1
    .parameter

    .prologue
    .line 1173
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    .line 1174
    return-void
.end method

.method public i(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1432
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 1433
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    return v0
.end method

.method public j(J)V
    .locals 1
    .parameter

    .prologue
    .line 1181
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    .line 1182
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIterToken:Ljava/lang/String;

    .line 1106
    return-void
.end method

.method public j(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1440
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnopenedReceivedSnaps:Z

    .line 1441
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 333
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTCPMessageSentTimestamp:J

    .line 335
    return-void
.end method

.method public k(J)V
    .locals 1
    .parameter

    .prologue
    .line 1189
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    .line 1190
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 1114
    return-void
.end method

.method public k(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1499
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmITyping:Z

    if-eq v0, p1, :cond_0

    .line 1500
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmITyping:Z

    .line 1502
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    if-nez v0, :cond_0

    .line 1503
    new-instance v0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->g()V

    .line 1506
    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    .line 339
    return-void
.end method

.method public l(J)V
    .locals 1
    .parameter

    .prologue
    .line 1197
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    .line 1198
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1397
    const-string v0, "ChatConversation"

    const-string v1, "Message marked as Sending. Adding [%s] to sending ID list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 1399
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V

    .line 1400
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1401
    return-void
.end method

.method public l(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1520
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    .line 1521
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumTCPChatMessagesSendingOrSent:I

    .line 347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTCPMessageSentTimestamp:J

    .line 348
    return-void
.end method

.method public m(J)V
    .locals 1
    .parameter

    .prologue
    .line 1205
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    .line 1206
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1405
    const-string v0, "ChatConversation"

    const-string v1, "Message marked as Sent. Removing [%s] from sending ID list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1407
    return-void
.end method

.method public m(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1528
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mBeingCleared:Z

    .line 1529
    return-void
.end method

.method public n()J
    .locals 4

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    return-wide v0
.end method

.method public n(J)V
    .locals 1
    .parameter

    .prologue
    .line 1213
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 1214
    return-void
.end method

.method public n(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1536
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 1537
    return-void
.end method

.method public o()J
    .locals 4

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastConnSeqNum:J

    return-wide v0
.end method

.method public o(J)V
    .locals 1
    .parameter

    .prologue
    .line 1221
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    .line 1222
    return-void
.end method

.method public o(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1544
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 1545
    return-void
.end method

.method public p()Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    return-object v0
.end method

.method public p(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    .line 1557
    return-void
.end method

.method public q()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 5

    .prologue
    .line 405
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3

    .line 406
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 407
    instance-of v2, v1, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/Snap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->au()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    monitor-exit v3

    .line 412
    :goto_0
    return-object v1

    .line 411
    :cond_1
    monitor-exit v3

    .line 412
    const/4 v1, 0x0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public r()V
    .locals 5

    .prologue
    .line 416
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 418
    instance-of v2, v1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->x()V

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    return-void
.end method

.method public s()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 494
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    return-object v0

    .line 494
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public v()Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    return-object v0
.end method

.method public w()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 526
    .line 527
    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v2, :cond_1

    .line 528
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 529
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    move v0, v1

    .line 533
    :cond_1
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Z)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 534
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 536
    :cond_3
    return-void
.end method

.method public x()V
    .locals 5

    .prologue
    .line 542
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 544
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 545
    instance-of v4, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/snapchat/android/model/SentSnap;

    if-nez v4, :cond_1

    instance-of v0, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_0

    .line 547
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->i:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 548
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->a:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 551
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    return v0
.end method
