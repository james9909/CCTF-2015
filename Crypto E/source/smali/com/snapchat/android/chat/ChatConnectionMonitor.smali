.class public Lcom/snapchat/android/chat/ChatConnectionMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/networkmanager/NetworkStatusListener;


# static fields
.field private static a:Lcom/snapchat/android/chat/ChatConnectionMonitor;


# instance fields
.field private final b:Lcom/snapchat/android/model/chat/ChatConversationManager;

.field private final c:Lcom/snapchat/android/chat/SendingMailman;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/chat/ChatConnectionMonitor;-><init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/chat/SendingMailman;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/chat/SendingMailman;)V
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->b:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 52
    iput-object p3, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->c:Lcom/snapchat/android/chat/SendingMailman;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->d:Ljava/util/Map;

    .line 54
    invoke-virtual {p1, p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V

    .line 55
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/chat/ChatConnectionMonitor;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/snapchat/android/chat/ChatConnectionMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;

    invoke-direct {v0}, Lcom/snapchat/android/chat/ChatConnectionMonitor;-><init>()V

    sput-object v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    .line 61
    :cond_0
    sget-object v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a:Lcom/snapchat/android/chat/ChatConnectionMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 4

    .prologue
    .line 65
    const-class v1, Lcom/snapchat/android/chat/ChatConnectionMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    iget-object v0, v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a:Lcom/snapchat/android/chat/ChatConnectionMonitor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :cond_1
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 79
    const-string v0, "ChatConnectionMonitor"

    const-string v1, "CHAT-LOG: ChatConnectionMonitor onConnectivityChanged %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->f:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->c()V

    .line 86
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->f:Z

    .line 75
    return-void
.end method

.method protected c()V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->b:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 95
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILcom/snapchat/android/model/ReceivedSnap;Z)I

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->e:Z

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->b:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 110
    iget-object v2, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/chat/SendingMailman;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public e()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 115
    iput-boolean v8, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->e:Z

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->b:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 119
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->G()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 122
    const-string v1, "ChatConnectionMonitor"

    const-string v3, "CHAT-LOG: TCP DISCONNECTED and fetching conversation data from server"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V

    .line 127
    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/chat/SendingMailman;->f(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 129
    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 135
    :goto_1
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    new-instance v3, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/snapchat/android/chat/ChatConnectionMonitor$1;-><init>(Lcom/snapchat/android/chat/ChatConnectionMonitor;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/os/Handler;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_0
    :goto_2
    invoke-virtual {v0, v9}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 161
    invoke-virtual {v0, v8}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 162
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v3, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TCP DISCONNECTED"

    invoke-direct {v3, v0, v8, v4}, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    iget-object v3, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 152
    :cond_2
    const-string v1, "ChatConnectionMonitor"

    const-string v3, "CHAT-LOG: TCP DISCONNECTED but enough time has passed since last TCP message sent"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m()V

    goto :goto_2

    .line 165
    :cond_3
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/snapchat/android/chat/ChatConnectionMonitor;->e:Z

    return v0
.end method
