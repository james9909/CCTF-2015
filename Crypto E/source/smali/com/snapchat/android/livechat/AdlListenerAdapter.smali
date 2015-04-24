.class public Lcom/snapchat/android/livechat/AdlListenerAdapter;
.super Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lcom/addlive/service/listener/AddLiveServiceListener;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/addlive/service/listener/AddLiveServiceListener;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->a:Lcom/addlive/service/listener/AddLiveServiceListener;

    .line 27
    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlListenerAdapter;)Lcom/addlive/service/listener/AddLiveServiceListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->a:Lcom/addlive/service/listener/AddLiveServiceListener;

    return-object v0
.end method


# virtual methods
.method public onConnectionLost(Lcom/addlive/service/listener/ConnectionLostEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/livechat/AdlListenerAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlListenerAdapter$2;-><init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/ConnectionLostEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/livechat/AdlListenerAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlListenerAdapter$5;-><init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/UserStateChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public onMessage(Lcom/addlive/service/listener/MessageEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/livechat/AdlListenerAdapter$6;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlListenerAdapter$6;-><init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/MessageEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/livechat/AdlListenerAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlListenerAdapter$3;-><init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/SessionReconnectedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/livechat/AdlListenerAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlListenerAdapter$4;-><init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/UserStateChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter;->b:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/livechat/AdlListenerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/livechat/AdlListenerAdapter$1;-><init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method
