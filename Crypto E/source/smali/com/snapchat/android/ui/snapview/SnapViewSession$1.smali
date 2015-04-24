.class Lcom/snapchat/android/ui/snapview/SnapViewSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;


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
    .line 315
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/rendering/SnapMediaRenderer;

    move-result-object v2

    invoke-interface {v2}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->c()V

    .line 346
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/ReceivedSnap;->c(Z)V

    .line 347
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-interface {v2, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V

    .line 348
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v5}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    :goto_0
    invoke-virtual {v3, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;)V

    .line 363
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->i(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->w()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v0

    .line 364
    :goto_2
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/ReceivedSnap;->h()Z

    move-result v3

    if-nez v3, :cond_7

    .line 366
    :goto_3
    if-eqz v2, :cond_1

    .line 367
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->k(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/model/ReceivedSnap;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/User;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V

    .line 374
    :cond_0
    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->n(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;FFI)V

    .line 379
    :cond_1
    monitor-exit v4

    .line 380
    return-void

    .line 352
    :cond_2
    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    goto :goto_0

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v5

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    move-object v3, v2

    :goto_4
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    :goto_5
    invoke-virtual {v5, v3, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    goto/16 :goto_1

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :cond_4
    :try_start_1
    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    move-object v3, v2

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_6
    move v2, v1

    .line 363
    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 364
    goto :goto_3
.end method

.method public a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;I)I

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0, p2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b(Lcom/snapchat/android/ui/snapview/SnapViewSession;I)I

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0, p3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c(Lcom/snapchat/android/ui/snapview/SnapViewSession;I)I

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Z)Z

    .line 327
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g()V

    .line 331
    :cond_0
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V
    .locals 5
    .parameter

    .prologue
    .line 384
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    if-ne p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->o(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0036

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 389
    const-string v0, "SnapViewSession"

    const-string v1, "SNAP-LOG: MARKING snap from %s as viewed (EXTERNAL STORAGE NO_BITMAP_AVAILABLE) (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v4}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    invoke-static {v4}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->c:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->b:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    if-ne p1, v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;->a:Lcom/snapchat/android/ui/snapview/SnapViewSession;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->d:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 403
    return-void
.end method
