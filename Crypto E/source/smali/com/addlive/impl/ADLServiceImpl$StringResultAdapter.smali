.class Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StringResultAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/impl/ADLServiceImpl;


# direct methods
.method constructor <init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V
    .locals 0
    .parameter
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
    .line 595
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;->this$0:Lcom/addlive/impl/ADLServiceImpl;

    .line 596
    invoke-direct {p0, p2}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 597
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;->responder:Lcom/addlive/service/Responder;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 604
    :cond_0
    return-void
.end method
