.class public Lcom/snapchat/android/service/SnapchatService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/service/SnapchatService$PostProcessRunnable;,
        Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;,
        Lcom/snapchat/android/service/SnapchatService$SimpleThreadFactory;
    }
.end annotation


# static fields
.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ThreadFactory;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private g:J

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Lcom/snapchat/android/service/SnapchatService$SimpleThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snapchat/android/service/SnapchatService$SimpleThreadFactory;-><init>(Lcom/snapchat/android/service/SnapchatService$1;)V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->b:Ljava/util/concurrent/ThreadFactory;

    .line 285
    new-instance v0, Lcom/snapchat/android/service/SnapchatService$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/service/SnapchatService$1;-><init>(Lcom/snapchat/android/service/SnapchatService;)V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/service/SnapchatService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)Lcom/snapchat/android/operation/Operation;
    .locals 2
    .parameter

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 143
    const-string v0, "op_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 144
    packed-switch v0, :pswitch_data_0

    .line 188
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 146
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/operation/NotificationOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/NotificationOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :pswitch_2
    new-instance v0, Lcom/snapchat/android/operation/ClearViewedChatMessagesOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/ClearViewedChatMessagesOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :pswitch_3
    new-instance v0, Lcom/snapchat/android/operation/FindFriendsOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/FindFriendsOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :pswitch_4
    new-instance v0, Lcom/snapchat/android/operation/PingUrlOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/PingUrlOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :pswitch_5
    new-instance v0, Lcom/snapchat/android/operation/UpdateHttpMetricsOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/UpdateHttpMetricsOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :pswitch_6
    new-instance v0, Lcom/snapchat/android/discover/operation/ChannelListOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/operation/ChannelListOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :pswitch_7
    new-instance v0, Lcom/snapchat/android/operation/SnapTagOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/SnapTagOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :pswitch_8
    new-instance v0, Lcom/snapchat/android/operation/SnapTagDownloadOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/SnapTagDownloadOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :pswitch_9
    new-instance v0, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/identity/ValidateEmailOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :pswitch_a
    new-instance v0, Lcom/snapchat/android/operation/identity/SettingsOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/identity/SettingsOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 176
    :pswitch_b
    new-instance v0, Lcom/snapchat/android/operation/UpdateSnapsOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/UpdateSnapsOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :pswitch_c
    new-instance v0, Lcom/snapchat/android/operation/LogoutOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/LogoutOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :pswitch_d
    new-instance v0, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/identity/ChangeEmailOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    :pswitch_e
    new-instance v0, Lcom/snapchat/android/operation/identity/ReauthOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/operation/identity/ReauthOperation;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private a(Lcom/snapchat/android/operation/Operation;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalizeRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-interface {p1}, Lcom/snapchat/android/operation/Operation;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/service/SnapchatService;->b(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/service/SnapchatService;Lcom/snapchat/android/operation/Operation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/snapchat/android/service/SnapchatService;->a(Lcom/snapchat/android/operation/Operation;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/service/SnapchatService;)Lcom/snapchat/android/service/SnapchatServiceManager;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 213
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    const-string v1, "SnapchatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalizeRequest - requestId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(I)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->c(Landroid/content/Intent;)V

    :cond_0
    move v1, v2

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "SnapchatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed one future - mFutureList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    add-int/lit8 v1, v1, -0x1

    .line 228
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 236
    :cond_2
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalizeRequest mStopRunnable futureList.size()=="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " hasPendingIntents="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v3}, Lcom/snapchat/android/service/SnapchatServiceManager;->e()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    const-string v0, "SnapchatService"

    const-string v1, "Will stop service in 5 seconds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/service/SnapchatService;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/service/SnapchatService;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/snapchat/android/service/SnapchatService;->g:J

    return-wide v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/service/SnapchatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->a:Landroid/content/Context;

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/service/SnapchatService;->g:J

    .line 89
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/snapchat/android/service/SnapchatService;->f:Landroid/os/Handler;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->c:Ljava/util/concurrent/ExecutorService;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    .line 95
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->e:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 194
    const-string v0, "SnapchatService"

    const-string v1, "onDestroy()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 196
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 103
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/snapchat/android/service/SnapchatService;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/snapchat/android/service/SnapchatService;->a(Landroid/content/Intent;)Lcom/snapchat/android/operation/Operation;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create a service operation from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/snapchat/android/service/SnapchatService;->b(Landroid/content/Intent;)V

    .line 116
    :goto_0
    return v5

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/service/SnapchatService$ProcessRunnable;-><init>(Lcom/snapchat/android/service/SnapchatService;Lcom/snapchat/android/operation/Operation;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v1, "SnapchatService"

    const-string v2, "The new operation %s has been submitted. mFutureList.size()=%d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/snapchat/android/service/SnapchatService;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
