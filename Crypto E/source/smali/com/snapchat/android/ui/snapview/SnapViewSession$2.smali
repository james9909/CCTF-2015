.class Lcom/snapchat/android/ui/snapview/SnapViewSession$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/controller/countdown/SnapCountdownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/snapview/SnapViewSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/snapview/SnapViewSession;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 3
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->o(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TimerFinishEvent;

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    instance-of v2, v2, Lcom/snapchat/android/model/StorySnap;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TimerFinishEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->d:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 418
    return-void
.end method

.method public a(Lcom/snapchat/android/model/ReceivedSnap;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0, p2, p3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;J)V

    .line 412
    return-void
.end method

.method public b(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    return-void
.end method

.method public c(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    return-void
.end method
