.class public Lcom/snapchat/android/api/chat/LoadFeedPageTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;,
        Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/loq/conversations"

.field private static final TAG:Ljava/lang/String; = "LoadFeedPageTask"

.field private static final TASK_NAME:Ljava/lang/String; = "LoadFeedPageTask"

.field private static sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;


# instance fields
.field private mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

.field private final mIterToken:Ljava/lang/String;

.field private mStartMillis:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mIterToken:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

    .line 47
    return-void
.end method

.method public static a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {p0, v0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    invoke-direct {v1, v0, p0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;-><init>(Ljava/lang/String;Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;)V

    sput-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    .line 59
    sget-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "/loq/conversations"

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->sLoadFeedPageTaskInstance:Lcom/snapchat/android/api/chat/LoadFeedPageTask;

    .line 91
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 92
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->FAILED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 127
    const-string v0, "LoadFeedPageTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-nez p2, :cond_0

    .line 129
    const v0, 0x7f0c0132

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "checksum"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mIterToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "offset"

    iget-object v2, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mIterToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->server_info:Lcom/google/gson/internal/LinkedTreeMap;

    .line 97
    if-eqz v1, :cond_2

    .line 98
    const-string v0, "response_compare_result"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "equal"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 100
    const-string v0, "LoadFeedPageTask"

    const-string v1, "onSuccess - response is pruned"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v0, "response_compare_result"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "not_equal"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const-string v0, "response_checksum"

    invoke-virtual {v1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->l(Ljava/lang/String;)V

    .line 106
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->conversations_response:Ljava/util/List;

    .line 107
    const-string v1, "LoadFeedPageTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess - response not pruned, # of conversations="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;

    .line 111
    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/ServerChatConversation;->iter_token:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 114
    :cond_3
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->conversations_response:Ljava/util/List;

    invoke-virtual {p0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->j()I

    move-result v2

    invoke-virtual {v0, v1, v5, v5, v2}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/util/List;ZZI)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->EMPTY_RESPONSE_REACHED:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "LoadFeedPageTask"

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/snapchat/android/api/RequestTask;->onPreExecute()V

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mInterface:Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;

    sget-object v1, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->RUNNING:Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->mStartMillis:J

    .line 67
    return-void
.end method
