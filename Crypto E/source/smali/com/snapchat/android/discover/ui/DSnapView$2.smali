.class Lcom/snapchat/android/discover/ui/DSnapView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapView;-><init>(Landroid/content/Context;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterFactory;Lcom/squareup/otto/Bus;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;Lcom/snapchat/android/discover/controller/SeenDiscoverDSnapOnboardingController;Lcom/snapchat/android/discover/analytics/DiscoverPerformanceAnalytics;Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;Lcom/snapchat/android/ui/VerticalSwipeLayout;Lcom/snapchat/android/util/debug/ReleaseManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->b(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->c(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/DSnapView;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapView$2;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {v1, v2}, Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method
