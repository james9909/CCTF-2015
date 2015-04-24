.class Lcom/addlive/platform/ADL$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/platform/ADL;->releasePlatform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/platform/ADL;


# direct methods
.method constructor <init>(Lcom/addlive/platform/ADL;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 373
    :cond_0
    sget-object v0, Lcom/addlive/platform/InitState;->REALEASING:Lcom/addlive/platform/InitState;

    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;

    .line 374
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->service:Lcom/addlive/service/AddLiveService;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$500(Lcom/addlive/platform/ADL;)Lcom/addlive/service/AddLiveService;

    move-result-object v0

    check-cast v0, Lcom/addlive/impl/ADLServiceImpl;

    invoke-virtual {v0}, Lcom/addlive/impl/ADLServiceImpl;->release()V

    .line 375
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$000(Lcom/addlive/platform/ADL;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->releasePlatform()V

    .line 376
    iget-object v0, p0, Lcom/addlive/platform/ADL$5;->this$0:Lcom/addlive/platform/ADL;

    const/4 v1, 0x0

    #setter for: Lcom/addlive/platform/ADL;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0, v1}, Lcom/addlive/platform/ADL;->access$002(Lcom/addlive/platform/ADL;Lcom/addlive/impl/ADLNativeWrapper;)Lcom/addlive/impl/ADLNativeWrapper;

    .line 377
    sget-object v0, Lcom/addlive/platform/InitState;->NOT_INITIALIZED:Lcom/addlive/platform/InitState;

    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$102(Lcom/addlive/platform/InitState;)Lcom/addlive/platform/InitState;

    goto :goto_0
.end method
