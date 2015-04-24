.class public Lcom/snapchat/android/livechat/AdlLiveChatProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/livechat/LiveChatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;,
        Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;
    }
.end annotation


# instance fields
.field a:Lcom/addlive/view/ALVideoTextureView;

.field b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

.field c:Lcom/addlive/service/listener/AddLiveServiceListener;

.field d:Lcom/snapchat/android/livechat/AdlPerfTracking;

.field e:Landroid/os/Handler;

.field f:Lcom/snapchat/android/util/system/Clock;

.field private g:Landroid/app/Activity;

.field private h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/String;

.field private l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

.field private m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

.field private n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

.field private o:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/snapchat/android/analytics/HereAnalytics;

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/snapchat/android/livechat/AdlHelper;->a()Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    .line 109
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 110
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 111
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->o:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 112
    iput-boolean v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->p:Z

    .line 113
    iput-boolean v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->q:Z

    .line 118
    iput-boolean v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    .line 132
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f:Lcom/snapchat/android/util/system/Clock;

    .line 676
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/analytics/HereAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->t:Lcom/snapchat/android/analytics/HereAnalytics;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Z)V

    return-void
.end method

.method private a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 4
    .parameter

    .prologue
    .line 556
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$4;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 567
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    const/16 v3, 0x1388

    invoke-interface {v1, v0, v2, v3}, Lcom/addlive/service/AddLiveService;->deferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 569
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->e:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Z)V

    .line 573
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    invoke-interface {v0, p1}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 574
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->d:Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlPerfTracking;->b()V

    .line 575
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 889
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v0, v0, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->o:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    return-object p1
.end method

.method static synthetic b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 629
    if-eqz p1, :cond_0

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/addlive/service/AddLiveService;->getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/addlive/service/MediaConnection;->getUsersInSession()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "setAllowedSenders(AUDIO)"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v3, v3, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    sget-object v4, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 637
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "setAllowedSenders(VIDEO)"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v3, v3, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    sget-object v4, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 639
    return-void

    .line 633
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->p:Z

    return p1
.end method

