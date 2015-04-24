.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
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
.field final synthetic a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$4;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$4;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->g()V

    .line 560
    return-void
.end method

.method public errHandler(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 563
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to terminate connection to AddLive scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$4;->a(Ljava/lang/Void;)V

    return-void
.end method
