.class public Lcom/snapchat/android/ui/here/HoldToStreamView;
.super Lcom/snapchat/android/ui/here/StreamView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final j:Ljava/lang/String;

.field private static z:Lcom/snapchat/android/ui/here/HoldToStreamView;


# instance fields
.field private A:Landroid/content/SharedPreferences;

.field private B:Lcom/snapchat/android/model/chat/ChatConversation;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:F

.field private G:Z

.field private H:Z

.field private I:J

.field private J:Z

.field private K:Lcom/facebook/rebound/Spring;

.field private L:Lcom/facebook/rebound/Spring;

.field private final M:Lcom/squareup/otto/Bus;

.field private N:Z

.field private O:[B

.field private final P:Lcom/snapchat/android/analytics/HereAnalytics;

.field private Q:Z

.field private R:Landroid/app/Activity;

.field private final S:Ljava/lang/Runnable;

.field protected a:Z

.field protected b:Lcom/snapchat/android/livechat/LiveChatProvider;

.field protected c:Landroid/view/MotionEvent;

.field protected d:Z

.field protected e:Landroid/view/View;

.field protected f:Lcom/snapchat/android/ui/here/LockToStreamView;

.field protected g:Landroid/view/View;

.field private k:I

.field private l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

.field private m:J

.field private n:F

.field private o:Landroid/view/MotionEvent;

.field private p:Landroid/view/ViewPropertyAnimator;

.field private q:Landroid/view/GestureDetector;

.field private r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field private s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field private t:Lcom/snapchat/android/ui/ConnectingRippleView;

.field private u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

.field private v:Z

.field private final w:Landroid/os/Handler;

.field private x:F

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;)V

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:I

    .line 96
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    .line 98
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    .line 111
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    .line 129
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    .line 148
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 155
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 162
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Z

    .line 166
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 168
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    .line 630
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$3;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Ljava/lang/Runnable;

    .line 176
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V

    .line 177
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:I

    .line 96
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    .line 98
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    .line 111
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    .line 129
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    .line 148
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 155
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 162
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Z

    .line 166
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 168
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    .line 630
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$3;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Ljava/lang/Runnable;

    .line 183
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V

    .line 184
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:I

    .line 96
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    .line 98
    new-instance v0, Lcom/snapchat/android/livechat/AdlLiveChatProvider;

    invoke-direct {v0}, Lcom/snapchat/android/livechat/AdlLiveChatProvider;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    .line 111
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    .line 129
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    .line 148
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 155
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 162
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Z

    .line 166
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 168
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    .line 630
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$3;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Ljava/lang/Runnable;

    .line 190
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/HoldToStreamView;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Ljava/lang/String;

    const-string v1, "Setting up the HoldToStream view."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sput-object p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->z:Lcom/snapchat/android/ui/here/HoldToStreamView;

    .line 200
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->x:F

    .line 202
    new-instance v0, Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/ConnectingRippleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 205
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 208
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->A:Landroid/content/SharedPreferences;

    .line 210
    new-instance v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 215
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    const-wide/high16 v2, 0x4074

    const-wide/high16 v4, 0x4038

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    .line 216
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->d()Lcom/facebook/rebound/SpringSystem;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->b()Lcom/facebook/rebound/Spring;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lcom/facebook/rebound/Spring;

    .line 218
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2, v0}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 219
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lcom/facebook/rebound/Spring;

    new-instance v3, Lcom/snapchat/android/ui/here/HoldToStreamView$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$1;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v2, v3}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 228
    invoke-virtual {v1}, Lcom/facebook/rebound/SpringSystem;->b()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lcom/facebook/rebound/Spring;

    .line 229
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lcom/facebook/rebound/Spring;

    invoke-virtual {v1, v0}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$2;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 240
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->b(Landroid/content/Context;)V

    .line 242
    invoke-virtual {p0, v6}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setWillNotDraw(Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1010
    new-instance v0, Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0, p1, v1, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/snapchat/android/analytics/HereAnalytics;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    .line 1011
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 1012
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;II)V

    .line 1015
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/GestureDetector;

    .line 1016
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$10;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1031
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->l()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->B:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->q()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->o()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->s()V

    return-void
