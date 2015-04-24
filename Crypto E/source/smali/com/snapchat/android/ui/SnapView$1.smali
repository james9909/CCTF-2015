.class Lcom/snapchat/android/ui/SnapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapView;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V
    .locals 5
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/rendering/RendererManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c()Lcom/snapchat/android/rendering/SnapMediaRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/rendering/RendererManager;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer;)V

    .line 458
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->b(Lcom/snapchat/android/ui/SnapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->c(Lcom/snapchat/android/ui/SnapView;)V

    .line 462
    :cond_0
    sget-boolean v0, Lcom/snapchat/android/ui/SnapView;->a:Z

    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b()Lcom/snapchat/android/model/ChronologicalSnapProvider;

    move-result-object v0

    .line 464
    if-nez v0, :cond_2

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    invoke-interface {v0}, Lcom/snapchat/android/model/ChronologicalSnapProvider;->i()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_1

    .line 470
    const-string v2, "SnapView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloading next snap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e()Z

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/snapchat/android/ui/SnapView;->c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Z)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->e(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapView;->d(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->f(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 481
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapView;->d()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->e:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-eq p2, v0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->f:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->e(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapView;->e(Lcom/snapchat/android/ui/SnapView;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h()V

    .line 491
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapView$1;->a:Lcom/snapchat/android/ui/SnapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/ui/SnapView;Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/ui/snapview/SnapViewSession;

    goto :goto_0
.end method
