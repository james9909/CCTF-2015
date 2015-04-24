.class Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/controller/countdown/SnapCountdownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/squareup/otto/Bus;

.field private final c:Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;

.field private final d:Lcom/snapchat/android/service/SnapchatServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v2, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;

    invoke-direct {v2}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;Lcom/snapchat/android/service/SnapchatServiceManager;)V

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;Lcom/snapchat/android/service/SnapchatServiceManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/otto/Bus;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;",
            "Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;",
            "Lcom/snapchat/android/service/SnapchatServiceManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->b:Lcom/squareup/otto/Bus;

    .line 43
    iput-object p2, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->a:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->c:Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;

    .line 45
    iput-object p4, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->d:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 46
    return-void
.end method

.method private a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->y()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "SNAP-LOG: MARKING snap from %s as viewed and replay available (TIMER FINISHED) (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->u_()V

    .line 95
    :goto_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 102
    return-void

    .line 89
    :cond_1
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "SNAP-LOG: MARKING snap from %s as viewed (TIMER FINISHED) (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p2}, Lcom/snapchat/android/model/ReceivedSnap;->r()V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/StorySnap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 105
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "SNAP-LOG: MARKING story snap from %s as viewed (TIMER FINISHED) due to 404 (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :goto_0
    invoke-static {p1, p2, v4}, Lcom/snapchat/android/util/StoryUtils;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/StorySnap;Z)V

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 116
    return-void

    .line 109
    :cond_0
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "SNAP-LOG: MARKING story snap from %s as viewed (TIMER FINISHED) (%s)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    instance-of v0, p2, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->c:Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;

    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;->a()Lcom/snapchat/android/api/UpdateStoriesTask;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UpdateStoriesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->d:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    goto :goto_0
.end method

.method private d(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    instance-of v1, p1, Lcom/snapchat/android/model/StorySnap;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 74
    check-cast v1, Lcom/snapchat/android/model/StorySnap;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/StorySnap;)V

    .line 78
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->b(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 80
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 5
    .parameter

    .prologue
    .line 55
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "onTimerFinish %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->d(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 57
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public b(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 5
    .parameter

    .prologue
    .line 61
    const-string v0, "SnapConsumptionRecorder"

    const-string v1, "onTimerSkipped %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;->d(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 63
    return-void
.end method

.method public c(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    return-void
.end method
