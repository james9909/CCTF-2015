.class public Lcom/snapchat/android/LandingPageActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;
.implements Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/SnapchatActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;",
        "Lcom/snapchat/android/util/fragment/SnapchatFragment$SnapchatFragmentInterface;"
    }
.end annotation


# static fields
.field static i:Lcom/snapchat/android/util/chat/SecureChatService;

.field private static v:Lcom/snapchat/android/LandingPageActivity;


# instance fields
.field private A:F

.field private B:I

.field private C:Z

.field private D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Lcom/snapchat/android/util/SnapchatPagerAdapter;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private final J:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final K:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final L:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final M:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final N:Lcom/snapchat/android/analytics/NotificationAnalytics;

.field private final O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

.field private final P:Lcom/snapchat/android/util/SoftNavigationBarManager;

.field private final Q:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final R:Lcom/snapchat/android/networkmanager/DownloadManager;

.field private final S:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final T:Lcom/snapchat/android/chat/ChatConnectionMonitor;

.field private final U:Lcom/snapchat/android/receiver/ConnectivityReceiver;

.field private final V:Lcom/snapchat/android/location/LocationProvider;

.field private final W:Lcom/snapchat/android/location/LocationPermissionsAccessor;

.field private X:Lcom/snapchat/android/InAppNotificationManager;

.field private Y:Z

.field private Z:Z

.field protected a:Lcom/snapchat/android/util/SnapchatViewPager;

.field private final aa:Ljava/lang/Runnable;

.field private ab:Landroid/os/Handler;

.field private ac:Z

.field private ad:Z

.field private ae:Landroid/content/ServiceConnection;

.field protected b:I

.field protected c:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

.field protected d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

.field protected e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

.field protected f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

.field protected g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

.field h:Landroid/app/ProgressDialog;

.field protected j:Lcom/snapchat/android/analytics/LifecycleAnalytics;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected k:Lcom/snapchat/android/deeplink/DeepLinkParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

.field protected m:Lcom/snapchat/android/controller/SendSnapController;

.field protected n:Lcom/snapchat/android/controller/UploadSnapMediaController;

.field protected o:Lcom/squareup/otto/Bus;

.field private final w:Lcom/snapchat/android/SnapUploadPolicy;

.field private x:Lcom/snapchat/android/util/SnapListItemHandler;

.field private y:Z

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 18

    .prologue
    .line 260
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/controller/SendSnapController;

    invoke-direct {v2}, Lcom/snapchat/android/controller/SendSnapController;-><init>()V

    new-instance v3, Lcom/snapchat/android/controller/UploadSnapMediaController;

    invoke-direct {v3}, Lcom/snapchat/android/controller/UploadSnapMediaController;-><init>()V

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->a()Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/util/SoftNavigationBarManager;->a()Lcom/snapchat/android/util/SoftNavigationBarManager;

    move-result-object v9

    new-instance v10, Lcom/snapchat/android/SnapUploadPolicy;

    invoke-direct {v10}, Lcom/snapchat/android/SnapUploadPolicy;-><init>()V

    invoke-static {}, Lcom/snapchat/android/networkmanager/DownloadManager;->a()Lcom/snapchat/android/networkmanager/DownloadManager;

    move-result-object v11

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v12

    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a()Lcom/snapchat/android/chat/ChatConnectionMonitor;

    move-result-object v13

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v14

    new-instance v15, Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-direct {v15}, Lcom/snapchat/android/receiver/ConnectivityReceiver;-><init>()V

    invoke-static {}, Lcom/snapchat/android/location/LocationProvider;->a()Lcom/snapchat/android/location/LocationProvider;

    move-result-object v16

    new-instance v17, Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-direct/range {v17 .. v17}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>()V

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Lcom/snapchat/android/LandingPageActivity;-><init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/controller/UploadSnapMediaController;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;Lcom/snapchat/android/util/SoftNavigationBarManager;Lcom/snapchat/android/SnapUploadPolicy;Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/chat/ChatConnectionMonitor;Lcom/squareup/otto/Bus;Lcom/snapchat/android/receiver/ConnectivityReceiver;Lcom/snapchat/android/location/LocationProvider;Lcom/snapchat/android/location/LocationPermissionsAccessor;)V

    .line 277
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/controller/UploadSnapMediaController;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;Lcom/snapchat/android/util/SoftNavigationBarManager;Lcom/snapchat/android/SnapUploadPolicy;Lcom/snapchat/android/networkmanager/DownloadManager;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/chat/ChatConnectionMonitor;Lcom/squareup/otto/Bus;Lcom/snapchat/android/receiver/ConnectivityReceiver;Lcom/snapchat/android/location/LocationProvider;Lcom/snapchat/android/location/LocationPermissionsAccessor;)V
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    .line 190
    const/4 v1, 0x2

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->y:Z

    .line 194
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->z:F

    .line 195
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/snapchat/android/LandingPageActivity;->A:F

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->C:Z

    .line 198
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->D:Ljava/util/Set;

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->H:Z

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->I:Z

    .line 218
    new-instance v1, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-direct {v1}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    .line 225
    new-instance v1, Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lcom/snapchat/android/analytics/NotificationAnalytics;

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Z

    .line 247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Z

    .line 248
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$1;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Ljava/lang/Runnable;

    .line 316
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Landroid/os/Handler;

    .line 1556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Z

    .line 1557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Z

    .line 1852
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$8;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Landroid/content/ServiceConnection;

    .line 296
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 297
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 298
    iput-object p2, p0, Lcom/snapchat/android/LandingPageActivity;->m:Lcom/snapchat/android/controller/SendSnapController;

    .line 299
    iput-object p3, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lcom/snapchat/android/controller/UploadSnapMediaController;

    .line 300
    iput-object p4, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 301
    iput-object p5, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 302
    iput-object p6, p0, Lcom/snapchat/android/LandingPageActivity;->L:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 303
    iput-object p7, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 304
    iput-object p8, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    .line 305
    iput-object p9, p0, Lcom/snapchat/android/LandingPageActivity;->P:Lcom/snapchat/android/util/SoftNavigationBarManager;

    .line 306
    iput-object p10, p0, Lcom/snapchat/android/LandingPageActivity;->w:Lcom/snapchat/android/SnapUploadPolicy;

    .line 307
    iput-object p11, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/networkmanager/DownloadManager;

    .line 308
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    .line 309
    iput-object p12, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 310
    iput-object p13, p0, Lcom/snapchat/android/LandingPageActivity;->T:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    .line 311
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->U:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    .line 312
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/location/LocationProvider;

    .line 313
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    .line 314
    return-void
