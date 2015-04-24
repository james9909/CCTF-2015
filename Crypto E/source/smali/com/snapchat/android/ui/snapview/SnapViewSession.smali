.class public Lcom/snapchat/android/ui/snapview/SnapViewSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/snapview/SnapViewSession$3;
    }
.end annotation


# instance fields
.field protected final a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

.field protected final b:Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Lcom/snapchat/android/model/User;

.field private final e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

.field private final f:Lcom/snapchat/android/model/ReceivedSnap;

.field private final g:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private final h:Lcom/snapchat/android/ui/SnapTimerView;

.field private final i:Lcom/squareup/otto/Bus;

.field private final j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

.field private final k:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

.field private final l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

.field private final m:Ljava/lang/Object;

.field private final n:Z

.field private final o:Z

.field private p:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Landroid/view/ViewGroup;ZLcom/snapchat/android/ui/SnapTimerView;ZLcom/snapchat/android/rendering/SnapMediaRenderer;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a()Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->a()Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v0 .. v12}, Lcom/snapchat/android/ui/snapview/SnapViewSession;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ChronologicalSnapProvider;Landroid/view/ViewGroup;Lcom/snapchat/android/controller/countdown/SnapCountdownController;ZLcom/snapchat/android/analytics/SnapViewEventAnalytics;Lcom/squareup/otto/Bus;Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;Lcom/snapchat/android/ui/SnapTimerView;ZLcom/snapchat/android/rendering/SnapMediaRenderer;)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ChronologicalSnapProvider;Landroid/view/ViewGroup;Lcom/snapchat/android/controller/countdown/SnapCountdownController;ZLcom/snapchat/android/analytics/SnapViewEventAnalytics;Lcom/squareup/otto/Bus;Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;Lcom/snapchat/android/ui/SnapTimerView;ZLcom/snapchat/android/rendering/SnapMediaRenderer;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m:Ljava/lang/Object;

    .line 55
    iput-boolean v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->q:Z

    .line 56
    iput-boolean v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->r:Z

    .line 57
    iput-boolean v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->s:Z

    .line 58
    iput-boolean v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->t:Z

    .line 60
    iput v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->u:I

    .line 61
    iput v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->v:I

    .line 62
    iput v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->w:I

    .line 313
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/snapview/SnapViewSession$1;-><init>(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    .line 406
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/snapview/SnapViewSession$2;-><init>(Lcom/snapchat/android/ui/snapview/SnapViewSession;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

    .line 77
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    .line 78
    iput-object p2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d:Lcom/snapchat/android/model/User;

    .line 79
    iput-object p5, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    .line 80
    iput-object p3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    .line 81
    iput-object p4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c:Landroid/view/ViewGroup;

    .line 82
    iput-boolean p6, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->o:Z

    .line 83
    iput-object p9, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->k:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    .line 84
    iput-object p7, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 85
    iput-object p8, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->i:Lcom/squareup/otto/Bus;

    .line 86
    iput-boolean p11, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->n:Z

    .line 87
    iput-object p10, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    .line 88
    iput-object p12, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSession;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->u:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private a(FFI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 281
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 282
    div-float v2, p1, p2

    .line 283
    div-float/2addr v0, v2

    .line 284
    sub-float v0, v1, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 285
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 289
    const/high16 v1, 0x4120

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    add-float/2addr v1, v0

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapTimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 293
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SnapTimerView;->setIsStory(Z)V

    .line 297
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    int-to-long v2, v0

    int-to-long v4, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/snapchat/android/ui/SnapTimerView;->a(JJ)V

    .line 298
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SnapTimerView;->setVisibility(I)V

    .line 299
    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(J)V

    .line 300
    return-void
.end method

.method private a(J)V
    .locals 5
    .parameter

    .prologue
    .line 307
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    invoke-interface {v0}, Lcom/snapchat/android/model/ChronologicalSnapProvider;->j()I

    move-result v0

    .line 310
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setText(Ljava/lang/String;)V

    .line 311
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSession;FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(FFI)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSession;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->s:Z

    return p1
.end method

.method private a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 206
    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->q:Z

    .line 210
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSession$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->f:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    if-ne p1, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->h:Lcom/snapchat/android/ui/SnapTimerView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapTimerView;->a()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->b()V

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->k:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    invoke-virtual {v0}, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->c()V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/ReceivedSnap;->c(Z)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V

    .line 241
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->t:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, p1, v4}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;Ljava/lang/String;)V

    .line 254
    :goto_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    const-string v0, "SnapViewSession"

    const-string v3, "SNAP-LOG: HIDING storysnap from %s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v6}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 258
    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d:Lcom/snapchat/android/model/User;

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    instance-of v4, v4, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-static {v3, v4, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/User;ZLcom/snapchat/android/model/StorySnap;)V

    .line 265
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->p:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    invoke-interface {v0, p0, p1}, Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;->a(Lcom/snapchat/android/ui/snapview/SnapViewSession;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    .line 266
    monitor-exit v2

    move v0, v1

    .line 269
    :goto_4
    return v0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->c(Lcom/snapchat/android/model/ReceivedSnap;)Z

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto/16 :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto/16 :goto_0

    .line 243
    :cond_2
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    goto :goto_1

    .line 248
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->am()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    :goto_5
    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->b(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    goto :goto_5

    .line 261
    :cond_5
    const-string v0, "SnapViewSession"

    const-string v3, "SNAP-LOG: HIDING snap from %s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v6}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 268
    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/ui/snapview/SnapViewSession;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->v:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/snapview/SnapViewSession;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->w:I

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/rendering/SnapMediaRenderer;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->p:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->k:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->g:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->u:I

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/controller/countdown/SnapCountdownController;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/snapchat/android/model/User;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->d:Lcom/snapchat/android/model/User;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->v:I

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/ui/snapview/SnapViewSession;)I
    .locals 1
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->w:I

    return v0
.end method

.method static synthetic o(Lcom/snapchat/android/ui/snapview/SnapViewSession;)Lcom/squareup/otto/Bus;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->i:Lcom/squareup/otto/Bus;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 150
    const-string v1, "SnapViewSession"

    const-string v2, "SNAP-LOG: VIEWING %ssnap from %s (%s)"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_0

    const-string v0, "story "

    :goto_0
    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iput-object p1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->p:Lcom/snapchat/android/ui/snapview/SnapViewSessionListener;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->q:Z

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->l:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->n:Z

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/controller/countdown/SnapCountdownListener;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->a:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_1
    return-void

    .line 150
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 165
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    iget-object v2, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->o:Z

    iget-object v4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    invoke-interface {v0, v2, v3, v4}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;)V

    .line 166
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lcom/snapchat/android/model/ChronologicalSnapProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    return-object v0
.end method

.method public c()Lcom/snapchat/android/rendering/SnapMediaRenderer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->e:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    instance-of v0, v0, Lcom/snapchat/android/model/StoryCollection;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->f:Lcom/snapchat/android/model/ReceivedSnap;

    instance-of v0, v0, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->o:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->q:Z

    monitor-exit v1

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->s:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->t:Z

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->j:Lcom/snapchat/android/rendering/SnapMediaRenderer;

    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer;->a()V

    .line 181
    :goto_0
    monitor-exit v1

    .line 182
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSession;->r:Z

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->e:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 189
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->f:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/snapview/SnapViewSession;->a(Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)Z

    .line 196
    return-void
.end method
