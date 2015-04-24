.class public Lcom/snapchat/android/livechat/AdlConcurrencyLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/livechat/LiveChatProvider;


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private volatile b:Lcom/snapchat/android/livechat/LiveChatProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)Lcom/snapchat/android/livechat/LiveChatProvider;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/livechat/LiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$2;-><init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 67
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 2
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
    .line 41
    sget-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$1;-><init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 54
    return-void
.end method

.method public a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 80
    sget-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$3;-><init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 90
    sget-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$4;-><init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;Lcom/snapchat/android/ui/here/DisconnectReason;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 96
    return-void
.end method

.method public a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v0, p1, p2}, Lcom/snapchat/android/livechat/LiveChatProvider;->a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V

    .line 122
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$5;-><init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/snapchat/android/livechat/AdlConcurrencyLayer;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/livechat/AdlConcurrencyLayer$6;-><init>(Lcom/snapchat/android/livechat/AdlConcurrencyLayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 116
    return-void
.end method
