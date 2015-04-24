.class Lcom/addlive/platform/ADL$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/addlive/platform/ADL;->setApplicationIdMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/addlive/service/Responder",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/platform/ADL;


# direct methods
.method constructor <init>(Lcom/addlive/platform/ADL;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/addlive/platform/ADL$3;->this$0:Lcom/addlive/platform/ADL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errHandler(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/addlive/platform/ADL$3;->this$0:Lcom/addlive/platform/ADL;

    #getter for: Lcom/addlive/platform/ADL;->initListener:Lcom/addlive/platform/PlatformInitListener;
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$300(Lcom/addlive/platform/ADL;)Lcom/addlive/platform/PlatformInitListener;

    move-result-object v0

    new-instance v1, Lcom/addlive/platform/InitStateChangedEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set application id due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    invoke-direct {v1, p1, v2, v3}, Lcom/addlive/platform/InitStateChangedEvent;-><init>(ILjava/lang/String;Lcom/addlive/platform/InitState;)V

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 321
    return-void
.end method

.method public bridge synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/addlive/platform/ADL$3;->resultHandler(Ljava/lang/Void;)V

    return-void
.end method

.method public resultHandler(Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/addlive/platform/ADL$3;->this$0:Lcom/addlive/platform/ADL;

    #calls: Lcom/addlive/platform/ADL;->setStreamerEndpointResolvers()V
    invoke-static {v0}, Lcom/addlive/platform/ADL;->access$800(Lcom/addlive/platform/ADL;)V

    .line 312
    return-void
.end method