.end method

.method private A()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$2;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 706
    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private B()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 760
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v1, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 761
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v2}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 892
    new-instance v0, Lcom/snapchat/android/HomePagerAdapter;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v1, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/HomePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->E:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    .line 895
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->E:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setAdapter(Lcom/snapchat/android/util/SnapchatPagerAdapter;)V

    .line 896
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->E:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatPagerAdapter;->notifyDataSetChanged()V

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$3;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$4;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1024
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private D()V
    .locals 3

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_0

    const-string v1, "fromServerNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a()V

    .line 1264
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->M:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b()V

    .line 1266
    :cond_0
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 1875
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1876
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1877
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/LandingPageActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1878
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->stopService(Landroid/content/Intent;)Z

    .line 1880
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->L:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 1835
    invoke-static {p1, p0}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1836
    if-nez v0, :cond_0

    .line 1837
    const v0, 0x7f0c0172

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 1846
    :goto_0
    return-void

    .line 1842
    :cond_0
    invoke-static {p0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    .line 1844
    new-instance v1, Lcom/snapchat/android/model/Snapbryo$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/model/Snapbryo$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(Z)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    .line 1845
    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-direct {v1, v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->onSnapCapturedEvent(Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1385
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1387
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1400
    :goto_0
    return-void

    .line 1389
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1390
    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_2

    .line 1393
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1397
    :cond_3
    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/AnnotatedMediabryo;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1403
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1408
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->CAMERA:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    .line 1409
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-eqz v1, :cond_3

    .line 1410
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->a()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1411
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FEED:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    .line 1415
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Z)V

    move-object v1, v0

    .line 1424
    :goto_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->b()Z

    move-result v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;ZZZILcom/snapchat/android/model/User;)V

    goto :goto_0

    .line 1412
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->a()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1413
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    goto :goto_1

    .line 1416
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v1, :cond_4

    .line 1417
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    move-object v1, v0

    goto :goto_2

    .line 1418
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v1, :cond_5

    .line 1419
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    move-object v1, v0

    goto :goto_2

    .line 1420
    :cond_5
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    if-eqz v1, :cond_7

    .line 1421
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_DISCOVER:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    move-object v1, v0

    goto :goto_2

    .line 1424
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto :goto_2
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1783
    sparse-switch p1, :sswitch_data_0

    .line 1791
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;

    invoke-direct {v2, p1, p2}, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1795
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1796
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 1801
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1783
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/networkmanager/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/networkmanager/DownloadManager;

    return-object v0
.end method

.method private b(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/service/SnapchatServiceManager;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-object v0
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 689
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    const-string v1, "snapchatUserIsLoggedIn"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 691
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/LandingPageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/snapchat/android/LandingPageActivity;->I:Z

    return p1
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 1120
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->v:Lcom/snapchat/android/LandingPageActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1121
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->v:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;)Z

    move-result v0

    goto :goto_0
.end method

.method public static l()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1129
    sget-object v1, Lcom/snapchat/android/LandingPageActivity;->v:Lcom/snapchat/android/LandingPageActivity;

    if-nez v1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return v0

    .line 1130
    :cond_1
    sget-object v1, Lcom/snapchat/android/LandingPageActivity;->v:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v1}, Lcom/snapchat/android/LandingPageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1131
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1132
    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static t()Lcom/snapchat/android/util/chat/SecureChatService;
    .locals 1

    .prologue
    .line 1849
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 520
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->finish()V

    .line 521
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lcom/snapchat/android/InAppNotificationManager;

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 616
    :cond_0
    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 617
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 618
    new-instance v0, Lcom/snapchat/android/InAppNotificationManager;

    const v1, 0x7f0a01ff

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/InAppNotificationManager;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lcom/snapchat/android/InAppNotificationManager;

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1137
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Z

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()V

    .line 1140
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->Z:Z

    .line 1141
    const/4 v0, 0x2

    .line 1148
    :goto_0
    return v0

    .line 1142
    :cond_0
    const-string v0, "fromServerNotification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Z

    if-nez v0, :cond_1

    .line 1145
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()V

    .line 1146
    invoke-virtual {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->b(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->b(Landroid/content/Intent;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Lcom/snapchat/android/analytics/NotificationAnalytics;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lcom/snapchat/android/analytics/NotificationAnalytics;

    return-object v0
.end method

.method protected a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1433
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1442
    if-nez p1, :cond_2

    .line 1443
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 1450
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1454
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1455
    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 1459
    :cond_1
    iput-object v4, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    .line 1460
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1444
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;

    .line 1446
    if-eqz v0, :cond_0

    .line 1447
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i()V

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 716
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 383
    if-eqz p1, :cond_0

    .line 384
    const-string v0, "in_chat_snap_event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 385
    const-string v0, "view_pager_index"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 386
    const-string v0, "should_pop_fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 398
    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->u:Z

    if-nez v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->u:Z

    if-nez v1, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()V

    goto :goto_0

    .line 412
    :cond_2
    if-eqz v0, :cond_0

    .line 413
    iput v2, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 414
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->b()V

    goto :goto_0
.end method

.method a(Landroid/support/v4/app/FragmentManager;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 807
    if-nez p2, :cond_1

    .line 808
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 825
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 826
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->d()V

    .line 839
    :goto_0
    return-void

    .line 810
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p0, v2}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    .line 819
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    .line 822
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    .line 828
    :cond_1
    if-ne p2, v1, :cond_2

    .line 830
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->d()V

    .line 835
    add-int/lit8 v0, p2, -0x1

    .line 836
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/LandingPageActivity;->b(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 837
    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    goto :goto_0

    .line 808
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2002
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2025
    :goto_0
    return-void

    .line 2004
    :pswitch_0
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->a(Landroid/content/Context;)J

    move-result-wide v0

    .line 2005
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2008
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2009
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2010
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 2012
    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/snapchat/android/LandingPageActivity;->D:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2015
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    .line 2017
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->D:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2020
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/snapchat/android/model/UserPrefs;->a(Landroid/content/Context;J)V

    .line 2021
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a()Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->b(Ljava/util/List;)V

    goto :goto_0

    .line 2002
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 1340
    instance-of v0, p1, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1341
    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    .line 1342
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    invoke-virtual {p1}, Lcom/snapchat/android/model/Mediabryo;->N()Ljava/lang/String;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/lang/String;)V

    .line 1344
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->i(Ljava/lang/String;)V

    .line 1346
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lcom/snapchat/android/controller/UploadSnapMediaController;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/controller/UploadSnapMediaController;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 1351
    :goto_0
    return-void

    .line 1348
    :cond_1
    check-cast p1, Lcom/snapchat/android/discover/model/DSnapbryo;

    .line 1349
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->n:Lcom/snapchat/android/controller/UploadSnapMediaController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/Mediabryo;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1365
    check-cast p1, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 1367
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->m:Lcom/snapchat/android/controller/SendSnapController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/controller/SendSnapController;->e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    :try_end_0
    .catch Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapSendInitiatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SnapSendInitiatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1377
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;Z)V

    .line 1378
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->c()V

    .line 1379
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->d()V

    .line 1381
    invoke-direct {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 1382
    return-void

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    :goto_1
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0

    .line 1368
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 5
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2035
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->a(Lcom/snapchat/android/model/User;)V

    .line 2036
    const-string v0, "LandingPageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2039
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2040
    invoke-direct {p0, v4}, Lcom/snapchat/android/LandingPageActivity;->c(Z)V

    .line 2041
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;)V

    .line 2042
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;)V

    .line 2045
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->z()Lcom/snapchat/android/model/server/MessagingGatewayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->v()V

    .line 2057
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->H:Z

    if-eqz v0, :cond_2

    .line 2058
    invoke-static {v4}, Lcom/snapchat/android/model/UserPrefs;->c(Z)V

    .line 2059
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a()V

    .line 2060
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->j:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/LifecycleAnalytics;->a(Landroid/content/Intent;)V

    .line 2061
    new-instance v0, Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-direct {v0, p0}, Lcom/snapchat/android/notification/NotificationRegistrar;-><init>(Landroid/content/Context;)V

    .line 2062
    invoke-virtual {v0, p0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Landroid/app/Activity;)V

    .line 2063
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;ZZ)V

    .line 2066
    :cond_1
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->H:Z

    .line 2068
    :cond_2
    :goto_1
    return-void

    .line 2048
    :cond_3
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2049
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->y()V

    goto :goto_1

    .line 2052
    :cond_4
    invoke-static {p0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 2053
    invoke-direct {p0, v3}, Lcom/snapchat/android/LandingPageActivity;->c(Z)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1471
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v1, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1472
    instance-of v2, v0, Lcom/snapchat/android/SnapPreviewFragment;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/snapchat/android/SnapPreviewFragment;

    if-eqz v2, :cond_0

    .line 1474
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1477
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 1479
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1480
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1481
    :cond_2
    const v0, 0x7f0a01ed

    invoke-virtual {v1, v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1482
    invoke-virtual {v1, p2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1486
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1489
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/LandingPageActivity$5;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    :goto_0
    return-void

    .line 1495
    :catch_0
    move-exception v0

    .line 1497
    const-string v1, "LandingPageActivity"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 2110
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->z()V

    .line 2111
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lcom/snapchat/android/InAppNotificationManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/InAppNotificationManager;->b(Z)V

    .line 2112
    return-void
.end method

.method public a(ILcom/snapchat/android/util/fragment/SnapchatFragment;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v2}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1047
    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v2

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected b(Landroid/content/Intent;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 1228
    const-string v0, "goToFragmentNum"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1231
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v1

    .line 1233
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->k:Lcom/snapchat/android/deeplink/DeepLinkParser;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/deeplink/DeepLinkParser;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1235
    const/4 v0, 0x3

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1236
    :cond_1
    if-eqz v1, :cond_2

    if-ne v0, v3, :cond_0

    .line 1239
    :cond_2
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1240
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1242
    :cond_4
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    goto :goto_0
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 422
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->z()V

    .line 2117
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lcom/snapchat/android/InAppNotificationManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/InAppNotificationManager;->a(Z)V

    .line 2118
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 667
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 670
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->G()V

    goto :goto_0

    .line 674
    :cond_2
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v1

    if-nez v1, :cond_0

    .line 678
    const/4 v0, 0x1

    goto :goto_0
.end method

.method d()V
    .locals 0

    .prologue
    .line 769
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    .line 770
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 723
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/snapchat/android/LandingPageActivity;->z:F

    .line 725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/snapchat/android/LandingPageActivity;->A:F

    .line 728
    :cond_0
    instance-of v2, v0, Lcom/snapchat/android/camera/CameraFragment;

    if-eqz v2, :cond_1

    .line 729
    check-cast v0, Lcom/snapchat/android/camera/CameraFragment;

    .line 730
    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 753
    :goto_0
    return v0

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity;->z:F

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->A:F

    iget v4, p0, Lcom/snapchat/android/LandingPageActivity;->B:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Landroid/view/MotionEvent;FFI)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 741
    goto :goto_0

    .line 743
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity;->z:F

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->A:F

    iget v4, p0, Lcom/snapchat/android/LandingPageActivity;->B:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/snapchat/android/util/SnapListItemHandler;->b(Landroid/view/MotionEvent;FFI)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 745
    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 748
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity;->z:F

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity;->A:F

    iget v4, p0, Lcom/snapchat/android/LandingPageActivity;->B:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Landroid/view/MotionEvent;FFI)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 749
    goto :goto_0

    .line 753
    :cond_4
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected e()Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 853
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 854
    if-lez v1, :cond_0

    .line 855
    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->b(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 857
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1032
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ScrollStoriesFragmentToTopEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ScrollStoriesFragmentToTopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1036
    :cond_1
    return-void
.end method

.method protected m()V
    .locals 10
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1154
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1155
    invoke-virtual {p0, v4}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/content/Intent;)I

    move-result v5

    .line 1158
    if-eq v5, v9, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 1162
    :cond_0
    packed-switch v5, :pswitch_data_0

    .line 1204
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v5, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1209
    const-string v0, "goToFragmentNum"

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1210
    invoke-virtual {p0, v4}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    .line 1211
    return-void

    .line 1165
    :pswitch_0
    const-string v0, "friendUsername"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/ChatUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1174
    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1175
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1176
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/ChatUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-static {}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l()V

    move v1, v3

    .line 1181
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1182
    const-string v6, "LandingPageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CHAT-LOG: LandingPageActivity setInitialFragment setFriendUsername: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Ljava/lang/String;)Z

    .line 1186
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatFragment;

    .line 1187
    if-eqz v0, :cond_2

    .line 1188
    const-string v6, "LandingPageActivity"

    const-string v7, "CHAT-LOG: LandingPageActivity setInitialFragment updateFriendIfNecessary"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Z)V

    .line 1195
    :cond_2
    const-string v0, "friendUsername"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->setChatFragmentAccessible(Z)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1189
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    .line 1162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->E:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1222
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/SnapchatViewPager;->getOffscreenPageLimit()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 1225
    :cond_0
    return-void
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1807
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->n()V

    .line 1809
    const-string v0, "LandingPageActivity"

    const-string v1, "Activity Request with code %d, and Result with code %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1810
    if-ne p2, v5, :cond_1

    .line 1811
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->onLogoutEvent(Lcom/snapchat/android/util/eventbus/LogoutEvent;)V

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1813
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/SnapchatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1815
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1817
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1818
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1819
    if-eqz v0, :cond_0

    .line 1820
    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 1822
    :cond_2
    if-nez p2, :cond_0

    goto :goto_0

    .line 1828
    :pswitch_2
    invoke-virtual {p0, p3}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 1815
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 785
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 787
    if-nez v1, :cond_1

    .line 789
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->d()V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 800
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 801
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/app/FragmentManager;I)V

    goto :goto_0