.end method

.method public static getLastInstance()Lcom/snapchat/android/ui/here/HoldToStreamView;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->z:Lcom/snapchat/android/ui/here/HoldToStreamView;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/analytics/HereAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 251
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 252
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRippleCenter(FF)V

    .line 253
    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->u()V

    return-void
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 457
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->A:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->w:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 459
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 460
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->w:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    const/4 v0, 0x1

    .line 465
    :cond_0
    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 647
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->m()V

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    goto :goto_0
.end method

.method static synthetic k(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->G:Z

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    if-eqz v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    .line 655
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_1
    const/4 v0, 0x0

    .line 660
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    const v0, 0x3e4ccccd

    .line 663
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 664
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 665
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->m()V

    .line 666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 670
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 671
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$4;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 677
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->t()V

    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/squareup/otto/Bus;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private n()Z
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:Landroid/view/MotionEvent;

    .line 694
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 687
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 688
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 689
    iget v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:Landroid/view/MotionEvent;

    .line 691
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 769
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 770
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v1

    .line 771
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    move v0, v1

    .line 773
    :goto_2
    iget-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->y:Z

    if-ne v0, v3, :cond_4

    .line 789
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 769
    goto :goto_0

    :cond_2
    move v3, v2

    .line 770
    goto :goto_1

    :cond_3
    move v0, v2

    .line 771
    goto :goto_2

    .line 774
    :cond_4
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->y:Z

    .line 777
    if-nez v0, :cond_5

    move v3, v1

    :goto_4
    invoke-static {p0, v3}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 778
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;

    if-nez v0, :cond_6

    :goto_5
    invoke-direct {v4, v1}, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 780
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$8;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/here/HoldToStreamView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_5
    move v3, v2

    .line 777
    goto :goto_4

    :cond_6
    move v1, v2

    .line 778
    goto :goto_5
.end method

.method private p()V
    .locals 6

    .prologue
    .line 869
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    sget-object v1, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v1}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getWidth()I

    move-result v1

    sget-object v2, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v5}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a(IIIILandroid/hardware/Camera$CameraInfo;)V

    .line 873
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 965
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    if-nez v2, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    .line 967
    :goto_1
    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setKeepScreenOn(Z)V

    goto :goto_0

    :cond_4
    move v2, v0

    .line 966
    goto :goto_1
.end method

.method private r()V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 978
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    .line 979
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 981
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 982
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i()V

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->bringToFront()V

    .line 986
    return-void
.end method

.method private s()V
    .locals 4

    .prologue
    .line 994
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 996
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const-wide/16 v0, 0x1388

    .line 1001
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1002
    return-void

    .line 999
    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1034
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1035
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1036
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1037
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1038
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$11;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1051
    return-void
.end method

