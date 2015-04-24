.class Lcom/snapchat/android/livechat/AdlListenerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlListenerAdapter;->onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/service/listener/SessionReconnectedEvent;

.field final synthetic b:Lcom/snapchat/android/livechat/AdlListenerAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/SessionReconnectedEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$3;->b:Lcom/snapchat/android/livechat/AdlListenerAdapter;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$3;->a:Lcom/addlive/service/listener/SessionReconnectedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$3;->b:Lcom/snapchat/android/livechat/AdlListenerAdapter;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlListenerAdapter;->a(Lcom/snapchat/android/livechat/AdlListenerAdapter;)Lcom/addlive/service/listener/AddLiveServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$3;->a:Lcom/addlive/service/listener/SessionReconnectedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/service/listener/AddLiveServiceListener;->onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V

    .line 56
    return-void
.end method
