.class Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private scopeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 560
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    .line 561
    invoke-direct {p0, p2}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 562
    iput-object p3, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->scopeId:Ljava/lang/String;

    .line 563
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    #getter for: Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/impl/ADLServiceImpl;->access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 568
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    #getter for: Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;
    invoke-static {v0}, Lcom/addlive/impl/ADLServiceImpl;->access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->scopeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/addlive/impl/ADLNativeWrapper;->reportDisconnect(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;->responder:Lcom/addlive/service/Responder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 573
    :cond_0
    return-void
.end method
