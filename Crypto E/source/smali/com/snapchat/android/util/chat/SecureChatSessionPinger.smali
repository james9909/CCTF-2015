.class public Lcom/snapchat/android/util/chat/SecureChatSessionPinger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/ChatConnectionStateListener;
.implements Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:J

.field private final d:J

.field private volatile e:Z

.field private f:Ljava/util/concurrent/ScheduledFuture;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;Ljava/util/concurrent/ScheduledExecutorService;JJ)V
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->g:Ljava/util/Set;

    .line 47
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;

    .line 48
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    iput-wide p3, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->c:J

    .line 50
    iput-wide p5, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->d:J

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->c()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;)Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;)V

    iget-wide v2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->c:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 85
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: PING TIMED OUT! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;->i()V

    .line 134
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 89
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->e:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/snapchat/android/model/server/chat/PingMessage;

    invoke-direct {v0}, Lcom/snapchat/android/model/server/chat/PingMessage;-><init>()V

    .line 91
    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;Lcom/snapchat/android/model/server/chat/PingMessage;)V

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a(Lcom/snapchat/android/model/server/chat/PingMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string v0, "SecureChatSessionPinger"

    const-string v1, "CHAT-LOG: Called writePingMessage but pinger not running!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/server/chat/PingMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->a:Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;

    invoke-interface {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$SecureChatSessionPingerInterface;->a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 116
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ping_response"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: RECEIVED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    check-cast p1, Lcom/snapchat/android/model/server/chat/PingResponse;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/PingResponse;->getPingId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 70
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b()V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->e:Z

    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->c()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->e:Z

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSessionPinger$3;-><init>(Lcom/snapchat/android/util/chat/SecureChatSessionPinger;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionPinger;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 127
    return-void
.end method
