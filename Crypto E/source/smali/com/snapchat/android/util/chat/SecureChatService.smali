.class public Lcom/snapchat/android/util/chat/SecureChatService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/networkmanager/NetworkStatusListener;
.implements Lcom/snapchat/android/util/chat/ChatConnectionStateListener;
.implements Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;,
        Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;,
        Lcom/snapchat/android/util/chat/SecureChatService$Protocol;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/snapchat/android/model/chat/ChatConversationManager;

.field private final e:Lcom/snapchat/android/chat/SendingMailman;

.field private final f:Lcom/snapchat/android/chat/ReceivingMailman;

.field private final g:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

.field private final h:Lcom/snapchat/android/chat/ChatConnectionMonitor;

.field private final i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private j:Lcom/snapchat/android/util/chat/SecureChatSession;

.field private k:Landroid/content/SharedPreferences;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 58
    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/chat/ReceivingMailman;->a()Lcom/snapchat/android/chat/ReceivingMailman;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a()Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a()Lcom/snapchat/android/chat/ChatConnectionMonitor;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/util/chat/SecureChatService;-><init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Landroid/os/Handler;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/ReceivingMailman;Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;Lcom/snapchat/android/chat/ChatConnectionMonitor;Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;Landroid/os/Handler;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/chat/ReceivingMailman;Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;Lcom/snapchat/android/chat/ChatConnectionMonitor;Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->a:Landroid/os/IBinder;

    .line 70
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 71
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SecureChatService;->c:Landroid/os/Handler;

    .line 72
    iput-object p3, p0, Lcom/snapchat/android/util/chat/SecureChatService;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 73
    iput-object p4, p0, Lcom/snapchat/android/util/chat/SecureChatService;->e:Lcom/snapchat/android/chat/SendingMailman;

    .line 74
    iput-object p5, p0, Lcom/snapchat/android/util/chat/SecureChatService;->f:Lcom/snapchat/android/chat/ReceivingMailman;

    .line 75
    iput-object p6, p0, Lcom/snapchat/android/util/chat/SecureChatService;->g:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    .line 76
    iput-object p7, p0, Lcom/snapchat/android/util/chat/SecureChatService;->h:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    .line 77
    iput-object p8, p0, Lcom/snapchat/android/util/chat/SecureChatService;->i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatService;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatService;)Lcom/snapchat/android/chat/ReceivingMailman;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->f:Lcom/snapchat/android/chat/ReceivingMailman;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->e:Lcom/snapchat/android/chat/SendingMailman;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/SendingMailman;->a(Z)V

    .line 205
    return-void
.end method

.method public a(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 159
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService onNetworkConnectivityChanged %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->l:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->b()V

    .line 163
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: ATTEMPT sending message %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 138
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f()Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->b:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: Adding message to pending messages because TCP is connecting %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->e:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->canSendOverHTTP()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->g:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->a:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->f:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TCP connection unavailable and can\'t send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over HTTP."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_message"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->i:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->c:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatService$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/chat/SecureChatService$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;Lcom/snapchat/android/model/server/chat/SCMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 189
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->a:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->e:Lcom/snapchat/android/chat/SendingMailman;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/SendingMailman;->a(Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->e:Lcom/snapchat/android/chat/SendingMailman;

    invoke-virtual {v0}, Lcom/snapchat/android/chat/SendingMailman;->c()V

    .line 193
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->c:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->h:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    invoke-virtual {v0}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->d()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->h:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    invoke-virtual {v0}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->e()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/snapchat/android/util/chat/SecureChatService;->l:Z

    .line 153
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->k:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->k:Landroid/content/SharedPreferences;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->k:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->an:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService START SESSION"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b()V

    .line 114
    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 117
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService STOP SESSION"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 119
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->c:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatService$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatService$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatService;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V

    .line 83
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/ChatConnectionStateListener;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 97
    const-string v0, "SecureChatService"

    const-string v1, "CHAT-LOG: SecureChatService stopping session onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService;->j:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g()V

    .line 100
    return-void
.end method
