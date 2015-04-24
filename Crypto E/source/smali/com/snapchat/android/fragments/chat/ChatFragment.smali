.class public Lcom/snapchat/android/fragments/chat/ChatFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;
.implements Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;
.implements Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;
.implements Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;
.implements Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;
.implements Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;
.implements Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/chat/ChatFragment$27;,
        Lcom/snapchat/android/fragments/chat/ChatFragment$BottomScrollingGestureDetector;,
        Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;,
        Lcom/snapchat/android/fragments/chat/ChatFragment$ExpandChatFeedItemOnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;",
        "Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;",
        "Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;",
        "Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;",
        "Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;",
        "Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;",
        "Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;"
    }
.end annotation


# static fields
.field public static a:Landroid/app/PendingIntent;

.field private static ap:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

.field private C:Z

.field private D:Z

.field private E:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

.field private F:Lcom/snapchat/android/model/chat/ChatConversation;

.field private G:Z

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:Z

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/view/View;

.field private N:J

.field private O:Lcom/snapchat/android/ui/CashSwiperView;

.field private P:Z

.field private Q:Z

.field private R:Lcom/snapchat/android/ui/CashReceiverView;

.field private S:Z

.field private T:Landroid/os/Handler;

.field private U:Landroid/os/Handler;

.field private V:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

.field private X:Lcom/snapchat/android/chat/ChatMessageReleaser;

.field private Y:Lcom/snapchat/android/model/chat/ChatConversationManager;

.field private Z:Landroid/os/Handler;

.field private aa:Z

.field private ab:Lcom/snapchat/android/chat/ChatMediaExpander;

.field private ac:Landroid/view/View;

.field private ad:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

.field private ae:F

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:F

.field private ak:Landroid/support/v4/view/GestureDetectorCompat;

.field private al:Lcom/snapchat/android/model/Friend;

.field private final am:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final an:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private ao:Z

.field private aq:Lcom/snapchat/android/ui/here/HereTooltip;

.field private ar:Lcom/snapchat/android/ui/cash/CashTooltip;

.field private as:Lcom/snapchat/android/model/chat/CashFeedItem;

.field private at:Z

.field private au:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;

.field private av:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

.field private aw:Z

.field protected d:Lcom/snapchat/android/ui/here/StreamView;

.field protected e:Lcom/snapchat/android/cash/CashtagParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/snapchat/android/cash/SendingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected g:Lcom/snapchat/android/cash/ReceivingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final i:Lcom/snapchat/android/chat/SendingMailman;

.field private final j:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

.field private final l:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/snapchat/android/ui/CursorCallbackEditText;

.field private s:F

.field private t:F

.field private u:Lcom/snapchat/android/ui/ChatCameraButton;

