.class public Lcom/addlive/impl/ADLServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/AddLiveService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/impl/ADLServiceImpl$2;,
        Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;
    }
.end annotation


# instance fields
.field private appContext:Landroid/content/Context;

.field private broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

.field private nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

.field private usesExternalCamera:Z

.field private usesLoudSpeaker:Z


# direct methods
.method public constructor <init>(Lcom/addlive/impl/ADLNativeWrapper;Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/impl/ADLServiceImpl;->usesLoudSpeaker:Z

    .line 78
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    .line 79
    iput-object p2, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    .line 80
    iput-boolean p3, p0, Lcom/addlive/impl/ADLServiceImpl;->usesExternalCamera:Z

    .line 81
    new-instance v0, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/impl/ADLServiceImpl$1;)V

    iput-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    .line 82
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/addlive/impl/ADLServiceImpl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    return-object v0
.end method


# virtual methods
.method public addServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/listener/AddLiveServiceListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method addServiceListener()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p2}, Lcom/addlive/impl/ADLNativeWrapper;->addServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 158
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public cancelDeferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method cancelDeferredDisconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "cancelDeferredDisconnect"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 319
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 320
    return-void
.end method

.method public connect(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/MediaConnection;",
            ">;",
            "Lcom/addlive/service/ConnectionDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3ee

    .line 277
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v0, "connect"

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 280
    :try_start_0
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 281
    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->getScopeId()Ljava/lang/String;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v3, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;

    invoke-direct {v3, p0, p1, v0}, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to serialise the connection descriptor due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to serialise the connection descriptor due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public deferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method deferredDisconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "deferredDisconnect"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 309
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 310
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;

    invoke-direct {v2, p0, p1, p2}, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 311
    return-void
.end method

.method public disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 297
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "disconnect"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 300
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;

    invoke-direct {v2, p0, p1, p2}, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 301
    return-void
.end method

.method public draw(Lcom/addlive/service/DrawRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p1}, Lcom/addlive/impl/ADLNativeWrapper;->draw(Lcom/addlive/service/DrawRequest;)V

    .line 467
    return-void
.end method

.method public flushEvents(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 517
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "flushEvents"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 519
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 520
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 521
    return-void
.end method

.method public getAudioOutputDevice(Lcom/addlive/service/Responder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/AudioOutputDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/addlive/impl/ADLServiceImpl;->usesLoudSpeaker:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/addlive/service/AudioOutputDevice;->LOUD_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v0, Lcom/addlive/service/AudioOutputDevice;->PHONE_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAudioOutputDeviceNames(Lcom/addlive/service/Responder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->asDeviceArray()[Lcom/addlive/service/Device;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->getActiveConnections()Ljava/util/Map;

    move-result-object v0

    .line 326
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    return-object v0
.end method

.method public getEventsChecksum(Lcom/addlive/service/Responder;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getEventsChecksum"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 513
    return-void
.end method

.method public getProperty(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 434
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method getProperty("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v0, "global.dev.audio.androidAudioStream"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 449
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v0, "global.logs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v0, Lcom/addlive/impl/AerPublisher;

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/addlive/impl/AerPublisher;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {v0}, Lcom/addlive/impl/AerPublisher;->collectLogs()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getProperty"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 448
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    goto :goto_0
.end method

.method public getVersion(Lcom/addlive/service/Responder;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method getVersion()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getVersion"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 107
    return-void
.end method

.method public getVideoCaptureDevice(Lcom/addlive/service/Responder;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method getVideoCaptureDevice()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getVideoCaptureDevice"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 198
    return-void
.end method

.method public getVideoCaptureDeviceNames(Lcom/addlive/service/Responder;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method getVideoCaptureDeviceNames()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getVideoCaptureDeviceNames"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 174
    return-void
.end method

.method public injectFrame([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/addlive/impl/ADLServiceImpl;->usesExternalCamera:Z

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The SDK is not configured to use the external camera implementation. Enable this during the platform init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 478
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 481
    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 482
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 483
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    add-int/2addr v0, v1

    rem-int/lit8 v7, v0, 0x4

    .line 488
    :goto_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    check-cast v1, Lcom/addlive/impl/ADLNativeWrapperImpl;

    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getHeight()I

    move-result v4

    array-length v5, p1

    const/16 v6, 0x11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/addlive/impl/ADLNativeWrapperImpl;->injectFrame([BIIIIIJ)V

    .line 496
    return-void

    .line 485
    :cond_1
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v1, v1, 0x5a

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v7, v0, 0x4

    goto :goto_0
.end method

.method public monitorSpeechActivity(Lcom/addlive/service/Responder;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 405
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method monitorSpeechActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "monitorSpeechActivity"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 409
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 410
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 411
    return-void
.end method

.method public networkTest(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/ConnectionQuality;",
            ">;",
            "Lcom/addlive/service/ConnectionDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method networkTest()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "networkTest"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 267
    :try_start_0
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 268
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method publish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "publish"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 335
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p3}, Lcom/addlive/service/MediaType;->getStrValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 336
    sget-object v1, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    if-ne p3, v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lcom/addlive/impl/ADLNativeWrapper;->setAudioPublishingState(ZLjava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v1}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 341
    return-void
.end method

.method public reconfigureVideo(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/VideoStreamDescriptor;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/VideoStreamDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method reconfigureVideo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v0, "reconfigureVideo"

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    :try_start_0
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p3}, Lcom/addlive/service/VideoStreamDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v2, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 136
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const/16 v2, 0x3ee

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to serialise the video stream descriptor due to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v0, "AddLive_SDK"

    const-string v1, "Got an attempt to unregister not registered broadcast receiver"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/listener/AddLiveServiceListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method removeServiceListener()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p2}, Lcom/addlive/impl/ADLNativeWrapper;->removeServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 166
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public renderSink(Lcom/addlive/service/RenderRequest;)I
    .locals 2
    .parameter

    .prologue
    .line 453
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method renderSink()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p1}, Lcom/addlive/impl/ADLNativeWrapper;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    return v0
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/addlive/impl/ADLServiceImpl;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "sendMessage"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 372
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 373
    if-eqz p4, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 377
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/addlive/impl/ADLServiceImpl;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[BLjava/lang/Long;)V

    .line 384
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[BLjava/lang/Long;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/addlive/impl/ADLServiceImpl;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    return-void
.end method

.method public sendReportWithCredentials(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 529
    new-instance v0, Lcom/addlive/impl/ADLServiceImpl$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/addlive/impl/ADLServiceImpl$1;-><init>(Lcom/addlive/impl/ADLServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "global.service.X"

    invoke-virtual {p0, v0, v1}, Lcom/addlive/impl/ADLServiceImpl;->getProperty(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method setAllowedSenders("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v0, "setAllowedSenders"

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 146
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 147
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 150
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v2, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 151
    return-void
.end method

.method public setApplicationId(Lcom/addlive/service/Responder;Ljava/lang/Long;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method setApplicationId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setApplicationId"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 98
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 99
    return-void
.end method

.method public setAudioOutputDevice(Lcom/addlive/service/Responder;Lcom/addlive/service/AudioOutputDevice;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/AudioOutputDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Lcom/addlive/impl/ADLServiceImpl$2;->$SwitchMap$com$addlive$service$AudioOutputDevice:[I

    invoke-virtual {p2}, Lcom/addlive/service/AudioOutputDevice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 219
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/addlive/impl/ADLNativeWrapper;->setLoudSpeaker(Z)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/addlive/impl/ADLNativeWrapper;->setLoudSpeaker(Z)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioOutputDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    :try_start_0
    invoke-static {p2}, Lcom/addlive/service/AudioOutputDevice;->fromStringId(Ljava/lang/String;)Lcom/addlive/service/AudioOutputDevice;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/addlive/impl/ADLServiceImpl;->setAudioOutputDevice(Lcom/addlive/service/Responder;Lcom/addlive/service/AudioOutputDevice;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const/16 v1, 0x3ea

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 425
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method setProperty("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setProperty"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 428
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 429
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 430
    return-void
.end method

.method public setProxyServer(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 113
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method setProxyServer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setProxyServer"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 119
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 120
    return-void
.end method

.method public setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method setVideoCaptureDevice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setVideoCaptureDevice"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 191
    return-void
.end method

.method public setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;Landroid/view/SurfaceView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/addlive/impl/ADLServiceImpl;->setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public startEventsTracking(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v2, "startEventsTracking"

    invoke-direct {v1, v2}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 506
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v2, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 507
    return-void
.end method

.method public startLocalVideo(Lcom/addlive/service/Responder;Landroid/view/SurfaceView;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method startLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v1, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v1, p2}, Lcom/addlive/impl/ADLNativeWrapper;->startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/SurfaceView;)V

    .line 244
    return-void
.end method

.method public startLocalVideo(Lcom/addlive/service/Responder;Landroid/view/TextureView;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/TextureView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method startLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v1, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v1, p2}, Lcom/addlive/impl/ADLNativeWrapper;->startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/TextureView;)V

    .line 251
    return-void
.end method

.method public startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 395
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method startMeasuringStats("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "startMeasuringStatistics"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 399
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 400
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 401
    return-void
.end method

.method public stopLocalVideo(Lcom/addlive/service/Responder;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method stopLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "stopLocalVideo"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 258
    return-void
.end method

.method public stopMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method stopMeasuringStats("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "stopMeasuringStatistics"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 419
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 420
    return-void
.end method

.method public stopRender(I)V
    .locals 2
    .parameter

    .prologue
    .line 459
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method stopRender()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p1}, Lcom/addlive/impl/ADLNativeWrapper;->stopRender(I)V

    .line 461
    return-void
.end method

.method public unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling method unpublish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "unpublish"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 349
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p3}, Lcom/addlive/service/MediaType;->getStrValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 350
    sget-object v1, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    if-ne p3, v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lcom/addlive/impl/ADLNativeWrapper;->setAudioPublishingState(ZLjava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v1}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 355
    return-void
.end method
