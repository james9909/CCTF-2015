.class Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlLiveChatProvider;->k()V
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
    .line 536
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->c:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 540
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-static {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;)Lcom/snapchat/android/analytics/HereAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 541
    return-void
.end method

.method public errHandler(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 545
    const-string v0, "livechat"

    const-string v1, "Failed to publish video due to: %s (ERR: %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;->a:Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;->a(Lcom/snapchat/android/livechat/AdlLiveChatProvider;Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 547
    return-void
.end method

.method public synthetic resultHandler(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/livechat/AdlLiveChatProvider$3;->a(Ljava/lang/Void;)V

    return-void
.end method
