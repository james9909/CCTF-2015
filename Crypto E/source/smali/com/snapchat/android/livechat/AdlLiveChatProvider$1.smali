.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/platform/PlatformInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    return-void
.end method

.method public onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V
    .locals 5
    .parameter

    .prologue
    .line 401
    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getState()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$1;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->e()V

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    const-string v0, "livechat"

    const-string v1, "Failed to initialize the AddLive SDK: %s (ERR: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getErrMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/addlive/platform/InitStateChangedEvent;->getErrCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
