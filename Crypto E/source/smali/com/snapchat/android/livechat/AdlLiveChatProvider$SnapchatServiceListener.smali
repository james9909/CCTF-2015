.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;
.super Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnapchatServiceListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;-><init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    return-void
.end method


# virtual methods
.method public onConnectionLost(Lcom/addlive/service/listener/ConnectionLostEvent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 701
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got lost connection to AddLive session with scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    sget-object v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    const-string v0, "livechat"

    const-string v1, "Got connection lost for deferred disconnected connection. Canceling reconnect"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->g(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "disconnectOnConnLost"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 734
    :goto_1
    return-void

    .line 709
    :pswitch_0
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got user event while the application is in a wrong state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 712
    :pswitch_1
    const-string v0, "livechat"

    const-string v1, "Got a connection lost event"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 724
    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->isWillReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->c:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    goto :goto_1

    .line 730
    :cond_1
    const-string v0, "livechat"

    const-string v1, "Got lost connection to AddLive session - the SDK will not attempt to reconnect due toexpired credentials. Will try to reconnect with hopefully updated credentials"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    goto :goto_1

    .line 704
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 805
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getMediaType()Lcom/addlive/service/MediaType;

    move-result-object v0

    sget-object v1, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    if-ne v0, v1, :cond_0

    .line 813
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const-string v0, "livechat"

    const-string v1, "Remote peer published video. Rendering it"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getVideoSinkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 821
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/HereAnalytics;->d()V

    .line 822
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 832
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Z)Z

    .line 833
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->m(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Z)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->l(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 828
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    goto :goto_1
.end method

.method public onMessage(Lcom/addlive/service/listener/MessageEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/MessageEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/addlive/service/listener/MessageEvent;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 845
    :try_start_0
    invoke-static {v0}, Lcom/snapchat/android/livechat/AddLiveMessage;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AddLiveMessage;

    move-result-object v1

    .line 846
    const-string v2, "CHANGE_PUBLISHED_RESOLUTION"

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AddLiveMessage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AddLiveMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    :catch_0
    move-exception v1

    .line 850
    const-string v1, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse AddLive message. raw data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 740
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/SessionReconnectedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->d:Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    if-eq v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c()V

    goto :goto_0
.end method

.method public onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    sget-object v2, Lcom/snapchat/android/livechat/AdlLiveChatProvider$8;->a:[I

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    const-string v0, "livechat"

    const-string v2, "Got user event for session other than the current most one. Ignoring"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    :goto_1
    return-void

    .line 756
    :pswitch_0
    const-string v2, "livechat"

    const-string v3, "Got user event prior to receiving the connect result. Forcing the onConnected()"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->i(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f()V

    goto :goto_0

    .line 766
    :pswitch_1
    const-string v0, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got user event while the application is in a wrong state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 769
    :pswitch_2
    const-string v2, "livechat"

    const-string v3, "Got a new user event"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 780
    const-string v2, "livechat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote peer joined the AddLive session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_REMOTE_PEER_JOINED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 783
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getVideoSinkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 787
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/HereAnalytics;->d()V

    .line 788
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v3, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v2, v3}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 792
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Z)V

    .line 798
    :goto_2
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-static {v2, v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Z)Z

    goto/16 :goto_1

    .line 794
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->h(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 798
    goto :goto_3

    .line 752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 680
    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getSinkId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    iget-object v0, v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/ALVideoTextureView;->resolutionChanged(II)V

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->d(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    if-ne v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->c:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 688
    const-string v0, "livechat"

    const-string v1, "Received remote video frame size changed. Reporting first frame"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->b(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;->a(Z)V

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/HereAnalytics;->e()V

    .line 691
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$SnapchatServiceListener;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const-string v0, "livechat"

    const-string v1, "Got local video frame size changed: %s -> %dx%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getSinkId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
