.class public Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
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
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->b:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->e:Ljava/util/Set;

    .line 38
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    .line 44
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/snapchat/android/model/server/chat/MessageStateMessage;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/server/chat/MessageStateMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 112
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "message_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    check-cast v0, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    .line 114
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/MessageStateMessage;->getChatMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    return-object v1
.end method

.method private a(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/chat/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 99
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "message_release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    .line 101
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ReleaseMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    return-object v1
.end method

.method private a(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V
    .locals 6
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v2, "message_release"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    check-cast p1, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/model/server/chat/ReleaseMessage;)Ljava/util/List;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 85
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 88
    if-eqz v0, :cond_1

    .line 89
    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v4, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->d:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v5, ""

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_2
    const-string v2, "message_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    check-cast p1, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/model/server/chat/MessageStateMessage;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->e:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 127
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    .line 128
    instance-of v4, v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    const-string v4, "SecureChatBatchedMessagesManager"

    const-string v5, "CHAT-LOG: ATTEMPT sending message as a part of batch over HTTP %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 134
    new-instance v0, Lcom/snapchat/android/api2/chat/PostChatsTask;

    new-instance v3, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/chat/PostChatsTask;-><init>(Ljava/util/List;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/chat/PostChatsTask;->g()V

    .line 148
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->e:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, ""

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
