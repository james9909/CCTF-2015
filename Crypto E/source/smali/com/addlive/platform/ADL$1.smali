.class Lcom/addlive/platform/ADL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/platform/ADL;->initPlatform(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/platform/ADL;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/addlive/platform/PlatformInitListener;

.field final synthetic val$options:Lcom/addlive/platform/PlatformInitOptions;


# direct methods
.method constructor <init>(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    iput-object p2, p0, Lcom/addlive/platform/ADL$1;->val$listener:Lcom/addlive/platform/PlatformInitListener;

    iput-object p3, p0, Lcom/addlive/platform/ADL$1;->val$options:Lcom/addlive/platform/PlatformInitOptions;

    iput-object p4, p0, Lcom/addlive/platform/ADL$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->val$listener:Lcom/addlive/platform/PlatformInitListener;

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    const/16 v2, 0x3ee

    const-string v3, "Platform already initialized"

    sget-object v4, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 260
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/addlive/platform/InitState;->INITIALIZING:Lcom/addlive/platform/InitState;

    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;

    .line 242
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->val$options:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->isConsoleLoggingEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/addlive/impl/Log;->setEnabled(Z)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    iget-object v1, p0, Lcom/addlive/platform/ADL$1;->val$options:Lcom/addlive/platform/PlatformInitOptions;

    #setter for: Lcom/addlive/platform/ADL;->initOptions:Lcom/addlive/platform/PlatformInitOptions;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$202(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitOptions;)Lcom/addlive/platform/PlatformInitOptions;

    .line 245
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    iget-object v1, p0, Lcom/addlive/platform/ADL$1;->val$listener:Lcom/addlive/platform/PlatformInitListener;

    #setter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$302(Lcom/addlive/platform/ADL;Lcom/addlive/platform/PlatformInitListener;)Lcom/addlive/platform/PlatformInitListener;

    .line 246
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    new-instance v1, Lcom/addlive/impl/ADLNativeWrapperImpl;

    iget-object v2, p0, Lcom/addlive/platform/ADL$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/addlive/platform/ADL$1;->val$options:Lcom/addlive/platform/PlatformInitOptions;

    invoke-static {}, Lcom/addlive/platform/ADL;->access$400()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/impl/ADLNativeWrapperImpl;-><init>(Landroid/content/Context;Lcom/addlive/platform/PlatformInitOptions;Landroid/os/Handler;)V

    #setter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$002(Lcom/addlive/platform/ADL;Lcom/addlive/impl/ADLNativeWrapper;)Lcom/addlive/impl/ADLNativeWrapper;

    .line 247
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->initPlatform()I

    move-result v0

    .line 248
    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    new-instance v1, Lcom/addlive/impl/ADLServiceImpl;

    iget-object v2, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v2}, Lcom/addlive/platform/ADL;->access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/addlive/platform/ADL$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/addlive/platform/ADL$1;->val$options:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v4}, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/impl/ADLServiceImpl;-><init>(Lcom/addlive/impl/ADLNativeWrapper;Landroid/content/Context;Z)V

    #setter for: Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$502(Lcom/addlive/platform/ADL;Lcom/addlive/service/AddLiveService;)Lcom/addlive/service/AddLiveService;

    .line 250
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    #calls: Lcom/addlive/platform/ADL;->validateVersion()V
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$600(Lcom/addlive/platform/ADL;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    iget-object v0, p0, Lcom/addlive/platform/ADL$1;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$300(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    const/16 v2, 0x3f1

    const-string v3, "Failed to load the AddLive native components "

    sget-object v4, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, v2, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    goto :goto_0

    .line 252
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/addlive/platform/ADL$1;->val$listener:Lcom/addlive/platform/PlatformInitListener;

    new-instance v2, Lcom/addlive/platform/InitStateChangedEvent;

    const-string v3, ""

    sget-object v4, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v2, v0, v3, v4}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v1, v2}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