.method private b(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)Z
    .locals 2
    .parameter

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 902
    sget-object v1, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 914
    :goto_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    .line 907
    :pswitch_0
    const-string v1, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got user event while the application is in a wrong state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 910
    :pswitch_1
    const-string v1, "livechat"

    const-string v2, "Got a new media stream user event"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->t:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    .line 460
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->c:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 461
    invoke-virtual {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f()V

    .line 462
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Z)V

    .line 484
    :goto_0
    return-void

    .line 466
    :cond_0
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to scope: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)Lcom/addlive/service/ConnectionDescriptor;

    move-result-object v0

    .line 468
    new-instance v1, Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 478
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/addlive/service/AddLiveService;->connect(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V

    .line 481
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    .line 482
    iget-object v0, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->s:Ljava/lang/String;

    .line 483
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->c:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->o:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    return-object v0
.end method

.method private d(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "cancel deferred disconnect"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->cancelDeferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method private e(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)Lcom/addlive/service/ConnectionDescriptor;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 648
    new-instance v0, Lcom/addlive/service/ConnectionDescriptor;

    invoke-direct {v0}, Lcom/addlive/service/ConnectionDescriptor;-><init>()V

    .line 649
    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setAutopublishAudio(Z)V

    .line 650
    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setAutopublishVideo(Z)V

    .line 651
    iget-object v1, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setScopeId(Ljava/lang/String;)V

    .line 654
    new-instance v1, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v1}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    .line 655
    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    .line 656
    const/16 v2, 0x280

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    .line 657
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxFps(I)V

    .line 658
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setUseAdaptation(Z)V

    .line 659
    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setVideoStream(Lcom/addlive/service/VideoStreamDescriptor;)V

    .line 662
    new-instance v1, Lcom/addlive/service/AuthDetails;

    invoke-direct {v1}, Lcom/addlive/service/AuthDetails;-><init>()V

    .line 663
    iget-wide v2, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setUserId(Ljava/lang/Long;)V

    .line 664
    iget-object v2, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setSalt(Ljava/lang/String;)V

    .line 665
    iget-wide v2, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->expires:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setExpires(Ljava/lang/Long;)V

    .line 666
    iget-object v2, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setSignature(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setAuthDetails(Lcom/addlive/service/AuthDetails;)V

    .line 669
    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/addlive/service/AddLiveService;
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/addlive/service/AddLiveService;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;->b()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->q:Z

    .line 366
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->b:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    invoke-interface {v1}, Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;->a()Lcom/addlive/platform/InitState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addlive/platform/InitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 370
    :pswitch_0
    invoke-virtual {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e()V

    goto :goto_0

    .line 377
    :pswitch_1
    const-string v0, "livechat"

    const-string v1, "AddLive platform requested to initialise while in-init"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j()V

    goto :goto_0

    .line 386
    :pswitch_3
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an invalid platform init state while requesting init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    invoke-interface {v2}, Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;->a()Lcom/addlive/platform/InitState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic j(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 393
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 410
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/util/network/EndpointManager;->h()Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    new-instance v3, Lcom/addlive/platform/PlatformInitOptions;

    invoke-direct {v3}, Lcom/addlive/platform/PlatformInitOptions;-><init>()V

    .line 415
    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setStorageDir(Ljava/lang/String;)V

    .line 416
    const-wide/16 v4, 0x201

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setApplicationId(Ljava/lang/Long;)V

    .line 417
    const-string v1, "livechat"

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setInteractionsLogTag(Ljava/lang/String;)V

    .line 418
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setUseExternalVideoInput(Z)V

    .line 419
    invoke-virtual {v3, v2}, Lcom/addlive/platform/PlatformInitOptions;->setStreamerEndpointResolver(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setConsoleLoggingEnabled(Z)V

    .line 421
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setInteractionsLoggingEnabled(Z)V

    .line 423
    const-string v1, "livechat"

    const-string v2, "Requesting the AddLive SDK to initialize self"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/platform/PlatformInitListener;Landroid/os/Handler;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->g:Landroid/app/Activity;

    invoke-interface {v1, v0, v3, v2}, Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;->a(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V

    .line 425
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 536
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 549
    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 550
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    sget-object v3, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v0, v2, v3}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 551
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "publish(AUDIO)"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    sget-object v3, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 552
    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->o()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$5;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    .line 623
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->p()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k:Ljava/lang/String;

    .line 878
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->p()V

    .line 879
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->c:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 880
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Z)V

    .line 881
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->p:Z

    return v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 922
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->d:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v0

    .line 928
    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v1}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v1

    .line 930
    new-instance v2, Lcom/snapchat/android/livechat/AddLiveMessage;

    const-string v3, "CHANGE_PUBLISHED_RESOLUTION"

    invoke-direct {v2, v3}, Lcom/snapchat/android/livechat/AddLiveMessage;-><init>(Ljava/lang/String;)V

    .line 932
    :try_start_0
    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AddLiveMessage;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 933
    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AddLiveMessage;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "height"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 934
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "sendMessage"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v3, v3, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AddLiveMessage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    const-string v0, "livechat"

    const-string v1, "Failed to send change resolution request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->stop()V

    .line 942
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setSinkId(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->start()V

    .line 944
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->stop()V

    .line 948
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setSinkId(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    .line 957
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    .line 958
    new-instance v2, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$6;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;J)V

    iput-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->u:Landroid/content/BroadcastReceiver;

    .line 976
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->u:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 977
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->u:Landroid/content/BroadcastReceiver;

    .line 982
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    const-string v0, "livechat"

    const-string v1, "Releasing Adl Video chat provide"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    if-nez v0, :cond_0

    .line 167
    const-string v0, "livechat"

    const-string v1, "Got a request to release AdlLiveChatProvider while it\'s already released. Skipping"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;->a()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_3

    .line 174
    iput-boolean v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->q:Z

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    :cond_2
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 189
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 190
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    .line 193
    iput-boolean v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    goto :goto_0

    .line 177
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->g:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {p0, v0, v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V

    .line 178
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "removeServiceListener"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c:Lcom/addlive/service/listener/AddLiveServiceListener;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->removeServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V

    goto :goto_1
.end method

.method a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 528
    const-string v0, "livechat"

    const-string v1, "Got an AddLive connection error: %s (ERR: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 532
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 142
    const-string v0, "livechat"

    const-string v1, "Setting up AdlLiveChatProvider"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "livechat"

    const-string v1, "Got a request to initialise AdlLiveChatProvider while provider is already initialised. Skipping"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->g:Landroid/app/Activity;

    .line 149
    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    .line 150
    iput-object p3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->t:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/addlive/view/ALVideoTextureView;

    invoke-direct {v0, p1}, Lcom/addlive/view/ALVideoTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    .line 156
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    .line 157
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i()V

    .line 158
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->q()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    goto :goto_0
.end method

.method a(Lcom/snapchat/android/livechat/AddLiveMessage;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x280

    .line 856
    invoke-virtual {p1}, Lcom/snapchat/android/livechat/AddLiveMessage;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 857
    invoke-virtual {p1}, Lcom/snapchat/android/livechat/AddLiveMessage;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 858
    new-instance v2, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v2}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    .line 859
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxFps(I)V

    .line 860
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/addlive/service/VideoStreamDescriptor;->setUseAdaptation(Z)V

    .line 862
    if-ge v1, v4, :cond_0

    .line 864
    invoke-virtual {v2, v1}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    .line 865
    invoke-virtual {v2, v0}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    .line 871
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "reconfigureVideo"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v3, v3, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/addlive/service/AddLiveService;->reconfigureVideo(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/VideoStreamDescriptor;)V

    .line 872
    return-void

    .line 868
    :cond_0
    invoke-virtual {v2, v4}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    .line 869
    mul-int/lit16 v0, v0, 0x280

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 204
    const-string v0, "livechat"

    const-string v1, "Got a request to connect to AddLive session"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    if-nez v0, :cond_1

    .line 207
    const-string v0, "livechat"

    const-string v1, "Got an attempt to connect to AddLive scope, but the AdlLiveChatProvider is not initialised"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b:Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;->a()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_2

    .line 215
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->b:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 216
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    goto :goto_0

    .line 220
    :cond_2
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->d(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->s:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const-string v0, "livechat"

    const-string v1, "Got a request to connect to a scope while we\'re connecting to a different one. Call disconnect first."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :pswitch_2
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    goto :goto_0

    .line 259
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    goto :goto_0

    .line 262
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->f:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-direct {p0, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 263
    const-string v0, "livechat"

    const-string v1, "Got a request to connect to a scope while we\'re already connected to different one"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 274
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-void

    .line 282
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 985
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got change in reachability connected? ->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 992
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 994
    if-nez p1, :cond_0

    .line 995
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "disconnect"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m()V

    .line 997
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->b:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    goto :goto_0

    .line 1004
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1008
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$7;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1022
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 987
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .line 345
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/addlive/service/AddLiveService;->injectFrame([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V

    .line 347
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->r:Z

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 294
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a request to publish video stream, but the connection is in a wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    :goto_0
    return-void

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l()V

    .line 302
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k()V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d()V
    .locals 4

    .prologue
    .line 319
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a request to publish video stream, but the connection is in a wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    :goto_0
    return-void

    .line 324
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "unpublish(VIDEO)"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    sget-object v3, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 332
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "unpublish(AUDIO)"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    sget-object v3, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 333
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    const-string v0, "livechat"

    const-string v1, "AddLive SDK initialized"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    iget-boolean v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->q:Z

    if-nez v0, :cond_0

    .line 431
    const-string v0, "livechat"

    const-string v1, "Initialisation was cancelled while in-progress"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Lcom/snapchat/android/livechat/AdlListenerAdapter;

    new-instance v1, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;)V

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/livechat/AdlListenerAdapter;-><init>(Lcom/addlive/service/listener/AddLiveServiceListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c:Lcom/addlive/service/listener/AddLiveServiceListener;

    .line 436
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "addServiceListener"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c:Lcom/addlive/service/listener/AddLiveServiceListener;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->addServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 438
    new-instance v0, Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/livechat/AdlPerfTracking;-><init>(Lcom/addlive/service/AddLiveService;)V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->d:Lcom/snapchat/android/livechat/AdlPerfTracking;

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->d:Lcom/snapchat/android/livechat/AdlPerfTracking;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlPerfTracking;->a()V

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->b:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    if-ne v0, v1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    invoke-direct {p0, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 446
    :goto_1
    const-string v0, "livechat"

    const-string v1, "AddLive SDK initialized <- done"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 444
    :cond_1
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    goto :goto_1
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->t:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 503
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->d:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 506
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "startMeasuringStats"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    iget-object v2, v2, Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;->scope_id:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a()V

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h:Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-interface {v0, v1}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->n:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    if-ne v0, v1, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i:Ljava/lang/Runnable;

    .line 525
    :cond_2
    :goto_1
    return-void

    .line 491
    :pswitch_0
    const-string v0, "livechat"

    const-string v1, "Got a second call to connect. Probably remote user triggered it first"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 496
    :pswitch_1
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a connection result, after the provider is in invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 499
    :pswitch_2
    const-string v0, "livechat"

    const-string v1, "Successfully connected to AddLive Scope"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 578
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 581
    :pswitch_0
    const-string v0, "livechat"

    const-string v1, "Got a disconnect result while the SDK is already disconnected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 588
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    goto :goto_0

    .line 598
    :pswitch_2
    const-string v0, "livechat"

    const-string v1, "Got a disconnect result while the SDK is in the middle of setting up other connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 605
    :pswitch_3
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->a:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
