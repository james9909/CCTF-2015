.class Lcom/brightcove/player/view/BaseVideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BaseVideoView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BaseVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BaseVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/brightcove/player/view/BaseVideoView$6;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/brightcove/player/view/BaseVideoView$6;->this$0:Lcom/brightcove/player/view/BaseVideoView;

    const-string v1, "percentComplete"

    invoke-virtual {p1, v1}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/brightcove/player/view/BaseVideoView;->bufferedPercent:I
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BaseVideoView;->access$802(Lcom/brightcove/player/view/BaseVideoView;I)I

    .line 486
    return-void
.end method
