.class public Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/ChatConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    iput-boolean v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->e:Z

    .line 32
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;

    .line 33
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    iput p3, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->c:I

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->e:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 46
    const-string v0, "SecureChatSessionMessageRateLimiter"

    const-string v1, "CHAT-LOG: SecureChatSessionMessageRateLimiter STARTED"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->e:Z

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->c()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_0

    .line 51
    const-string v0, "SecureChatSessionMessageRateLimiter"

    const-string v1, "CHAT-LOG: SecureChatSessionMessageRateLimiter STOPPED"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iput-boolean v3, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->e:Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->c:I

    if-le v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter$SecureChatSessionMessageRateLimiterInterface;->h()V

    .line 41
    :cond_0
    return-void
.end method
