.class public Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

.field private final b:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Lcom/snapchat/android/util/chat/SCMessageInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->b:Ljava/util/concurrent/SynchronousQueue;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->d:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->e:Ljava/util/List;

    .line 31
    const-string v0, "SecureChatSessionInputThread"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->setName(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

    .line 33
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;

    .line 91
    invoke-interface {v0, p1}, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;

    .line 85
    invoke-interface {v0}, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;->a()V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->interrupt()V

    .line 80
    invoke-static {p0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Thread;)V

    .line 81
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/SCMessageInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->b:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->b:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SCMessageInputStream;

    .line 47
    const-string v1, "SecureChatSessionInputThread"

    const-string v3, "CHAT-LOG: SecureChatSessionInputThread got input stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->b()V

    .line 50
    :goto_1
    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a()Lcom/snapchat/android/model/server/chat/SCMessage;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;

    .line 53
    invoke-interface {v1, v3}, Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;->a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 64
    :goto_3
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 55
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionInputThread;->a:Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;

    invoke-virtual {v1}, Lcom/snapchat/android/util/chat/SecureChatSessionMessageRateLimiter;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 63
    goto :goto_3

    .line 66
    :cond_2
    return-void
.end method
