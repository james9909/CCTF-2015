.class public final Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideCrashSamplerProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeveloperSettingsProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScreenDimensionProviderProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideSnapchatServiceManagerProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideAdManagerProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideFlurryAnalyticsProviderProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUpdateSnapsAnalyticsProviderProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/snapchat/android/util/dagger/AndroidModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    const/16 v0, 0x66

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.snapchat.android.SnapchatApplication"

    aput-object v1, v0, v3

    const-string v1, "members/com.snapchat.android.LandingPageActivity"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "members/com.snapchat.android.SnapkidzHomeActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "members/com.snapchat.android.SnapkidzSettingsActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "members/com.snapchat.android.model.User"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "members/com.snapchat.android.model.chat.ChatConversation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "members/com.snapchat.android.analytics.framework.EasyMetric"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "members/com.snapchat.android.analytics.framework.ScAnalyticsMetric"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "members/com.snapchat.android.analytics.framework.ErrorMetric"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "members/com.snapchat.android.camera.CameraFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "members/com.snapchat.android.camera.BackgroundCameraFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "members/com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "members/com.snapchat.android.database.table.UpdateSnapsAnalyticsTable"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "members/com.snapchat.android.util.crypto.SlightlySecurePreferences"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "members/com.snapchat.android.util.crypto.CbcSlightlySecurePreferences"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "members/com.snapchat.android.fragments.chat.ChatFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "members/com.snapchat.android.LoginAndSignupActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "members/com.snapchat.android.chat.SendingMailman"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "members/com.snapchat.android.util.chat.SecureChatSession"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "members/com.snapchat.android.fragments.stories.StoriesAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "members/com.snapchat.android.camera.cameradecor.CardLinkCameraDecor"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "members/com.snapchat.android.fragments.stories.StoriesFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "members/com.snapchat.android.fragments.addfriends.AddFriendsAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "members/com.snapchat.android.fragments.feed.FeedAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "members/com.snapchat.android.fragments.sendto.SendToAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "members/com.snapchat.android.fragments.sendto.SendToFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "members/com.snapchat.android.model.ReceivedSnap"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "members/com.snapchat.android.model.StorySnap"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "members/com.snapchat.android.model.BroadcastSnap"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "members/com.snapchat.android.ui.SnapView"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "members/com.snapchat.android.util.chat.SecureChatSession"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "members/com.snapchat.android.api2.framework.HyperRequestDependencyProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "members/com.snapchat.android.database.table.HasSeenPostToOurStoryDialogTable"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "members/com.snapchat.android.database.table.HasSeenOurCampusStoryDialogTable"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "members/com.snapchat.android.database.HasSeenOurCampusStoryDialogLog"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "members/com.snapchat.android.database.HasSeenPostToOurStoryDialogLog"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "members/com.snapchat.android.util.crypto.CbcKeyAndIvWrapper"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "members/com.snapchat.android.util.system.ClockProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "members/com.snapchat.android.fragments.chat.ReleaseWindow"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "members/com.snapchat.android.api2.cash.CashProviderManager"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "members/com.snapchat.android.api2.cash.BlockerManager"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "members/com.snapchat.android.api2.cash.square.LinkCardTask"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "members/com.snapchat.android.api2.cash.square.LinkPhoneNumberTask"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "members/com.snapchat.android.api2.cash.square.InitiateCashPaymentTask"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "members/com.snapchat.android.api2.cash.square.RetrieveCashPaymentTask"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQPhoneNumberBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQInitiatePaymentBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "members/com.snapchat.android.api2.cash.square.SquareRequestTask"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "members/com.snapchat.android.cash.SendingCashManager"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "members/com.snapchat.android.api2.cash.square.RetrieveCashCustomerStatusTask"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "members/com.snapchat.android.api2.cash.square.UpdateSquareSettingsTask"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "members/com.snapchat.android.fragments.cash.CashSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "members/com.snapchat.android.api2.cash.square.AcceptTermsTask"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "members/com.snapchat.android.api2.cash.square.ConfirmPaymentTask"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "members/com.snapchat.android.cash.ReceivingCashManager"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "members/com.snapchat.android.fragments.chat.ChatConversationAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "members/com.snapchat.android.camera.controller.DefaultFlashControllerImpl"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "members/com.snapchat.android.camera.controller.TakePhotoController"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "members/com.snapchat.android.camera.controller.VideoRecordingController"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "members/com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "members/com.snapchat.android.camera.BaseCameraFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "members/com.snapchat.android.SnapPreviewPostToStoryAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "members/com.snapchat.android.api2.cash.square.UnlinkCardTask"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "members/com.snapchat.android.chat.ReceivingMailman"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "members/com.snapchat.android.camera.CardLinkCameraFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "members/com.snapchat.android.cash.CardBlockerManager"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "members/com.snapchat.android.fragments.addfriends.AddFriendsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "members/com.snapchat.android.util.SnapListItemHandler"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "members/com.snapchat.android.camera.videocamera.VideoCameraHandler"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.snapchat.PhoneNumberBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "members/com.snapchat.android.api2.cash.square.DeleteCashPaymentTask"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "members/com.snapchat.android.fragments.cash.TransactionHistoryFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQConflictBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "members/com.snapchat.android.fragments.signup.LoginFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "members/com.snapchat.android.fragments.signup.SignupFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "members/com.snapchat.android.util.debug.BugReportActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "members/com.snapchat.android.fragments.settings.DeveloperSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "members/com.snapchat.android.ScAcceptTermsActivity"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "members/com.snapchat.android.util.eventbus.SnapEventBus"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.snapchat.ValidateTransactionBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "members/com.snapchat.android.api2.cash.square.SquareProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQRetrieveSendingCashPaymentBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQConfirmBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "members/com.snapchat.android.controller.UploadSnapMediaController"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQAcceptTermsBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "members/com.snapchat.android.util.eventbus.SnapEventBus"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "members/com.snapchat.android.analytics.CameraEventAnalytics"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "members/com.snapchat.android.api2.cash.blockers.square.SQUnlinkCardBlocker"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "members/com.snapchat.android.util.DebitCardNumberValidator"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "members/com.snapchat.android.ui.cash.CardNumberEditText"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "members/com.snapchat.android.discover.DSnapMediaCompressor"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "members/com.snapchat.android.discover.DSnapMediaExtractor"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "members/com.snapchat.android.fragments.chat.ChatWithAdapter"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "members/com.snapchat.android.util.crypto.DeviceTokenManager"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "members/com.snapchat.android.chat.ChatMessageReleaser"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "members/com.snapchat.android.analytics.transcoding.TranscodingTaskMetrics"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "members/com.snapchat.android.operation.UpdateSnapsOperation"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "members/com.snapchat.android.fragments.settings.WebFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "members/com.snapchat.android.operation.LogoutOperation"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "members/com.snapchat.android.api2.ApiTaskFactory"

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->h:[Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->i:[Ljava/lang/Class;

    .line 19
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/snapchat/android/util/dagger/DiscoverModule;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->j:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 22
    const-class v1, Lcom/snapchat/android/util/dagger/AndroidModule;

    sget-object v2, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->h:[Ljava/lang/String;

    sget-object v3, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->i:[Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->j:[Ljava/lang/Class;

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ldagger/internal/BindingsGroup;Lcom/snapchat/android/util/dagger/AndroidModule;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v0, "android.content.Context"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideApplicationContextProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 32
    const-string v0, "com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUpdateSnapsAnalyticsProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUpdateSnapsAnalyticsProviderProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 33
    const-string v0, "com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideFlurryAnalyticsProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideFlurryAnalyticsProviderProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 34
    const-string v0, "com.snapchat.android.analytics.framework.UserActionTracePlatform"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 35
    const-string v0, "com.snapchat.android.analytics.framework.ScAnalyticsPlatform"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 36
    const-string v0, "com.snapchat.android.ads.AdManager"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideAdManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideAdManagerProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 37
    const-string v0, "com.snapchat.android.service.SnapchatServiceManager"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideSnapchatServiceManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideSnapchatServiceManagerProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.snapchat.android.api.ScreenParameterProvider"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScreenDimensionProviderProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScreenDimensionProviderProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.snapchat.android.util.debug.DeveloperSettings"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeveloperSettingsProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeveloperSettingsProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.snapchat.android.util.debug.ReleaseManager"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.snapchat.android.util.debug.CrashSampler"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideCrashSamplerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideCrashSamplerProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet"

    new-instance v1, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideDeviceVideoEncodingResolutionSetProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 43
    return-void
.end method

.method public bridge synthetic a(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p2, Lcom/snapchat/android/util/dagger/AndroidModule;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;->a(Ldagger/internal/BindingsGroup;Lcom/snapchat/android/util/dagger/AndroidModule;)V

    return-void
.end method
