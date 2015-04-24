.class public Lcom/addlive/platform/ADL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_NAME_KEY:Ljava/lang/String; = "global.service.userDevice"

.field private static final ENDPOINT_RESOLVER_KEY:Ljava/lang/String; = "global.service.streamer.endpointResolver"

.field private static volatile INIT_STATE:Lcom/addlive/platform/InitState;

.field private static volatile INSTANCE:Lcom/addlive/platform/ADL;

.field private static taskHandler:Landroid/os/Handler;

.field private static taskThread:Landroid/os/HandlerThread;


# instance fields
.field private initListener:Lcom/addlive/platform/PlatformInitListener;

.field private initOptions:Lcom/addlive/platform/PlatformInitOptions;

.field private nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

.field private nullResponder:Lcom/addlive/service/Responder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private volatile service:Lcom/addlive/service/AddLiveService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/addlive/platform/InitState;->NOT_INITIALIZED:Lcom/addlive/platform/InitState;

    sput-object v0, Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/addlive/service/ResponderAdapter;

    invoke-direct {v0}, Lcom/addlive/service/ResponderAdapter;-><init>()V

    iput-object v0, p0, Lcom/addlive/platform/ADL;->nullResponder:Lcom/addlive/service/Responder;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/addlive/platform/ADL;Lcom/addlive/impl/ADLNativeWrapper;)Lcom/addlive/impl/ADLNativeWrapper;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    return-object p1
.end method

.method static synthetic access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-object p0, Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitOptions;)Lcom/addlive/platform/PlatformInitOptions;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/addlive/platform/ADL;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    return-object p1
.end method

.method static synthetic access$300(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitListener;)Lcom/addlive/platform/PlatformInitListener;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;

    return-object p1
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/addlive/platform/ADL;->taskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/addlive/platform/ADL;)Lcom/addlive/service/AddLiveService;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/addlive/platform/ADL;Lcom/addlive/service/AddLiveService;)Lcom/addlive/service/AddLiveService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/addlive/platform/ADL;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/addlive/platform/ADL;->validateVersion()V

    return-void
.end method

.method static synthetic access$700(Lcom/addlive/platform/ADL;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/addlive/platform/ADL;->setApplicationIdMaybe()V

    return-void
.end method

.method static synthetic access$800(Lcom/addlive/platform/ADL;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/addlive/platform/ADL;->setStreamerEndpointResolvers()V

    return-void
.end method

.method public static assesDeviceCompatibility()Lcom/addlive/platform/DeviceSupportLevel;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Lcom/addlive/impl/DeviceCompatibilityTest;->assessCompatibility()Lcom/addlive/platform/DeviceSupportLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getInitState()Lcom/addlive/platform/InitState;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/addlive/platform/ADL;->INIT_STATE:Lcom/addlive/platform/InitState;

    return-object v0
.end method

.method public static getService()Lcom/addlive/service/AddLiveService;
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ADL not initialized. Initialize the platform first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    iget-object v0, v0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    return-object v0
.end method

.method public static declared-synchronized init(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    const-class v1, Lcom/addlive/platform/ADL;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/addlive/platform/ADL;

    invoke-direct {v0}, Lcom/addlive/platform/ADL;-><init>()V

    sput-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    .line 131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "TaskHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/addlive/platform/ADL;->taskThread:Landroid/os/HandlerThread;

    .line 132
    sget-object v0, Lcom/addlive/platform/ADL;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/addlive/platform/ADL;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/addlive/platform/ADL;->taskHandler:Landroid/os/Handler;

    .line 136
    :cond_0
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    invoke-direct {v0, p0, p1, p2}, Lcom/addlive/platform/ADL;->initPlatform(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCam()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->initCamOnNative()V

    .line 357
    return-void
.end method

.method private initPlatform(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    sget-object v0, Lcom/addlive/platform/ADL;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/addlive/platform/ADL$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/addlive/platform/ADL$1;-><init>(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public static r()Lcom/addlive/service/Responder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ADL not initialized. Initialize the platform first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    iget-object v0, v0, Lcom/addlive/platform/ADL;->nullResponder:Lcom/addlive/service/Responder;

    return-object v0
.end method

.method public static declared-synchronized release()V
    .locals 2

    .prologue
    .line 149
    const-class v1, Lcom/addlive/platform/ADL;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    monitor-exit v1

    return-void

    .line 154
    :cond_0
    :try_start_1
    sget-object v0, Lcom/addlive/platform/ADL;->INSTANCE:Lcom/addlive/platform/ADL;

    invoke-direct {v0}, Lcom/addlive/platform/ADL;->releasePlatform()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private releasePlatform()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    if-nez v0, :cond_0

    .line 363
    const-string v0, "AddLive_SDK"

    const-string v1, "Trying to release already released platform"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    sget-object v0, Lcom/addlive/platform/ADL;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/addlive/platform/ADL$5;

    invoke-direct {v1, p0}, Lcom/addlive/platform/ADL$5;-><init>(Lcom/addlive/platform/ADL;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method private setApplicationIdMaybe()V
    .locals 5

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/addlive/platform/ADL;->initCam()V

    .line 299
    iget-object v0, p0, Lcom/addlive/platform/ADL;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->getApplicationId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    const/16 v2, 0x3ea

    const-string v3, "Application id property not given"

    sget-object v4, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 325
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v1, Lcom/addlive/platform/ADL$3;

    invoke-direct {v1, p0}, Lcom/addlive/platform/ADL$3;-><init>(Lcom/addlive/platform/ADL;)V

    .line 323
    iget-object v0, p0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    check-cast v0, Lcom/addlive/impl/ADLServiceImpl;

    iget-object v2, p0, Lcom/addlive/platform/ADL;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v2}, Lcom/addlive/platform/PlatformInitOptions;->getApplicationId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/impl/ADLServiceImpl;->setApplicationId(Lcom/addlive/service/Responder;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setStreamerEndpointResolvers()V
    .locals 6

    .prologue
    .line 329
    new-instance v0, Lcom/addlive/platform/ADL$4;

    invoke-direct {v0, p0}, Lcom/addlive/platform/ADL$4;-><init>(Lcom/addlive/platform/ADL;)V

    .line 346
    iget-object v1, p0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    invoke-static {}, Lcom/addlive/platform/ADL;->r()Lcom/addlive/service/Responder;

    move-result-object v2

    const-string v3, "global.service.userDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/addlive/platform/ADL;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v1}, Lcom/addlive/platform/PlatformInitOptions;->getStreamerEndpointResolver()Ljava/lang/String;

    move-result-object v1

    .line 348
    if-nez v1, :cond_0

    .line 349
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    const-string v3, "global.service.streamer.endpointResolver"

    invoke-interface {v2, v0, v3, v1}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateVersion()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;

    new-instance v1, Lcom/addlive/platform/ADL$2;

    invoke-direct {v1, p0}, Lcom/addlive/platform/ADL$2;-><init>(Lcom/addlive/platform/ADL;)V

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->getVersion(Lcom/addlive/service/Responder;)V

    .line 293
    return-void
.end method
