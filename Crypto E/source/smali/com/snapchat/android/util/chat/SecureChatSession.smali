.class public Lcom/snapchat/android/util/chat/SecureChatSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;
.implements Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;
.implements Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;,
        Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;,
        Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;,
        Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field protected a:Lcom/snapchat/android/util/GsonWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

.field private final e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljavax/net/ssl/SSLSocket;

.field private l:Lcom/snapchat/android/util/chat/SCMessageInputStream;

.field private m:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

.field private volatile n:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

.field private volatile o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/chat/ChatConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile r:Ljava/util/concurrent/CountDownLatch;

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->h:I

    .line 113
    iput v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->i:I

    .line 114
    iput-boolean v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->j:Z

    .line 124
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->n:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    .line 126
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->q:Ljava/util/List;

    .line 134
    iput-wide v4, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->s:J

    .line 137
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->c:Landroid/content/Context;

    .line 142
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->f:Ljava/util/concurrent/ExecutorService;

    .line 144
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x4e20

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;-><init>(Ljava/util/concurrent/ScheduledExecutorService;J)V

    .line 147
    new-instance v8, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 v2, 0x20

    invoke-direct {v8, p0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 149
    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-direct {v1, v8}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)V

    iput-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    .line 150
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a(Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;)V

    .line 151
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a(Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;)V

    .line 152
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v1}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->start()V

    .line 153
    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    invoke-direct {v1, v0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;-><init>(Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;)V

    iput-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a(Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;)V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->start()V

    .line 157
    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;

    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x3a98

    const-wide/16 v6, 0x2710

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;Ljava/util/concurrent/ScheduledExecutorService;JJ)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a(Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/ChatConnectionStateListener;)V

    .line 162
    invoke-virtual {p0, v8}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/ChatConnectionStateListener;)V

    .line 163
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession$TCPStateNotificationConnectionStateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/ChatConnectionStateListener;)V

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->i:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SCMessageInputStream;)Lcom/snapchat/android/util/chat/SCMessageInputStream;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->l:Lcom/snapchat/android/util/chat/SCMessageInputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SCMessageOutputStream;)Lcom/snapchat/android/util/chat/SCMessageOutputStream;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->m:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->n:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->r:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->k:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method private a(Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;)V
    .locals 6
    .parameter

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v1, "SecureChatSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHAT-LOG: SecureChatSession setAlternativeServer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->h:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/snapchat/android/util/chat/SecureChatSession$3;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSession$3;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/User;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 3
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-eq v0, p1, :cond_0

    .line 335
    const-string v0, "SecureChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: SecureChatSession SET CONNECTION STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    .line 337
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/ChatConnectionStateListener;

    .line 338
    invoke-interface {v0, p1}, Lcom/snapchat/android/util/chat/ChatConnectionStateListener;->a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->j:Z

    return p1
.end method

.method protected static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 359
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 362
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EXPORT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 363
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatSession;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->h:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->n()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->k()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->m()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->k:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageOutputStream;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->m:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SCMessageInputStream;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->l:Lcom/snapchat/android/util/chat/SCMessageInputStream;

    return-object v0
.end method

.method static synthetic j()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectRunnable;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->q:Ljava/util/List;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    return-object v0
.end method

.method private m()V
    .locals 5

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->i:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->j:Z

    .line 245
    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->i:I

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->o()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 255
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->W()V

    .line 257
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession resetSessionState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->m:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->l:Lcom/snapchat/android/util/chat/SCMessageInputStream;

    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->k:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/net/Socket;)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->interrupt()V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->interrupt()V

    .line 267
    iput-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->l:Lcom/snapchat/android/util/chat/SCMessageInputStream;

    .line 268
    iput-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->m:Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    .line 269
    iput-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->k:Ljavax/net/ssl/SSLSocket;

    .line 270
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    .line 271
    return-void
.end method

.method private o()J
    .locals 2

    .prologue
    .line 344
    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->i:I

    packed-switch v0, :pswitch_data_0

    .line 352
    const-wide/16 v0, 0x7530

    :goto_0
    return-wide v0

    .line 346
    :pswitch_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 348
    :pswitch_1
    const-wide/16 v0, 0xbb8

    goto :goto_0

    .line 350
    :pswitch_2
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic o(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->r:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    .locals 2
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->h:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->r:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 291
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 184
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/ChatConnectionStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a(Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;)V

    .line 196
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 295
    const-string v0, "SecureChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: SecureChatSession onStreamProcessingStopped with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$4;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 305
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 167
    const-string v0, "SecureChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: SecureChatSession CONNECT on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/network/ConnectivityUtils;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->n:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    .line 169
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->k()V

    .line 170
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->n:Lcom/snapchat/android/util/chat/SecureChatSession$IntendedConnectionState;

    .line 175
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->l()V

    .line 176
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->o:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    return-object v0
.end method

.method public g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession tearDown"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->e:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a()V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->d:Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a()V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 211
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession tornDown successfully."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public h()V
    .locals 5

    .prologue
    .line 309
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECTING because receiving rate limit hit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$5;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 318
    return-void
.end method

.method public i()V
    .locals 5

    .prologue
    .line 322
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECTING because of ping timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$6;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 331
    return-void
.end method
