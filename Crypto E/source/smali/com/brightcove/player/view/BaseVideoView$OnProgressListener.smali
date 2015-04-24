.class public Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/view/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 8
    .parameter
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 374
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 378
    if-le v0, v5, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget v1, v1, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    if-eq v0, v1, :cond_0

    .line 379
    invoke-static {}, Lcom/brightcove/player/view/BaseVideoView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Changing duration to %d."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BaseVideoView;->duration:I

    .line 382
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->showMediaController()V

    .line 385
    :cond_0
    const-string v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 387
    if-le v0, v5, :cond_1

    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iget v1, v1, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    if-eq v0, v1, :cond_1

    .line 388
    invoke-static {}, Lcom/brightcove/player/view/BaseVideoView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Changing playheadPosition to %d."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/brightcove/player/view/BaseVideoView$OnProgressListener;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BaseVideoView;->playheadPosition:I

    .line 392
    :cond_1
    return-void
.end method
