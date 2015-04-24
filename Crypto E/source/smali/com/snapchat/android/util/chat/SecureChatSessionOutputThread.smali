.class public Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

.field private final b:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/snapchat/android/model/server/chat/SCMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Lcom/snapchat/android/util/chat/SCMessageOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
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
.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 38
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->c:Ljava/util/concurrent/SynchronousQueue;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;->a:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->f:Ljava/util/List;

    .line 45
    const-string v0, "SecureChatSessionOutputThread"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->setName(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;

    .line 128
    invoke-interface {v0, p1}, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;

    .line 122
    invoke-interface {v0}, Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;->a()V

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->interrupt()V

    .line 117
    invoke-static {p0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Thread;)V

    .line 118
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string v0, "SecureChatSessionOutputThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: SecureChatSessionOutputThread writeMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->e:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;->b:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;

    if-ne v0, v2, :cond_1

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->m:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v4, "Couldn\'t add message to output message queue"

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    monitor-exit v1

    .line 65
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->j:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v4, "Output stream not connected"

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/util/chat/ChatStreamProcessingStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/SCMessageOutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->c:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const/4 v2, 0x0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->c:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;

    .line 79
    const-string v1, "SecureChatSessionOutputThread"

    const-string v3, "CHAT-LOG: SecureChatSessionOutputThread got output stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;->b:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->b()V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/server/chat/SCMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :try_start_1
    const-string v3, "SecureChatSessionOutputThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHAT-LOG: SecureChatSessionOutputThread writing message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a(Lcom/snapchat/android/model/server/chat/SCMessage;)V

    .line 87
    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->h:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v1, v0

    .line 98
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;->a:Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread$ThreadState;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0, v1}, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a(Ljava/lang/Exception;)V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    .line 103
    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSessionOutputThread;->a:Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->h:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in SecureChatSessionOutputThread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_3

    .line 94
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 96
    goto :goto_2

    .line 107
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method
