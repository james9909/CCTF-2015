.class public Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/ChatReceivedMessageListener;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    const/high16 v1, 0x3f40

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    iput-wide p2, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->d:J

    .line 38
    return-void
.end method

.method private a(Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getAckId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->a:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->l:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;->getFailureReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 89
    if-eqz v0, :cond_0

    .line 90
    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->k:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v4, "Message timed out"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->d:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 101
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation_message_response"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;

    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a(Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;)V

    .line 45
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 48
    instance-of v0, p1, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/server/chat/ConversationMessage;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ConversationMessage;->needsACK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->c(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/SCMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->a:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 67
    if-eqz v0, :cond_0

    .line 68
    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    invoke-interface {v0, v2, v1, p2, p3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatMessageAckTracker;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;

    .line 71
    if-eqz v0, :cond_1

    .line 72
    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$Protocol;->b:Lcom/snapchat/android/util/chat/SecureChatService$Protocol;

    invoke-interface {v0, v2, v1, p2, p3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 74
    :cond_1
    return-void
.end method
