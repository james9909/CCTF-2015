.class Lcom/snapchat/android/livechat/AdlListenerAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlListenerAdapter;->onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/service/listener/UserStateChangedEvent;

.field final synthetic b:Lcom/snapchat/android/livechat/AdlListenerAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlListenerAdapter;Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$5;->b:Lcom/snapchat/android/livechat/AdlListenerAdapter;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$5;->a:Lcom/addlive/service/listener/UserStateChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$5;->b:Lcom/snapchat/android/livechat/AdlListenerAdapter;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlListenerAdapter;->a(Lcom/snapchat/android/livechat/AdlListenerAdapter;)Lcom/addlive/service/listener/AddLiveServiceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlListenerAdapter$5;->a:Lcom/addlive/service/listener/UserStateChangedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/service/listener/AddLiveServiceListener;->onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V

    .line 76
    return-void
.end method