.field private v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/ObservableAboveTheFoldListView",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 322
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;

    invoke-direct {v3}, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;-><init>()V

    new-instance v4, Lcom/snapchat/android/chat/ChatMessageReleaser;

    invoke-direct {v4}, Lcom/snapchat/android/chat/ChatMessageReleaser;-><init>()V

    new-instance v5, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    invoke-direct {v5}, Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;-><init>()V

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->a()Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a()Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/fragments/chat/ChatFragment;-><init>(Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;Lcom/snapchat/android/chat/ChatMessageReleaser;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;Lcom/snapchat/android/chat/ChatMessageReleaser;Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 254
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    .line 258
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:J

    .line 260
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 273
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Z

    .line 283
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Z

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:F

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Ljava/util/HashMap;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    .line 318
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Z

    .line 336
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 337
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 338
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lcom/snapchat/android/chat/SendingMailman;

    .line 339
    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;

    .line 340
    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    .line 341
    iput-object p5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ad:Lcom/snapchat/android/fragments/chat/ChatMediaExpansionCalculator;

    .line 342
    iput-object p6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->j:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 343
    iput-object p7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    .line 344
    iput-object p8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    .line 345
    return-void
.end method

.method static synthetic A(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method

.method private A()V
    .locals 4

    .prologue
    .line 781
    iget-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(J)V

    .line 783
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:J

    .line 785
    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method private B()Z
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/text/Editable;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic C(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method private C()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    if-eqz v0, :cond_0

    .line 875
    :goto_0
    return-void

    .line 871
    :cond_0
    const v0, 0x7f0a0100

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 872
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 873
    const v1, 0x7f0a0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    .line 874
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/CashSwiperView;->setListener(Lcom/snapchat/android/ui/CashSwiperView$CashSwiperListener;)V

    goto :goto_0
.end method

.method static synthetic D(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Landroid/view/View;

    return-object v0
.end method

.method private D()V
    .locals 8

    .prologue
    const v7, 0x7f0a00f7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 878
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/HereTooltip;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:Lcom/snapchat/android/ui/here/HereTooltip;

    .line 879
    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CashTooltip;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Lcom/snapchat/android/ui/cash/CashTooltip;

    .line 881
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Landroid/os/Handler;

    .line 882
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:Landroid/os/Handler;

    .line 883
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    .line 884
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Landroid/os/Handler;

    .line 885
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$BottomScrollingGestureDetector;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment$BottomScrollingGestureDetector;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ak:Landroid/support/v4/view/GestureDetectorCompat;

    .line 887
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SpyRelativeLayout;

    .line 888
    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$2;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SpyRelativeLayout;->a(Lcom/snapchat/android/ui/SpyRelativeLayout$SpyListener;)V

    .line 912
    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$3;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->b:Z

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0, v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/HoldToStreamView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    .line 922
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 928
    :goto_0
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Landroid/view/View;

    .line 929
    const v0, 0x7f0a00f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->n:Landroid/view/View;

    .line 930
    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Landroid/view/View;

    .line 931
    const v0, 0x7f0a00fc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->p:Landroid/view/View;

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    .line 934
    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Landroid/widget/TextView;

    .line 935
    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CursorCallbackEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    .line 936
    iput v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:F

    .line 937
    iput v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:F

    .line 938
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const v1, 0xc001

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setInputType(I)V

    .line 939
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setHorizontallyScrolling(Z)V

    .line 940
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setMaxLines(I)V

    .line 942
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$4;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 955
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$5;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 966
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$6;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1047
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$7;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->a(Lcom/snapchat/android/ui/CursorCallbackEditText$SelectionChangedListener;)V

    .line 1054
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$8;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1075
    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ChatCameraButton;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    .line 1076
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$9;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$10;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1128
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setTouchSubscriber(Lcom/snapchat/android/ui/ChatCameraButton$TouchEventSubscriber;)V

    .line 1130
    new-instance v0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    invoke-direct {v0}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    .line 1133
    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    .line 1134
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setInterface(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;)V

    .line 1135
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setTranscriptMode(I)V

    .line 1136
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1137
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setDividerHeight(I)V

    .line 1138
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$11;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 1144
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setScrollViewCallbacks(Lcom/github/ksoichiro/android/observablescrollview/ObservableScrollViewCallbacks;)V

    .line 1146
    new-instance v0, Lcom/snapchat/android/chat/ChatMediaExpander;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-direct {v0, v1}, Lcom/snapchat/android/chat/ChatMediaExpander;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/chat/ChatMediaExpander;

    .line 1148
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1149
    const v1, 0x7f040024

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Landroid/view/View;

    .line 1150
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ac:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1152
    const v1, 0x7f040025

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    .line 1153
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$12;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Landroid/view/View;

    .line 1165
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:Landroid/view/View;

    .line 1167
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1168
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    .line 1170
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 1171
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$13;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1255
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$14;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$14;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;)V

    .line 1269
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1271
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1274
    invoke-virtual {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;

    invoke-direct {v0, p0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    new-instance v2, Lcom/snapchat/android/ui/listeners/MultipleAbsListViewOnScrollListeners;

    invoke-direct {v2, v1}, Lcom/snapchat/android/ui/listeners/MultipleAbsListViewOnScrollListeners;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1280
    return-void

    .line 924
    :cond_0
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/DummyStreamView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    .line 925
    invoke-virtual {p0, v7}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic E(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1
    .parameter

    .prologue
    .line 196
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:F

    return v0
.end method

.method private E()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1289
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:I

    if-nez v0, :cond_1

    .line 1292
    :cond_0
    const-string v0, "ChatFragment"

    const-string v1, "ChatFragment getAndSetTopPanelAndMessageInputViewHeights heights are 0, getting and setting heights"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1295
    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$15;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_1
    const-string v0, "ChatFragment"

    const-string v1, "ChatFragment getAndSetTopPanelAndMessageInputViewHeights heights are already set"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic F(Lcom/snapchat/android/fragments/chat/ChatFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 196
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    return v0
.end method

.method private F()V
    .locals 9

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    .line 1319
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1320
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_0

    .line 1361
    :goto_0
    return-void

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()V

    .line 1325
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 1326
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1327
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/text/Editable;)I

    move-result v3

    .line 1328
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    if-nez v0, :cond_1

    .line 1329
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: Confirmed CashFeedItem is null--RECONFIRMING recipient[%s] amount[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;I)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v4

    .line 1334
    iget-object v7, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/chat/ChatFragment$16;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;ILcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Landroid/text/Editable;)V

    invoke-virtual {v7, v4, v0}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->f()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/CashTransaction;->a(I)V

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0, v2, v0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->N()V

    goto :goto_0
.end method

.method static synthetic G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic H(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic I(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CashSwiperView;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    return-object v0
.end method

.method static synthetic J(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->V()V

    return-void
.end method

.method private K()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 1369
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CashTooltip;->a(Z)V

    .line 1371
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashtagDetected(Z)V

    .line 1372
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashSwipeDetected(Z)V

    .line 1393
    :cond_0
    :goto_0
    return v1

    .line 1376
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/widget/EditText;)Z

    move-result v0

    .line 1377
    if-eqz v0, :cond_4

    .line 1378
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/cash/CashtagParser;->b(Landroid/widget/EditText;)I

    move-result v3

    .line 1379
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/text/Editable;)I

    move-result v2

    .line 1380
    if-ne v2, v5, :cond_2

    move v2, v1

    .line 1384
    :cond_2
    if-eq v3, v5, :cond_3

    add-int/2addr v2, v3

    const v3, 0xf4240

    if-lt v2, v3, :cond_4

    :cond_3
    move v0, v1

    .line 1388
    :cond_4
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^\\${3,}$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 1389
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->a(Z)V

    .line 1390
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashtagDetected(Z)V

    .line 1391
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setCashSwipeDetected(Z)V

    .line 1393
    if-nez v0, :cond_5

    if-eqz v2, :cond_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic K(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Z

    return v0
.end method

.method static synthetic L(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CashReceiverView;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    return-object v0
.end method

.method private L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1429
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic M(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/ChatMessageReleaser;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    return-object v0
.end method

.method private M()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1433
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1434
    :cond_0
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 1435
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1436
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    .line 1437
    const-string v0, ""

    .line 1439
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1440
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()Ljava/lang/String;

    move-result-object v0

    .line 1443
    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SNAP_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 1444
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;

    invoke-direct {v2, v4, v0}, Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1445
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v4}, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private N()V
    .locals 3

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lcom/snapchat/android/chat/SendingMailman;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Z)V

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    return-void
.end method

.method static synthetic N(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->W()V

    return-void
.end method

.method private O()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1460
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_0

    .line 1473
    :goto_0
    return-void

    .line 1461
    :cond_0
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 1462
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1463
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    .line 1464
    const-string v0, ""

    .line 1466
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1467
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()Ljava/lang/String;

    move-result-object v0

    .line 1470
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/SwitchToQuickSnapCameraEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/SwitchToQuickSnapCameraEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1471
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic O(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Z

    return v0
.end method

.method static synthetic P(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private P()V
    .locals 2

    .prologue
    .line 1562
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    if-nez v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 1565
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1566
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 1569
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$18;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$18;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1578
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Z

    .line 1579
    return-void
.end method

.method static synthetic Q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Landroid/view/View;

    return-object v0
.end method

.method private Q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1642
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setIsActive(Z)V

    .line 1643
    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 1644
    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    .line 1645
    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1646
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:Z

    .line 1647
    return-void
.end method

.method static synthetic R(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/Window;
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method private R()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2207
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    .line 2208
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 2209
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2210
    return-void
.end method

.method static synthetic S(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private S()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    .line 2214
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    .line 2215
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2216
    return-void
.end method

.method static synthetic T(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->au:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSessionFactory;

    return-object v0
.end method

.method private T()V
    .locals 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_1

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->a:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    if-ne v0, v1, :cond_2

    .line 2303
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2306
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()V

    .line 2307
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 2308
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    .line 2309
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment$23;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic U(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    return-object v0
.end method

.method private U()V
    .locals 4

    .prologue
    .line 2384
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aG()I

    move-result v0

    if-lez v0, :cond_0

    .line 2385
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Z

    if-nez v0, :cond_1

    .line 2386
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aG()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->aH()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V

    .line 2391
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aI()V

    .line 2393
    :cond_0
    return-void

    .line 2389
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Z

    goto :goto_0
.end method

.method static synthetic V(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/util/chat/ChatMessagePaginator;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    return-object v0
.end method

.method private V()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2414
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Z

    .line 2415
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Z

    .line 2416
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashReceiverView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$25;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$25;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2436
    return-void
.end method

.method private W()V
    .locals 0

    .prologue
    .line 2632
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:F

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;)Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    return-object p1
.end method

.method private a(F)V
    .locals 3
    .parameter

    .prologue
    .line 2077
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 2078
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2079
    if-nez v0, :cond_1

    .line 2077
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2080
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2081
    instance-of v2, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    if-eqz v2, :cond_0

    .line 2082
    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a(F)V

    goto :goto_1

    .line 2085
    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1755
    :goto_0
    if-lt p1, v1, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    sub-int v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1757
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 1758
    if-eqz v0, :cond_1

    .line 1759
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1760
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatHeader;

    if-eqz v0, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-interface {v0, p1, v2, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1766
    :cond_0
    return-void

    .line 1755
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private a(IJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 2396
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Z

    if-nez v0, :cond_0

    .line 2397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->S:Z

    .line 2398
    const/high16 v0, 0x43fa

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CashReceiverView;->getAlpha()F

    move-result v1

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 2399
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CashReceiverView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2402
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/ui/CashReceiverView;->a(IJ)V

    .line 2404
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2405
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->T:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$24;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$24;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2411
    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 801
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 802
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->j:Lcom/snapchat/android/service/SnapchatServiceManager;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    .line 804
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    .line 805
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 806
    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    sget-object v4, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 808
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 512
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->M()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->b(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 516
    :cond_0
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: Refreshing CASH ELIGIBILITY for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    new-instance v0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;-><init>(Ljava/lang/String;)V

    .line 518
    const-class v1, Lcom/snapchat/android/api2/cash/ScCashResponsePayload;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 538
    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;->g()V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const v6, 0x7f0c014a

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2254
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    .line 2255
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->h(Ljava/lang/String;)V

    .line 2257
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->i(Ljava/lang/String;)V

    .line 2259
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 2220
    const-string v0, "ChatFragment"

    const-string v1, "CASH-LOG: SEND transaction id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()V

    .line 2224
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 2225
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$21;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$21;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V

    .line 2251
    return-void
.end method

.method private a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2262
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    if-eqz v0, :cond_1

    .line 2297
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 2266
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 2267
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    .line 2268
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Z

    .line 2269
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Lcom/snapchat/android/ui/cash/CashTooltip;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->b()V

    .line 2271
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;I)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 2272
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()V

    .line 2273
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$22;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$22;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1957
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1958
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:I

    .line 1960
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q:Z

    return p1
.end method

.method private static a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1918
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/snapchat/android/util/DateTimeUtils;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return v0

    .line 1920
    :cond_1
    instance-of v1, p1, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_0

    :cond_2
    instance-of v1, p0, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_0

    .line 1923
    :cond_3
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1926
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Ljava/util/HashSet;Ljava/util/Calendar;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Calendar;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1934
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1935
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1936
    invoke-static {p3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Ljava/util/Calendar;)V

    .line 1937
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    new-instance v0, Lcom/snapchat/android/model/chat/ChatDateHeader;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/chat/ChatDateHeader;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1939
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1940
    const/4 v0, 0x1

    .line 1942
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 355
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 356
    :goto_0
    sput-object p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    .line 357
    return v0

    .line 355
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:F

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:I

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 3
    .parameter

    .prologue
    .line 2123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 2125
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->pointToPosition(II)I

    move-result v0

    .line 2128
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 2129
    const/4 v0, 0x0

    .line 2131
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1982
    instance-of v0, p0, Lcom/snapchat/android/model/SentSnap;

    if-eqz v0, :cond_1

    .line 1983
    check-cast p0, Lcom/snapchat/android/model/SentSnap;

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->x()Ljava/lang/String;

    move-result-object v0

    .line 1987
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1999
    :cond_0
    :goto_0
    return-object v0

    .line 1988
    :cond_1
    instance-of v0, p0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 1993
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1994
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->e()Ljava/lang/String;

    move-result-object v0

    .line 1995
    if-nez v0, :cond_0

    .line 1999
    :cond_2
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(F)V
    .locals 0
    .parameter

    .prologue
    .line 2553
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/CashFeedItem;)V

    return-void
.end method

.method private b(Lcom/snapchat/android/model/Friend;Z)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1619
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    .line 1620
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1621
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setSelection(I)V

    .line 1623
    if-eqz p2, :cond_2

    .line 1624
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1625
    if-eqz v0, :cond_2

    .line 1627
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->M()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1629
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1630
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/widget/EditText;I)V

    goto :goto_1

    .line 1622
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:I

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->U:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    return p1
.end method

.method private static c(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1908
    instance-of v0, p0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_1

    .line 1909
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1910
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->at()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1914
    :goto_1
    return v0

    .line 1909
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1911
    :cond_1
    instance-of v0, p0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1912
    goto :goto_1

    .line 1914
    :cond_2
    invoke-interface {p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    return-void
.end method

.method private d(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2
    .parameter

    .prologue
    .line 1946
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v0

    .line 1947
    instance-of v1, p1, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_1

    .line 1948
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1952
    :cond_0
    :goto_0
    new-instance v1, Lcom/snapchat/android/model/chat/ChatHeader;

    invoke-direct {v1, v0, p1}, Lcom/snapchat/android/model/chat/ChatHeader;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1953
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1954
    return-void

    .line 1949
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1950
    const-string v0, ""

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 11
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1719
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:Z

    if-nez v0, :cond_1

    .line 1744
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1724
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v3

    move v2, v1

    .line 1725
    :goto_1
    if-gt v2, v3, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    sub-int v4, v2, v1

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1727
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 1728
    if-eqz v0, :cond_4

    .line 1729
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1730
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1731
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ap()Ljava/lang/String;

    move-result-object v1

    .line 1732
    const-string v3, "ChatFragment"

    const-string v5, "CHAT-LOG: Refreshing Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v8}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    aput-object v1, v6, v7

    instance-of v1, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v0

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-static {v3, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1737
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-interface {v0, v2, v4, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1738
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(I)V

    goto :goto_0

    .line 1732
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_3

    .line 1725
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->C()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->G:Z

    return p1
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->F()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Z

    return p1
.end method

.method static synthetic f(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 196
    sput-boolean p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    return p0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method private h(Z)V
    .locals 14
    .parameter

    .prologue
    .line 1772
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->s()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1773
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1774
    const/4 v1, -0x1

    iput v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:I

    .line 1776
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1777
    if-nez v1, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/model/chat/ChatDateHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/model/chat/ChatDateHeader;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1900
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a(I)V

    .line 1783
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 1786
    const-string v2, "ChatFragment"

    const-string v3, "CHAT-LOG: Incrementing paginator render size (old size: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    invoke-virtual {v6}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1788
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    invoke-virtual {v2}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->b()V

    .line 1791
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    invoke-virtual {v2}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->c()I

    move-result v3

    .line 1792
    if-ge v3, v1, :cond_13

    .line 1794
    sub-int v2, v1, v3

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 1798
    :goto_1
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatMessagePaginator has render size of %d messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1800
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1801
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1802
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1803
    invoke-direct {p0, v0, v7, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Ljava/util/HashSet;Ljava/util/Calendar;)Z

    .line 1804
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ap()Ljava/lang/String;

    move-result-object v1

    .line 1805
    const-string v3, "ChatFragment"

    const-string v8, "CHAT-LOG: Populating Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/4 v4, 0x2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    aput-object v1, v9, v4

    const/4 v10, 0x3

    instance-of v1, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v4

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v10

    invoke-static {v3, v8, v9}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1811
    const/4 v1, 0x0

    .line 1812
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1813
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-direct {p0, v3, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1814
    const/4 v0, 0x1

    move v3, v0

    move v4, v1

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 1815
    add-int/lit8 v0, v3, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1816
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1817
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1805
    :cond_2
    const/4 v5, 0x0

    const/4 v10, 0x3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v1, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-wide/16 v4, -0x1

    goto :goto_3

    .line 1818
    :cond_4
    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1819
    invoke-direct {p0, v1, v7, v6}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Ljava/util/HashSet;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1820
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1822
    :cond_5
    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1824
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1825
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ap()Ljava/lang/String;

    move-result-object v0

    .line 1826
    const-string v5, "ChatFragment"

    const-string v8, "CHAT-LOG: Populating Chat View with message id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v11}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_5
    aput-object v0, v9, v10

    const/4 v10, 0x3

    instance-of v0, v1, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_8

    check-cast v1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v0

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v5, v8, v9}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1814
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    .line 1826
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_6

    .line 1836
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1837
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    new-instance v1, Lcom/snapchat/android/model/chat/ChatDateHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/model/chat/ChatDateHeader;-><init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 1840
    :cond_a
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: Repopulated chat messages should have %d items"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1842
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->C:Z

    if-nez v0, :cond_b

    .line 1843
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged message view hasn\'t been loaded yet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1847
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 1848
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatFragment$19;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$19;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1854
    :cond_b
    if-eqz p1, :cond_c

    .line 1855
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged and scrolling to bottom"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1857
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 1858
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d()V

    .line 1859
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->W()V

    .line 1860
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/chat/ChatMediaExpander;

    invoke-virtual {v0}, Lcom/snapchat/android/chat/ChatMediaExpander;->a()V

    goto/16 :goto_0

    .line 1863
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1865
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 1869
    :goto_7
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_12

    .line 1870
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v2

    .line 1871
    if-eqz v2, :cond_e

    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatHeader;

    if-nez v3, :cond_e

    .line 1876
    :goto_8
    if-eqz v2, :cond_11

    .line 1877
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 1878
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1879
    if-nez v0, :cond_f

    const/4 v0, 0x0

    move v1, v0

    .line 1881
    :goto_9
    const-string v0, "ChatFragment"

    const-string v2, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 1885
    const/4 v0, 0x0

    .line 1886
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1887
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1893
    :cond_d
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 1869
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1879
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    move v1, v0

    goto :goto_9

    .line 1890
    :cond_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1891
    goto :goto_a

    .line 1895
    :cond_11
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment repopulateChatMessages calling notifyDataSetChanged while maintaining scroll position but no saved item"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1897
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto :goto_8

    :cond_13
    move-object v2, v0

    goto/16 :goto_1
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 788
    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 792
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1
    .parameter

    .prologue
    .line 196
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->s:F

    return v0
.end method

.method public static l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 796
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    .line 797
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    .line 798
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/chat/ChatFragment;)F
    .locals 1
    .parameter

    .prologue
    .line 196
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->t:F

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:Lcom/snapchat/android/ui/here/HereTooltip;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/Window;
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/chat/ChatFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/ChatMediaExpander;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/chat/ChatMediaExpander;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2137
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->R()V

    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/cash/CashTooltip;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ar:Lcom/snapchat/android/ui/cash/CashTooltip;

    return-object v0
.end method

.method static synthetic t(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->S()V

    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 705
    const-string v1, "goToFragmentNum"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setIntent(Landroid/content/Intent;)V

    .line 707
    return-void
.end method

.method static synthetic u(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->M()V

    return-void
.end method

.method private v()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->L()Ljava/lang/String;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()Z

    move-result v0

    if-nez v0, :cond_4

    .line 738
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 735
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 740
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 741
    if-nez v0, :cond_5

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 747
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    .line 748
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {v3, v2, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 749
    array-length v4, v0

    :goto_3
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 750
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 745
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic v(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->O()V

    return-void
.end method

.method static synthetic w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_0

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;->a()Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    return-object v0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 762
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;->a()Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/screenshotdetection/ChatScreenshotWatcher;->c()V

    .line 763
    return-void
.end method

.method static synthetic y(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->l:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    return-object v0
.end method

.method private y()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->b()V

    .line 767
    return-void
.end method

.method static synthetic z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/SendingMailman;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lcom/snapchat/android/chat/SendingMailman;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2089
    if-nez p1, :cond_0

    move v0, v1

    .line 2095
    :goto_0
    return v0

    .line 2090
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2091
    instance-of v2, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    if-eqz v2, :cond_1

    .line 2092
    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 2093
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2095
    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1978
    invoke-static {p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 196
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 2494
    return-void
.end method

.method public a(IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2491
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter

    .prologue
    .line 2116
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 2117
    instance-of v1, v0, Lcom/snapchat/android/model/Snap;

    if-eqz v1, :cond_0

    .line 2118
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->a()Lcom/snapchat/android/util/SnapListItemHandler;

    move-result-object v1

    check-cast v0, Lcom/snapchat/android/model/Snap;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/chat/ChatConversation;Landroid/content/Context;)V

    .line 2120
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2113
    return-void
.end method

.method public a(Lcom/github/ksoichiro/android/observablescrollview/ScrollState;)V
    .locals 1
    .parameter

    .prologue
    .line 2498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ai:Z

    .line 2499
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aj:F

    .line 2500
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1402
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1403
    if-nez v0, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1405
    :cond_0
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment$27;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1407
    :pswitch_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1408
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1411
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1414
    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1415
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->L:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->M:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1421
    :pswitch_2
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1422
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1655
    const-string v0, "ChatFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: ChatFragment setFriend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1656
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1657
    if-eqz v0, :cond_1

    .line 1658
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment setFriend changed. Resetting some state."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->W:Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a()V

    .line 1661
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashReceiverView;->a()V

    .line 1663
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->R:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/CashReceiverView;->setAlpha(F)V

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d()V

    .line 1666
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()V

    .line 1667
    invoke-direct {p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 1670
    :cond_1
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    .line 1671
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    .line 1673
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lcom/snapchat/android/model/chat/ChatConversationManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 1675
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_2

    .line 1679
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->NO_USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 1680
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->j:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->d()I

    .line 1682
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1683
    invoke-static {v0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 1684
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1712
    :goto_0
    return-void

    .line 1687
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->p(Z)V

    .line 1689
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, v0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/model/Friend;Z)V

    .line 1691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->as:Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1693
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1694
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lcom/snapchat/android/cash/ReceivingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->aF()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/cash/ReceivingCashManager;->a(Ljava/util/List;)V

    .line 1697
    :cond_3
    if-eqz p2, :cond_4

    .line 1698
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Z)Z

    .line 1700
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lcom/snapchat/android/chat/SendingMailman;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/SendingMailman;->f(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1701
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->H()V

    .line 1704
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->am()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 1705
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setIsActive(Z)V

    .line 1706
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b()V

    .line 1707
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setSelection(I)V

    .line 1709
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n()V

    .line 1711
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    sget-object v2, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->a:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v1, v4, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(ZLcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    .line 349
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 672
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 700
    :cond_0
    :goto_0
    return v3

    .line 675
    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 676
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 677
    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v5

    .line 682
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_1
    if-lez v4, :cond_6

    .line 683
    add-int/lit8 v0, v4, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 685
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 700
    :goto_2
    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    move v3, v0

    goto :goto_0

    .line 689
    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 690
    check-cast v1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 691
    goto :goto_2

    .line 695
    :cond_3
    instance-of v0, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_4

    move v0, v3

    .line 697
    goto :goto_2

    .line 682
    :cond_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v0, v3

    .line 700
    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public a(Landroid/view/View;FFFF)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2037
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2053
    :cond_0
    :goto_0
    return v0

    .line 2039
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Landroid/view/View;)I

    move-result v1

    .line 2041
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/view/View;)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    .line 2047
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/view/View;)F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 2048
    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    goto :goto_0

    .line 2052
    :cond_3
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(F)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2103
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2105
    :goto_0
    return v0

    .line 2104
    :cond_0
    const/high16 v1, 0x424c

    invoke-static {v1, v0}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    .line 2105
    float-to-int v0, v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2439
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    .line 2440
    return-void
.end method

.method public b(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 409
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment updateFriendIfNecessary %b"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    :cond_2
    const-string v1, "ChatFragment"

    const-string v2, "CHAT-LOG: ChatFragment updateFriendIfNecessary no displayed friend or username or displayed friend is different, setting to %s"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 423
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()V

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 2443
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    .line 2444
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 2109
    return-void
.end method

.method public c(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1587
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setVisibility(I)V

    .line 1589
    return-void

    :cond_0
    move v0, v2

    .line 1587
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1588
    goto :goto_1
.end method

.method public d(Landroid/view/View;)V
    .locals 14
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2686
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2687
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 2691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2692
    iget-object v1, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v1, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v1, :cond_6

    .line 2693
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    .line 2694
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->m()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatConversation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2695
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v10

    .line 2696
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->aa()J

    move-result-wide v12

    cmp-long v1, v10, v12

    if-lez v1, :cond_5

    .line 2697
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1, v4, v10, v11}, Lcom/snapchat/android/chat/ChatMessageReleaser;->d(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v4

    .line 2699
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->z()I

    move-result v0

    int-to-long v0, v0

    move v6, v5

    :goto_0
    move-wide v8, v0

    move v0, v6

    .line 2729
    :goto_1
    if-eqz v4, :cond_0

    .line 2730
    cmp-long v1, v8, v2

    if-lez v1, :cond_a

    .line 2731
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 2733
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Landroid/os/Handler;

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$26;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment$26;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2746
    :goto_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 2749
    :cond_0
    if-eqz v0, :cond_1

    .line 2750
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v2, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->RELEASE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    .line 2760
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-static {v0}, Lcom/snapchat/android/util/listview/ListViewUtils;->b(Landroid/widget/ListView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2761
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2762
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2763
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2764
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2765
    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v5, v7

    .line 2766
    :cond_3
    if-eqz v5, :cond_4

    .line 2767
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->c()Z

    .line 2771
    :cond_4
    return-void

    .line 2700
    :cond_5
    invoke-virtual {v0, v8, v9}, Lcom/snapchat/android/model/chat/Chat;->f(J)Z

    move-result v0

    if-eqz v0, :cond_d

    move-wide v0, v2

    move v4, v5

    move v6, v7

    .line 2701
    goto :goto_0

    .line 2704
    :cond_6
    iget-object v1, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v1, Lcom/snapchat/android/model/SentSnap;

    if-eqz v1, :cond_7

    .line 2705
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/SentSnap;

    .line 2706
    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->p()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2707
    invoke-virtual {v0}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v0

    .line 2708
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatConversation;->ag()J

    move-result-wide v8

    cmp-long v4, v0, v8

    if-lez v4, :cond_c

    .line 2709
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v4, v6, v0, v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;->b(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v0

    :goto_3
    move-wide v8, v2

    move v4, v5

    .line 2713
    goto/16 :goto_1

    :cond_7
    iget-object v1, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v1, :cond_8

    .line 2714
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 2715
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2716
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->ae()J

    move-result-wide v0

    .line 2717
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatConversation;->ah()J

    move-result-wide v8

    cmp-long v4, v0, v8

    if-lez v4, :cond_b

    .line 2718
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v4, v6, v0, v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;->c(Lcom/snapchat/android/model/chat/ChatConversation;J)Z

    move-result v0

    :goto_4
    move-wide v8, v2

    move v4, v5

    .line 2722
    goto/16 :goto_1

    :cond_8
    iget-object v1, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v1, v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_9

    .line 2723
    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 2724
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->o()Z

    move-result v1

    if-nez v1, :cond_9

    .line 2725
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1, v4, v0}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    :cond_9
    move-wide v8, v2

    move v4, v5

    move v0, v5

    goto/16 :goto_1

    .line 2744
    :cond_a
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;->c(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    goto/16 :goto_2

    :cond_b
    move v0, v5

    goto :goto_4

    :cond_c
    move v0, v5

    goto :goto_3

    :cond_d
    move-wide v0, v2

    move v4, v5

    move v6, v5

    goto/16 :goto_0
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->o:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    return-void

    .line 1596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d_()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 551
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 553
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->d()V

    .line 556
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 558
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0206

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/snapchat/android/util/FriendUtils;->d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 570
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 572
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->P:Z

    if-eqz v0, :cond_2

    .line 573
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/AdjustForQuickSnapEvent;

    invoke-direct {v1, v7}, Lcom/snapchat/android/util/eventbus/AdjustForQuickSnapEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->b:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 578
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_4

    .line 579
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    .line 580
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Z)V

    .line 583
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Z:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/chat/ChatMediaExpander;

    invoke-virtual {v0}, Lcom/snapchat/android/chat/ChatMediaExpander;->a()V

    .line 585
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    if-eqz v0, :cond_8

    .line 588
    :cond_3
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: LEFT CHAT with %s due to app pause when ChatFragment visible or entering in-chat camera or quick snap"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c()V

    .line 607
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->v()V

    .line 608
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x()V

    .line 610
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    if-nez v0, :cond_5

    .line 611
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A()V

    .line 616
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    if-nez v0, :cond_7

    .line 618
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 621
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->Y:Lcom/snapchat/android/model/chat/ChatConversationManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c(Ljava/lang/String;)V

    .line 624
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setLocked(Z)V

    .line 625
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d()V

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 628
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;

    invoke-direct {v1, v7}, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 629
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->Q()V

    .line 632
    :cond_7
    invoke-static {}, Lcom/snapchat/android/ui/ImageResource;->b()V

    .line 634
    sput-object v9, Lcom/snapchat/android/fragments/chat/ChatFragment;->h:Ljava/lang/String;

    .line 635
    return-void

    .line 592
    :cond_8
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: SWIPED OUT OF CHAT with %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-static {}, Lcom/snapchat/android/util/SnapUtils;->b()V

    .line 597
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v2, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/chat/ChatMessageReleaser;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;)V

    .line 599
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->w()V

    .line 600
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    .line 601
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l()V

    goto/16 :goto_0
.end method

.method public e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2143
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2144
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->av:Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;->b()V

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 2149
    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->c()V

    .line 713
    const/4 v0, 0x1

    .line 715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 774
    iget-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->N:J

    .line 776
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j()V

    .line 778
    :cond_0
    return-void
.end method

.method public n()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1510
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->C()Z

    move-result v4

    .line 1511
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->v()Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    move-result-object v0

    if-eqz v0, :cond_1

    move v3, v1

    .line 1512
    :goto_0
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v0, v1

    .line 1514
    :goto_1
    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Lcom/snapchat/android/ui/here/StreamView;->a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;)V

    .line 1515
    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3, v5}, Lcom/snapchat/android/ui/here/StreamView;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1516
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    sget-object v5, Lcom/snapchat/android/ui/here/DisconnectReason;->c:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v3, v0, v5}, Lcom/snapchat/android/ui/here/StreamView;->setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 1519
    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    if-eqz v4, :cond_3

    const-string v3, "blue"

    :goto_2
    invoke-virtual {v5, v3}, Lcom/snapchat/android/ui/ChatCameraButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/ui/ChatCameraButton;->setPresent(Z)V

    .line 1522
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ChatCameraButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1524
    :goto_3
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aq:Lcom/snapchat/android/ui/here/HereTooltip;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2, v3, v1}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 1526
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$17;

    invoke-direct {v2, p0, v0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment$17;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;ZZ)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/ChatCameraButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1546
    return-void

    :cond_1
    move v3, v2

    .line 1511
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1512
    goto :goto_1

    .line 1519
    :cond_3
    const-string v3, "yellow"

    goto :goto_2

    :cond_4
    move v1, v2

    .line 1522
    goto :goto_3
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1554
    return-void
.end method

.method public onCancelInChatSnapEvent(Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    .line 1491
    return-void
.end method

.method public onCancelQuickSnapEvent(Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ao:Z

    .line 1496
    return-void
.end method

.method public onCashRainEvent(Lcom/snapchat/android/util/eventbus/CashRainEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2375
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/CashRainEvent;->c()Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2381
    :goto_0
    return-void

    .line 2379
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/CashRainEvent;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/CashRainEvent;->b()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(IJ)V

    .line 2380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Z

    goto :goto_0
.end method

.method public onChatLinkClickedEvent(Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;)V
    .locals 7
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2153
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;->a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    .line 2154
    invoke-virtual {v1}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->b()Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    move-result-object v2

    .line 2156
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2157
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->a()Lcom/snapchat/android/util/chat/UrlType;

    move-result-object v0

    sget-object v6, Lcom/snapchat/android/util/chat/UrlType;->c:Lcom/snapchat/android/util/chat/UrlType;

    if-ne v0, v6, :cond_0

    const v0, 0x7f0c0069

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c006c

    :goto_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const v5, 0x7f0c003d

    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 2164
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/fragments/chat/ChatFragment$20;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/util/chat/SnapchatUrlSpan;Lcom/snapchat/android/model/chat/ISavableChatFeedItem;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2197
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2198
    return-void

    .line 2157
    :cond_0
    const v0, 0x7f0c006a

    goto :goto_0

    :cond_1
    const v0, 0x7f0c006b

    goto :goto_1
.end method

.method public onChatSwipeStartedEvent(Lcom/snapchat/android/util/eventbus/ChatSwipeStartedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1612
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ChatSwipeStartedEvent;->a:Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1614
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ChatSwipeStartedEvent;->a:Lcom/snapchat/android/model/Friend;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 1615
    return-void
.end method

.method public onChatUpdatedEvent(Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_1

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U()V

    .line 2022
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2023
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Ljava/lang/String;)V

    .line 2025
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d()V

    .line 2027
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->W()V

    goto :goto_0

    .line 2030
    :cond_2
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClearChatTextEvent(Lcom/snapchat/android/util/eventbus/ClearChatTextEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1605
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 812
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 813
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 814
    const v0, 0x7f040022

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    .line 815
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 817
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ae:F

    .line 818
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->D()V

    .line 820
    if-eqz p3, :cond_3

    .line 821
    const-string v0, "friend_username"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 823
    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->c:Ljava/lang/String;

    .line 826
    :cond_0
    const-string v0, "message_drafts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 828
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 830
    const-string v0, "cashtag_positions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 832
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 833
    const-string v0, "top_panel_divider_height"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    const-string v0, "top_panel_divider_height"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:I

    .line 836
    :cond_1
    const-string v0, "message_input_layout_height"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 837
    const-string v0, "message_input_layout_height"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    .line 838
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->v:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setMinimumFooterHeight(I)V

    .line 840
    :cond_2
    const-string v0, "message_input_divider_height"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    const-string v0, "message_input_divider_height"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:I

    .line 845
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 846
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 847
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 848
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 849
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ab:Lcom/snapchat/android/chat/ChatMediaExpander;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/ChatMediaExpander;->a(I)V

    .line 851
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onCreateView getting and setting top panel and message input heights"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()V

    .line 854
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 855
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 860
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 861
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->u:Lcom/snapchat/android/ui/ChatCameraButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a()V

    .line 862
    return-void
.end method

.method public onEndpointsRefreshedEvent(Lcom/snapchat/android/util/network/EndpointManager$EndpointsRefreshedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2203
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->y()V

    .line 2204
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 2069
    return-void
.end method

.method public onFeedTimerChangeEvent(Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 2059
    return-void
.end method

.method public onHideSnapEvent(Lcom/snapchat/android/util/eventbus/HideSnapMessageEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2004
    return-void
.end method

.method public onLoadConversationPageTaskEvent(Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1398
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;->a:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    .line 1399
    return-void
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 2074
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 639
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 640
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    .line 642
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->s()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 643
    if-eqz v0, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u()V

    .line 649
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->y()V

    .line 651
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->r:Lcom/snapchat/android/ui/CursorCallbackEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->clearFocus()V

    .line 652
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->v()V

    .line 653
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x()V

    .line 654
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->A()V

    .line 655
    return-void

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public onPresenceUpdatedEvent(Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n()V

    .line 1502
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    iget-boolean v1, p1, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;->b:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/StreamView;->b(Z)V

    .line 1504
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 381
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 382
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 383
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onResume"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    .line 386
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 389
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    if-eqz v0, :cond_0

    .line 390
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->at:Z

    .line 391
    const-string v0, "ChatFragment"

    const-string v1, "Make this fragment visible because it was selected as the current item of the view pager before it was created"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Z)V

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(F)V

    .line 396
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n()V

    .line 402
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "friend_username"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    const-string v0, "message_drafts"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->am:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 367
    const-string v0, "cashtag_positions"

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->an:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 368
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:I

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "top_panel_divider_height"

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    :cond_1
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    if-eqz v0, :cond_2

    .line 372
    const-string v0, "message_input_layout_height"

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 374
    :cond_2
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:I

    if-eqz v0, :cond_3

    .line 375
    const-string v0, "message_input_divider_height"

    iget v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 377
    :cond_3
    return-void
.end method

.method public onSecureChatSessionConnectedEvent(Lcom/snapchat/android/util/eventbus/SecureChatSessionConnectedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    .line 726
    :cond_0
    return-void
.end method

.method public onSnapSelectedForReplayEvent(Lcom/snapchat/android/util/eventbus/SnapSelectedForReplayEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    .line 2064
    return-void
.end method

.method public onSnapViewingEvent(Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1477
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapMessageViewingEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1478
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x()V

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1483
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->w()V

    goto :goto_0
.end method

.method public onWindowFullscreenModeChangedEvent(Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 2008
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;->a:Z

    if-eqz v0, :cond_0

    .line 2009
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 2013
    :goto_0
    return-void

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 1970
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->I:I

    return v0
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->y:Z

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->J:Z

    .line 546
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->q_()V

    .line 547
    return-void
.end method

.method public r()V
    .locals 6

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->i:Lcom/snapchat/android/chat/SendingMailman;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/CashSwiperView;->getFirstSwipeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;JJ)V

    .line 2352
    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 2356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->D:Z

    .line 2357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->E:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    .line 2360
    sget-boolean v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ap:Z

    if-nez v0, :cond_0

    .line 2361
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P()V

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->O:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getDollarsSwiped()I

    move-result v0

    if-nez v0, :cond_1

    .line 2364
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->S()V

    .line 2366
    :cond_1
    return-void
.end method

.method protected s_()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 430
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->V:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 432
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 434
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ChatFragment onVisible"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ag:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->af:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->ah:I

    if-nez v0, :cond_1

    .line 439
    :cond_0
    const-string v0, "ChatFragment"

    const-string v1, "ChatFragment onVisible heights are 0, getting and setting heights"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->E()V

    .line 443
    :cond_1
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->x:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 447
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aa:Z

    .line 449
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/AdjustForQuickSnapEvent;

    invoke-direct {v2, v4}, Lcom/snapchat/android/util/eventbus/AdjustForQuickSnapEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 450
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 451
    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_2

    .line 452
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 453
    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()Lcom/snapchat/android/analytics/NotificationAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->CHAT:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)V

    .line 455
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->k:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->e()Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :cond_3
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->B:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b()V

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_5

    .line 508
    :cond_4
    :goto_0
    return-void

    .line 476
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const-string v0, "ChatFragment"

    const-string v1, "CHAT-LOG: ENTERED CHAT with %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h()V

    .line 480
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->w()V

    .line 481
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    .line 483
    iput-boolean v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->aw:Z

    .line 484
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->U()V

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->X:Lcom/snapchat/android/chat/ChatMessageReleaser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/ChatMessageReleaser;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 494
    invoke-direct {p0, v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Z)V

    .line 495
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v1}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->h:Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->al:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/model/Friend;)V

    .line 500
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->P()V

    .line 502
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_6

    const-string v1, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 504
    const-string v1, "chatOrCashFromServerNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment;->F:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->k(Z)V

    .line 507
    :cond_6
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    goto/16 :goto_0
.end method

.method public t()V
    .locals 0

    .prologue
    .line 2370
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->T()V

    .line 2371
    return-void
.end method
