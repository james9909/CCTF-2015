.class Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/SnapListItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenSnapRunnable"
.end annotation


# instance fields
.field a:Lcom/snapchat/android/model/ReceivedSnap;

.field b:Lcom/snapchat/android/model/ChronologicalSnapProvider;

.field final synthetic c:Lcom/snapchat/android/util/SnapListItemHandler;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->a:Lcom/snapchat/android/model/ReceivedSnap;

    .line 421
    iput-object p3, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->b:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    .line 422
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 426
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->b()V

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->b(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v0

    const-string v1, "feed"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->c(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->a:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->a:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 433
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/util/SnapListItemHandler;Z)Z

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->c:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->c(Lcom/snapchat/android/util/SnapListItemHandler;)Lcom/snapchat/android/ui/SnapView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->a:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenSnapRunnable;->b:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    goto :goto_0
.end method
