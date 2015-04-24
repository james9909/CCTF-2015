.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->c(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
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
        "Lcom/addlive/service/MediaConnection;",
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
    .line 468
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/addlive/service/MediaConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->f()V

    .line 472
    return-void
.end method

.method public errHandler(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(ILjava/lang/String;)V

    .line 476
    return-void
.end method

.method public synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    check-cast p1, Lcom/addlive/service/MediaConnection;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$2;->a(Lcom/addlive/service/MediaConnection;)V

    return-void
.end method