.method private u()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 1056
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1057
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    sget-object v2, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-ne v1, v2, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 1064
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->c()V

    .line 1066
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1067
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1068
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1069
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1072
    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$12;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1082
    return-void

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/HereAnalytics;->b()V

    .line 803
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Landroid/app/Activity;

    .line 290
    iput-object p2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    .line 292
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 480
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    .line 482
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    if-nez v0, :cond_4

    .line 486
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-eqz v0, :cond_0

    .line 494
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 497
    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    .line 499
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->a:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v2, v1}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 509
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 511
    iget v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->n:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setUpperRegionHighlight(Z)V

    .line 513
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 519
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    sub-long/2addr v4, v6

    .line 521
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eq v3, v0, :cond_7

    .line 524
    iget v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 527
    :cond_6
    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 530
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eq v0, v3, :cond_d

    move v0, v1

    .line 534
    :goto_2
    if-eqz v0, :cond_8

    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:I

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-gtz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 537
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v2, v1, v3}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(ZLcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 544
    :cond_a
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 545
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->s()V

    .line 546
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    .line 550
    :cond_b
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;)V

    .line 552
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    goto/16 :goto_0

    .line 515
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setUpperRegionHighlight(Z)V

    .line 516
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->b:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    goto :goto_1

    :cond_d
    move v0, v2

    .line 530
    goto :goto_2
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->removeView(Landroid/view/View;)V

    .line 700
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    .line 701
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->q()V

    .line 703
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$5;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$6;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 719
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 722
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->bringToFront()V

    .line 724
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ConnectingRippleView;->bringToFront()V

    .line 725
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 726
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3
    .parameter

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-interface {v0, v1, p0, v2}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V

    .line 322
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->v()Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->B:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 325
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v1, v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->D:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 807
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->D:Z

    .line 808
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->c(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 809
    invoke-virtual {p0, v1, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 810
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 730
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 732
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$7;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView$7;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a([B)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 817
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setCameraInfo() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 821
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setCameraPreviewSize() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_2
    if-nez p1, :cond_4

    .line 866
    :cond_3
    :goto_0
    return-void

    .line 829
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-nez v0, :cond_5

    .line 830
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    if-eqz v0, :cond_6

    .line 835
    iput-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 838
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$9;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$9;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 844
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->post(Ljava/lang/Runnable;)Z

    .line 848
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    sget-object v1, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-interface {v0, p1, v1}, Lcom/snapchat/android/livechat/LiveChatProvider;->a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V

    .line 849
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->p()V

    .line 851
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:[B

    if-eqz v0, :cond_7

    .line 852
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:[B

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a([B)V

    .line 857
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Z

    if-eqz v0, :cond_3

    .line 859
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:[B

    .line 862
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->a:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 864
    iput-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Z

    goto :goto_0

    .line 854
    :cond_7
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a([B)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 299
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->b:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1, v3}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->a()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Landroid/app/Activity;

    .line 305
    iput-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 334
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Z

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/snapchat/android/livechat/LiveChatProvider;->a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h()V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->q()V

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->c(Z)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->C:Z

    .line 796
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->C:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRipplesEnabled(Z)V

    .line 797
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/HereAnalytics;->c()V

    .line 798
    :cond_0
    return-void

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 353
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Z

    .line 354
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 355
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v3, v1, v4}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(ZLcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    const-string v1, "Cannot connect"

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-nez v0, :cond_0

    .line 367
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    .line 370
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a(F)V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    .line 376
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 379
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 380
    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    .line 381
    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 383
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v5, v0

    float-to-int v0, v0

    invoke-direct {v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/snapchat/android/ui/here/HoldToStreamView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lcom/facebook/rebound/Spring;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getMeasuredWidth()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->a(D)Lcom/facebook/rebound/Spring;

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lcom/facebook/rebound/Spring;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getMeasuredHeight()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/Spring;->a(D)Lcom/facebook/rebound/Spring;

    .line 390
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->c()V

    .line 391
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->r()V

    .line 392
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->q()V

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    invoke-interface {v0}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->o()V

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->d(Z)V

    .line 395
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->o()V

    .line 396
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->C:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRipplesEnabled(Z)V

    .line 397
    iput v7, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    .line 398
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->E:Z

    .line 400
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/QuickSnapCameraDecor;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->n:F

    .line 403
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    iget v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->n:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setHeightThreshold(I)V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->bringToFront()V

    .line 407
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->j()Z

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setOverlayMode(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)V

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/HereAnalytics;->a()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 396
    goto :goto_1

    .line 408
    :cond_4
    sget-object v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->a:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    goto :goto_2
.end method

.method protected c(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 3
    .parameter

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f()V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a()V

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->y:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->g()V

    .line 878
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 879
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    return v0
.end method

.method protected f()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 441
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/LiveChatProvider;->d()V

    .line 443
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h()V

    .line 444
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->q()V

    .line 445
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->d(Z)V

    .line 446
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->o()V

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRipplesEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method protected g()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const v10, 0x3da3d70a

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    .line 887
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    if-nez v3, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const/high16 v4, 0x43c8

    div-float/2addr v3, v4

    sub-float v4, v3, v1

    .line 901
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    .line 910
    :goto_1
    cmpl-float v4, v4, v0

    if-lez v4, :cond_2

    .line 911
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->G:Z

    .line 915
    :cond_2
    iget v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget-boolean v5, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->E:Z

    if-eqz v5, :cond_3

    move v0, v1

    :cond_3
    const v5, 0x3d23d70a

    invoke-static {v4, v0, v5}, Lcom/snapchat/android/util/InterpolationUtils;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    .line 917
    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    const v4, 0x3c23d70a

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 918
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->e:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 922
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 924
    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    const v5, 0x3e99999a

    invoke-static {v4, v5, v10}, Lcom/snapchat/android/util/InterpolationUtils;->a(FFF)F

    move-result v4

    mul-float/2addr v0, v4

    .line 931
    :goto_2
    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 933
    :cond_5
    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setScaleX(F)V

    .line 934
    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    mul-float/2addr v3, v0

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    .line 936
    if-eqz v2, :cond_6

    .line 937
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->c()V

    .line 942
    :cond_6
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 943
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRippleScale(F)V

    .line 945
    sget-object v2, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a(F)V

    .line 948
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 949
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 950
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i()V

    .line 961
    :goto_3
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    goto/16 :goto_0

    .line 904
    :cond_7
    const/high16 v3, -0x4080

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    cmpg-float v3, v4, v1

    if-gez v3, :cond_8

    .line 905
    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-float v3, v6

    goto/16 :goto_1

    :cond_8
    move v3, v1

    .line 907
    goto/16 :goto_1

    .line 928
    :cond_9
    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v4

    const v5, 0x3ecccccd

    invoke-static {v4, v5, v10}, Lcom/snapchat/android/util/InterpolationUtils;->a(FFF)F

    move-result v4

    mul-float/2addr v0, v4

    goto/16 :goto_2

    .line 953
    :cond_a
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lcom/facebook/rebound/Spring;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->b(D)Lcom/facebook/rebound/Spring;

    .line 956
    const v1, 0x3f666666

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 957
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lcom/facebook/rebound/Spring;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->b(D)Lcom/facebook/rebound/Spring;

    goto :goto_3
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Z

    .line 974
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/snapchat/android/ui/here/StreamView;->onAttachedToWindow()V

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public onCameraReadyEvent(Lcom/snapchat/android/util/eventbus/CameraReadyEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 618
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;->b:Z

    if-nez v0, :cond_0

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:J

    .line 628
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;->b:Z

    if-eqz v0, :cond_1

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:[B

    .line 626
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->G:Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/snapchat/android/ui/here/StreamView;->onDetachedFromWindow()V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->d()V

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->c()V

    .line 279
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a()V

    .line 280
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 564
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 611
    :cond_0
    :goto_0
    return v0

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    .line 569
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->s()V

    .line 572
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 573
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    if-eqz v2, :cond_6

    .line 577
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 584
    :goto_1
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 585
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Z

    .line 586
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/view/MotionEvent;)V

    .line 589
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    if-eq v1, v0, :cond_5

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 592
    :cond_5
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    goto :goto_0

    .line 580
    :sswitch_0
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v3, v4}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 596
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 608
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 609
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 611
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()Z

    move-result v0

    goto :goto_0

    .line 577
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 757
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->E:Z

    .line 758
    if-nez p1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/analytics/HereAnalytics;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 760
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a()V

    .line 761
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f()V

    .line 762
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->b(Z)V

    .line 766
    return-void

    .line 757
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLiveChatProvider(Lcom/snapchat/android/livechat/LiveChatProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Lcom/snapchat/android/livechat/LiveChatProvider;

    .line 247
    return-void
.end method