.end method

.method public onCameraStateEvent(Lcom/snapchat/android/util/eventbus/CameraStateEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1893
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;->a:Z

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->g()V

    .line 1897
    :cond_0
    return-void
.end method

.method public onCancelInChatSnapEvent(Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1667
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->b()I

    move-result v0

    .line 1669
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 1671
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1672
    :cond_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1674
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    goto :goto_0
.end method

.method public onCancelQuickSnapEvent(Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1695
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget v0, v0, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->c:I

    .line 1697
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 1699
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1702
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    goto :goto_0
.end method

.method public onCancelReplyEvent(Lcom/snapchat/android/util/eventbus/CancelReplyEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1623
    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    .line 1624
    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    .line 1625
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->d()V

    .line 1626
    return-void
.end method

.method public onChangeBrightnessEvent(Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1734
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ChangeBrightnessEvent;->a:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1735
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1736
    return-void
.end method

.method public onChangeOrientationEvent(Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1708
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getRequestedOrientation()I

    move-result v0

    iget v1, p1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;->a:I

    if-ne v0, v1, :cond_0

    .line 1720
    :goto_0
    return-void

    .line 1713
    :cond_0
    iget v0, p1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;->a:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->setRequestedOrientation(I)V

    .line 1714
    iget v0, p1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;->a:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1716
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Lcom/snapchat/android/util/SoftNavigationBarManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SoftNavigationBarManager;->b()V

    goto :goto_0

    .line 1718
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Lcom/snapchat/android/util/SoftNavigationBarManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SoftNavigationBarManager;->c()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 1958
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1960
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1962
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1963
    instance-of v1, v0, Lcom/snapchat/android/SnapPreviewFragment;

    if-eqz v1, :cond_2

    .line 1964
    check-cast v0, Lcom/snapchat/android/SnapPreviewFragment;

    .line 1965
    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment;->a_()V

    .line 1971
    :cond_1
    :goto_0
    return-void

    .line 1966
    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    if-eqz v1, :cond_1

    .line 1967
    check-cast v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    .line 1968
    invoke-virtual {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 324
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->j:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/LifecycleAnalytics;->a()V

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->b()V

    .line 327
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/os/Bundle;)V

    .line 331
    const-string v0, "LandingPageActivity"

    const-string v1, "Native free space = %d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/content/res/AssetManager;)V

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 340
    iput-boolean v7, p0, Lcom/snapchat/android/LandingPageActivity;->C:Z

    .line 343
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    const-string v1, "com.snapchat.android.util.DateTimeZoneProvider"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    const-string v0, "LandingPageActivity"

    const-string v1, "Landing Page Activity content view set"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->setContentView(I)V

    .line 349
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Lcom/snapchat/android/util/SoftNavigationBarManager;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SoftNavigationBarManager;->a(Landroid/view/View;)V

    .line 352
    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/SnapchatViewPager;

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    .line 354
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->A()V

    .line 356
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->a()Lcom/snapchat/android/util/SnapListItemHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    .line 357
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/ui/SnapView;)V

    .line 358
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->B:I

    .line 360
    invoke-static {}, Lcom/snapchat/android/util/cache/Caches;->a()V

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 366
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 367
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->C()V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->U:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/receiver/ConnectivityReceiver;->a(Landroid/content/Context;)V

    .line 376
    new-instance v0, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v0, v6}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->onTitleBarEvent(Lcom/snapchat/android/util/eventbus/TitleBarEvent;)V

    .line 377
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->D()V

    .line 378
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 379
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1983
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 1995
    :goto_0
    return-object v0

    .line 1986
    :pswitch_0
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "datetaken"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_display_name"

    aput-object v1, v3, v0

    .line 1989
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "datetaken DESC LIMIT 5"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1983
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1056
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onDestroy()V

    .line 1059
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Z

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->U:Lcom/snapchat/android/receiver/ConnectivityReceiver;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b(Landroid/content/Context;)V

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Z

    .line 1067
    return-void
.end method

.method public onDisplayInAppNotificationEvent(Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->z()V

    .line 624
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->X:Lcom/snapchat/android/InAppNotificationManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/InAppNotificationManager;->a(Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;)V

    .line 625
    return-void
.end method

.method public onDoubleTapToReplyEvent(Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    .line 1618
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1619
    return-void
.end method

.method public onEditionClose(Lcom/snapchat/android/discover/util/eventbus/EditionClosedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 647
    if-ltz v1, :cond_0

    .line 650
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->b(Landroid/support/v4/app/FragmentManager;I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    .line 652
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->R:Lcom/snapchat/android/networkmanager/DownloadManager;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/DownloadManager;->b()V

    .line 657
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 658
    return-void
.end method

.method public onForceVerificationEvent(Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1933
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->u(Z)V

    .line 1934
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c011b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c011c

    new-instance v2, Lcom/snapchat/android/LandingPageActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/LandingPageActivity$10;-><init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c011a

    new-instance v2, Lcom/snapchat/android/LandingPageActivity$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/LandingPageActivity$9;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1953
    return-void
.end method

.method public onGetCurrentActivityEvent(Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1901
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent;->a()Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;->a(Landroid/app/Activity;)V

    .line 1902
    return-void
.end method

.method public onInChatSnapEvent(Lcom/snapchat/android/util/eventbus/InChatSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1657
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 1658
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1767
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    const/4 v0, 0x1

    .line 1770
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1775
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    const/4 v0, 0x1

    .line 1778
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/LandingPageActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2030
    return-void
.end method

.method public onLogoutEvent(Lcom/snapchat/android/util/eventbus/LogoutEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1740
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 1741
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->c()V

    .line 1743
    :cond_0
    const v0, 0x7f0c022d

    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 1745
    invoke-static {p0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 1746
    return-void
.end method

.method public onMessagingGatewayInfoUpdatedEvent(Lcom/snapchat/android/util/eventbus/MessagingGatewayInfoUpdatedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1884
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-nez v0, :cond_0

    .line 1885
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->E()V

    .line 1889
    :goto_0
    return-void

    .line 1887
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->v()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 1253
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1254
    invoke-virtual {p0, p1}, Lcom/snapchat/android/LandingPageActivity;->setIntent(Landroid/content/Intent;)V

    .line 1255
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->D()V

    .line 1256
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1071
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 1072
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->v:Lcom/snapchat/android/LandingPageActivity;

    .line 1074
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 1075
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Z)V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Z)V

    .line 1078
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a(Z)V

    .line 1080
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 1081
    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->q_()V

    .line 1084
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->t_()Z

    move-result v1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->Y:Z

    .line 1088
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->j()J

    move-result-wide v0

    .line 1089
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1090
    const-string v2, "LandingPageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule to set flag to pop stacked fragments after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/location/LocationProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationProvider;->c()V

    .line 1096
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->x:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapListItemHandler;->g()V

    .line 1097
    invoke-static {}, Lcom/snapchat/android/util/SnapUtils;->a()V

    .line 1098
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 1100
    iput-boolean v5, p0, Lcom/snapchat/android/LandingPageActivity;->C:Z

    .line 1102
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 1104
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->S:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->g()V

    .line 1106
    :cond_2
    return-void
.end method

.method public onQuickSnapEvent(Lcom/snapchat/android/util/eventbus/QuickSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1685
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 1686
    return-void
.end method

.method public onRecentStoryReplyEvent(Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1646
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->O:Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/RecentStoryReplyAnalyticsManager;->a(Lcom/snapchat/android/util/eventbus/RecentStoryReplyEvent;)V

    .line 1647
    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/LandingPageActivity;->a(IZ)V

    .line 1648
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->F:Z

    .line 539
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->j:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/LifecycleAnalytics;->b()V

    .line 540
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->d()V

    .line 541
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onRestart()V

    .line 542
    return-void
.end method

.method protected onResume()V
    .locals 4
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 431
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 432
    sput-object p0, Lcom/snapchat/android/LandingPageActivity;->v:Lcom/snapchat/android/LandingPageActivity;

    .line 434
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 435
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/util/chat/SecureChatService;->a(Z)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->Q:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Z)V

    .line 438
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->T:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a(Z)V

    .line 441
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->C:Z

    if-nez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 448
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->y()V

    .line 514
    :cond_2
    :goto_0
    return-void

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_4

    .line 453
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->H:Z

    .line 469
    :goto_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->G()Z

    move-result v0

    if-nez v0, :cond_6

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/snapchat/android/ScAcceptTermsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 456
    invoke-static {p0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 457
    invoke-direct {p0, v2}, Lcom/snapchat/android/LandingPageActivity;->c(Z)V

    goto :goto_0

    .line 460
    :cond_5
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a()V

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->j:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/LifecycleAnalytics;->a(Landroid/content/Intent;)V

    .line 462
    new-instance v0, Lcom/snapchat/android/notification/NotificationRegistrar;

    invoke-direct {v0, p0}, Lcom/snapchat/android/notification/NotificationRegistrar;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual {v0, p0}, Lcom/snapchat/android/notification/NotificationRegistrar;->a(Landroid/app/Activity;)V

    .line 464
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/api/SyncAllTask;->a(Lcom/snapchat/android/model/User;ZZ)V

    .line 465
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->e()V

    goto :goto_1

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->w()V

    .line 478
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_a

    .line 480
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 481
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Ljava/lang/String;)V

    .line 486
    const-string v1, "fromServerNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 488
    :cond_7
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(Z)V

    .line 490
    const-string v1, "fromNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 495
    :goto_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 498
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESUMING_FROM_SWIPE_MESSAGE"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 502
    const-string v1, "RESUMING_FROM_SWIPE_MESSAGE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    :cond_8
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 507
    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->e()V

    .line 510
    :cond_9
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 511
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/location/LocationProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationProvider;->b()V

    goto/16 :goto_0

    .line 492
    :cond_a
    invoke-static {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "in_chat_snap_event"

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    const-string v0, "should_pop_fragments"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    .line 604
    const-string v0, "view_pager_index"

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity;->b:I

    goto :goto_0
.end method

.method public onSetPagingEnabledEvent(Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget-boolean v1, p1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;->a:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setPagingEnabled(Z)V

    .line 1554
    return-void
.end method

.method public onShareDSnapEvent(Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 1631
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    .line 1632
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;->a()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->d()V

    .line 1633
    return-void
.end method

.method public onShowDialogEvent(Lcom/snapchat/android/util/eventbus/ShowDialogEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1906
    .line 1907
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1908
    iget v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->b:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1913
    :goto_0
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->b:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_2

    .line 1914
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->c:I

    if-eqz v1, :cond_1

    .line 1915
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->c:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    :goto_1
    return-void

    .line 1910
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->a:Ljava/lang/String;

    goto :goto_0

    .line 1917
    :cond_1
    invoke-static {p0, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 1919
    :cond_2
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->c:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_3

    .line 1920
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->c:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    invoke-static {p0, v1, v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    goto :goto_1

    .line 1922
    :cond_3
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->d:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    if-ne v1, v2, :cond_4

    .line 1923
    iget v1, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->c:I

    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->e:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    invoke-static {p0, v1, v0, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    goto :goto_1

    .line 1926
    :cond_4
    invoke-static {v0, p0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onSnapCapturedEvent(Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1503
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    if-nez v0, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->p:Lcom/snapchat/android/model/User;

    .line 1507
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    .line 1508
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-eqz v0, :cond_6

    .line 1509
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Mediabryo;->i(Ljava/lang/String;)V

    .line 1516
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1518
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 1522
    :cond_3
    new-instance v0, Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {v0}, Lcom/snapchat/android/SnapPreviewFragment;-><init>()V

    .line 1523
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-eqz v1, :cond_8

    .line 1524
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;)V

    .line 1528
    :cond_4
    :goto_2
    const-string v1, "PreviewFragment"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    .line 1530
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1532
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->D()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1533
    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->i(Z)V

    .line 1534
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->z:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->W:Lcom/snapchat/android/location/LocationPermissionsAccessor;

    new-instance v1, Lcom/snapchat/android/LandingPageActivity$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/LandingPageActivity$6;-><init>(Lcom/snapchat/android/LandingPageActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a(Landroid/content/Context;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V

    goto :goto_0

    .line 1510
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-eqz v0, :cond_7

    .line 1511
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Mediabryo;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 1512
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_2

    .line 1513
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    iget-object v1, v1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Mediabryo;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1525
    :cond_8
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    if-eqz v1, :cond_4

    .line 1526
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;)V

    goto :goto_2
.end method

.method public onSnapReadyForRecipientsEvent(Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1311
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    .line 1314
    instance-of v0, v1, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1315
    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    .line 1316
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/model/Mediabryo;)V

    .line 1336
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->w:Lcom/snapchat/android/SnapUploadPolicy;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapUploadPolicy;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual {p0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/model/Mediabryo;)V

    .line 1326
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1327
    :cond_2
    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/fragments/sendto/SendToFragment;

    move-result-object v0

    const-string v1, "SendToFrag"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->g:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    if-eqz v0, :cond_5

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1333
    :cond_5
    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/fragments/sendto/SendToFragment;

    move-result-object v0

    const-string v1, "SendToFrag"

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSnapReadyForSendingEvent(Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1355
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    .line 1356
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;->b()Z

    move-result v1

    .line 1357
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->w:Lcom/snapchat/android/SnapUploadPolicy;

    invoke-virtual {v2}, Lcom/snapchat/android/SnapUploadPolicy;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1358
    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/model/Mediabryo;)V

    .line 1360
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/model/Mediabryo;Z)V

    .line 1361
    return-void
.end method

.method public onSoftNavigationBarEvent(Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1724
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;->a:Z

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Lcom/snapchat/android/util/SoftNavigationBarManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SoftNavigationBarManager;->c()V

    .line 1729
    :goto_0
    return-void

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->P:Lcom/snapchat/android/util/SoftNavigationBarManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SoftNavigationBarManager;->b()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 526
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStart()V

    .line 528
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-nez v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/snapchat/android/LandingPageActivity;->E()V

    .line 532
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 533
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 534
    return-void
.end method

.method public onStartFragmentEvent(Lcom/snapchat/android/util/eventbus/StartFragmentEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1296
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 1298
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1302
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1303
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    .line 1304
    return-void

    .line 1302
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->j:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/LifecycleAnalytics;->c()V

    .line 547
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->N:Lcom/snapchat/android/analytics/NotificationAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NotificationAnalytics;->c()V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->L:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->d()V

    .line 549
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onStop()V

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->K:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b()V

    .line 552
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->c()V

    .line 554
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->l:Lcom/snapchat/android/util/fragment/FragmentManagerProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/util/fragment/FragmentManagerProvider;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-static {v1}, Lcom/snapchat/android/model/UserPrefs;->p(Z)V

    .line 559
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->J:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;)I

    .line 563
    :cond_0
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_2

    .line 564
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->d()V

    .line 565
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->ae:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 567
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->G:Z

    .line 569
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    .line 570
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->I:Z

    .line 572
    :cond_2
    new-instance v0, Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-direct {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>()V

    .line 573
    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->V:Lcom/snapchat/android/location/LocationProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationProvider;->c()V

    .line 576
    :cond_3
    return-void
.end method

.method public onStorySnapPostedFromSnapPreviewEvent(Lcom/snapchat/android/util/eventbus/StorySnapPostedFromSnapPreviewEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/StorySnapPostEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/StorySnapPostEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1465
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->a(I)V

    .line 1466
    return-void
.end method

.method public onTitleBarEvent(Lcom/snapchat/android/util/eventbus/TitleBarEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1567
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;->a:Z

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->p()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    :cond_2
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;->a:Z

    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Z

    .line 1575
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->q()V

    goto :goto_0
.end method

.method public onUpdatingUserToDatabasesCompleteEvent(Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 637
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    const-string v0, "Failed to upgrade. Try again later"

    invoke-static {p0, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void
.end method

.method public onUpdatingUserToDatabasesEvent(Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 629
    const-string v0, "Upgrading Snapchat"

    const-string v1, "Loading..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->h:Landroid/app/ProgressDialog;

    .line 630
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1275
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onWindowFocusChanged(Z)V

    .line 1276
    const-string v0, "LandingPageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On ac Should we onWindowFocusChanged has focus? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1277
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->y:Z

    if-eqz v0, :cond_0

    .line 1278
    const-string v0, "LandingPageActivity"

    const-string v1, "On ac Calling onResume from window focus fn"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity;->y:Z

    .line 1280
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/LockScreenOpenedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/LockScreenOpenedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1288
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1289
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(I)V

    .line 1292
    :cond_1
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Z

    return v0
.end method

.method public produceInChatSnapEvent()Lcom/snapchat/android/util/eventbus/InChatSnapEvent;
    .locals 1
    .annotation runtime Lcom/squareup/otto/Produce;
    .end annotation

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->e:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    return-object v0
.end method

.method public produceQuickSnapEvent()Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
    .locals 1
    .annotation runtime Lcom/squareup/otto/Produce;
    .end annotation

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->f:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    return-object v0
.end method

.method q()V
    .locals 8
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/16 v7, 0x800

    const/16 v6, 0x400

    .line 1591
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Z

    .line 1592
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->ad:Z

    .line 1594
    new-instance v1, Lcom/snapchat/android/LandingPageActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/LandingPageActivity$7;-><init>(Lcom/snapchat/android/LandingPageActivity;Z)V

    .line 1602
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity;->ab:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1604
    if-eqz v0, :cond_0

    .line 1613
    :goto_0
    return-void

    .line 1606
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity;->ac:Z

    if-eqz v0, :cond_1

    .line 1607
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1608
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1610
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1611
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public r()Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->d:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    return-object v0
.end method

.method public s()Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity;->c:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    return-object v0
.end method

.method protected u()V
    .locals 3

    .prologue
    .line 1975
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->u()V

    .line 1977
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 1978
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 1979
    return-void
.end method

.method v()V
    .locals 3

    .prologue
    .line 2072
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    if-eqz v0, :cond_0

    .line 2073
    sget-object v0, Lcom/snapchat/android/LandingPageActivity;->i:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/SecureChatService;->b()V

    .line 2077
    :goto_0
    return-void

    .line 2075
    :cond_0
    const-string v0, "LandingPageActivity"

    const-string v1, "Cannot start a session because sSecureChatService is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method w()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2093
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2095
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity;->y:Z

    .line 2099
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->m()V

    .line 2101
    invoke-virtual {p0}, Lcom/snapchat/android/LandingPageActivity;->e()Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v0

    .line 2102
    if-eqz v0, :cond_1

    .line 2103
    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g(Z)V

    .line 2105
    :cond_1
    return-void
.end method
