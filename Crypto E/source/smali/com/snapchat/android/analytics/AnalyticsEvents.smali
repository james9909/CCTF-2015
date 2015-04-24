.class public abstract Lcom/snapchat/android/analytics/AnalyticsEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/AnalyticsEvents$ChatFeedItemTimestampLargestFirstComparator;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$Param;,
        Lcom/snapchat/android/analytics/AnalyticsEvents$Event;
    }
.end annotation


# static fields
.field public static final ADDITIONAL_SETTING_FILTERS:Ljava/lang/String; = "TOGGLE_SETTING_FILTERS"

.field public static final ADDITIONAL_SETTING_FLASH:Ljava/lang/String; = "TOGGLE_SETTING_FLASH"

.field public static final ADDITIONAL_SETTING_REPLAY:Ljava/lang/String; = "TOGGLE_SETTING_REPLAY"

.field private static final FULLVIEW_EPSILON:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "AnalyticsEvents"

.field private static final sServiceManager:Lcom/snapchat/android/service/SnapchatServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents;->sServiceManager:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()V
    .locals 2

    .prologue
    .line 1040
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1041
    return-void
.end method

.method public static B()V
    .locals 2

    .prologue
    .line 1044
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1045
    return-void
.end method

.method public static C()V
    .locals 2

    .prologue
    .line 1048
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_EXISTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1049
    return-void
.end method

.method public static D()V
    .locals 2

    .prologue
    .line 1056
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1057
    return-void
.end method

.method public static E()V
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_USERNAME_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1061
    return-void
.end method

.method public static F()V
    .locals 2

    .prologue
    .line 1065
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CONTACTS_ACCESS_GRANTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1066
    return-void
.end method

.method public static G()V
    .locals 2

    .prologue
    .line 1069
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_CONTACTS_ACCESS_DENIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1070
    return-void
.end method

.method public static H()V
    .locals 2

    .prologue
    .line 1073
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SKIPPED_ADD_FRIENDS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1074
    return-void
.end method

.method public static I()V
    .locals 2

    .prologue
    .line 1077
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_SCROLLS_FRIENDS_TABLE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1078
    return-void
.end method

.method public static J()V
    .locals 2

    .prologue
    .line 1111
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_ALL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1112
    return-void
.end method

.method public static K()V
    .locals 2

    .prologue
    .line 1115
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_USED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1116
    return-void
.end method

.method public static L()V
    .locals 2

    .prologue
    .line 1187
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SQUARE_TOS_ACCEPTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1188
    return-void
.end method

.method public static M()V
    .locals 2

    .prologue
    .line 1191
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SQUARE_TOS_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1192
    return-void
.end method

.method public static N()V
    .locals 2

    .prologue
    .line 1195
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1196
    return-void
.end method

.method public static O()V
    .locals 2

    .prologue
    .line 1203
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1204
    return-void
.end method

.method public static P()V
    .locals 2

    .prologue
    .line 1258
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_BUTTON_TAPPED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1259
    return-void
.end method

.method public static Q()V
    .locals 2

    .prologue
    .line 1274
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1275
    return-void
.end method

.method public static R()V
    .locals 2

    .prologue
    .line 1278
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_ASKED_TO_RELINK"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1279
    return-void
.end method

.method public static S()V
    .locals 2

    .prologue
    .line 1282
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1283
    return-void
.end method

.method public static T()V
    .locals 2

    .prologue
    .line 1286
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1287
    return-void
.end method

.method public static U()V
    .locals 2

    .prologue
    .line 1290
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_IDENTITY_VERIFICATION_CANCELED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1291
    return-void
.end method

.method public static V()V
    .locals 2

    .prologue
    .line 1354
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_DISCONNECTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1355
    return-void
.end method

.method public static W()V
    .locals 2

    .prologue
    .line 1358
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TCP_RECONNECT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1359
    return-void
.end method

.method private static X()V
    .locals 2

    .prologue
    .line 916
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_ACTIVE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 917
    return-void
.end method

.method private static a(ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1154
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1155
    const-string v1, "number_of_friends"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string v1, "number_of_friends_histogram"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    return-object v0
.end method

.method private static a(ZLcom/snapchat/android/model/StorySnap;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/snapchat/android/model/StorySnap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 714
    const-string v2, "viewing_type"

    if-eqz p0, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v0, "type"

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lcom/snapchat/android/model/ReceivedSnap;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v0, "time"

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->E()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "sponsor"

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_0
    return-object v1

    .line 714
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SESSION_WITH_FILTERS_ENABLED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 165
    :goto_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "ON_RESUME"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 166
    const-string v2, "DEVICE"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 167
    const-string v2, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 168
    const-string v2, "SDK_INT"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 169
    const-string v2, "SDK_RELEASE"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 170
    const-string v2, "CPU_ABI"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 171
    const-string v2, "CPU_ABI2"

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 172
    const-string v2, "FILTERS_ENABLED"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 173
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 174
    return-void

    .line 162
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SESSION_WITH_FILTERS_DISABLED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3
    .parameter

    .prologue
    .line 353
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 354
    const-string v1, "friends"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FINISH_NEW_USER_ADD_FRIENDS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 356
    return-void
.end method

.method public static a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_CHANGED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v1, "Previous page"

    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 136
    const-string v1, "New page"

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 137
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 138
    return-void
.end method

.method public static a(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1136
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-static {p0, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1138
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_ON_SNAPCHAT"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1140
    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-static {p1, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1142
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_ADDED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1144
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 1145
    invoke-static {p2, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1146
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "R01_NUMBER_OF_FRIENDS_INVITED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1148
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R01_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FRIENDS_ON_SNAPCHAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1149
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R01_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FRIENDS_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1150
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R01_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FRIENDS_INVITED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1151
    return-void
.end method

.method public static a(J)V
    .locals 6
    .parameter

    .prologue
    .line 894
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SESSION_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "session_length_bucket"

    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "session_length"

    long-to-double v2, p0

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 897
    return-void
.end method

.method public static a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V
    .locals 3
    .parameter

    .prologue
    .line 272
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "LOGOUT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "REASON"

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 273
    return-void
.end method

.method protected static a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 442
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 443
    const-string v1, "filter_impressions"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Geofilter"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_SNAP_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->w()I

    move-result v1

    if-lez v1, :cond_0

    .line 450
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_SNAP_WITHOUT_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;ZZZILcom/snapchat/android/model/User;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    const-string v0, "sender"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    if-nez v0, :cond_3

    .line 375
    const-string v0, "type"

    const-string v3, "IMAGE"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :goto_0
    const-string v0, "recipientCount"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const/4 v0, 0x1

    if-ne p5, v0, :cond_6

    .line 404
    const-string v0, "recipientCountBucket"

    const-string v3, "1 recipient"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    :goto_1
    const-string v0, "friendCount"

    invoke-virtual {p6}, Lcom/snapchat/android/model/User;->t()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v3, "drawing"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->s()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v0, "caption"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v0, "filter"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v3, "with_story"

    if-eqz p2, :cond_a

    const-string v0, "1"

    :goto_3
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    if-eqz p4, :cond_c

    .line 419
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    if-ne p1, v0, :cond_b

    .line 420
    const-string v0, "source"

    const-string v3, "chat_story_reply"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_1
    :goto_4
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SENT"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 429
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->z()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_2

    .line 431
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAPTION_DETAIL"

    invoke-direct {v1, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 436
    :cond_2
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 438
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 439
    return-void

    .line 377
    :cond_3
    const-string v0, "type"

    const-string v3, "VIDEO"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 379
    const-string v0, "videoType"

    const-string v3, "SOUND"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :goto_5
    instance-of v0, p0, Lcom/snapchat/android/model/SnapVideobryo;

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 384
    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    .line 385
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 386
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->a()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v4

    .line 388
    const-string v5, "transcodingEnabled"

    invoke-virtual {v4}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v4, "recordedVideoFileSize"

    invoke-virtual {v0}, Lcom/snapchat/android/model/SnapVideobryo;->Y()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v4, "transcodedVideoFileSize"

    invoke-virtual {v0}, Lcom/snapchat/android/model/SnapVideobryo;->Z()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 392
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v4, "VIDEO_SNAP_SENT"

    invoke-direct {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto/16 :goto_0

    .line 381
    :cond_4
    const-string v0, "videoType"

    const-string v3, "NO_SOUND"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 397
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reporting metrics may be wrong, snapybryo is expected to be a SnapVideobryo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_6
    const/4 v0, 0x1

    if-le p5, v0, :cond_7

    const/4 v0, 0x5

    if-gt p5, v0, :cond_7

    .line 406
    const-string v0, "recipientCountBucket"

    const-string v3, "2-5 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 407
    :cond_7
    const/4 v0, 0x5

    if-le p5, v0, :cond_8

    const/16 v0, 0xa

    if-gt p5, v0, :cond_8

    .line 408
    const-string v0, "recipientCountBucket"

    const-string v3, "6-10 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 409
    :cond_8
    const/16 v0, 0xa

    if-le p5, v0, :cond_0

    .line 410
    const-string v0, "recipientCountBucket"

    const-string v3, ">10 recipients"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 414
    :cond_9
    const-string v0, "0"

    goto/16 :goto_2

    .line 417
    :cond_a
    const-string v0, "0"

    goto/16 :goto_3

    .line 421
    :cond_b
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    if-ne p1, v0, :cond_1

    .line 422
    const-string v0, "source"

    const-string v3, "chat_story_quick_snap_reply"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 425
    :cond_c
    const-string v3, "source"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_d

    const-string v0, "_from_preview"

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_d
    const-string v0, ""

    goto :goto_6
.end method

.method public static a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 475
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    const-string v0, "type"

    const-string v2, "IMAGE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :goto_0
    const-string v2, "drawing"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v0, "caption"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v0, "filter"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v2, "reply"

    if-eqz p1, :cond_4

    const-string v0, "1"

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v2, "with_snap"

    if-eqz p2, :cond_5

    const-string v0, "1"

    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v0, "context"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 494
    const-string v2, "sender"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "POST_STORY"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 497
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->z()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    move-result-object v1

    .line 498
    if-eqz v1, :cond_0

    .line 499
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "CAPTION_DETAIL"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 504
    :cond_0
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 506
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 507
    return-void

    .line 478
    :cond_1
    const-string v0, "type"

    const-string v2, "VIDEO"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 480
    const-string v0, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 482
    :cond_2
    const-string v0, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 486
    :cond_3
    const-string v0, "0"

    goto/16 :goto_1

    .line 489
    :cond_4
    const-string v0, "0"

    goto :goto_2

    .line 490
    :cond_5
    const-string v0, "0"

    goto :goto_3
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v1, p2, p3, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 525
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 540
    if-eqz p1, :cond_0

    const-string v1, "context"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "type"

    invoke-virtual {p3}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_1
    if-eqz p4, :cond_2

    const-string v1, "parent"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 544
    const-string v2, "name"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p0}, Lcom/snapchat/android/model/FriendAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 546
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 841
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SWIPE_FILTER_SWIPED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-static {p0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 843
    return-void

    .line 841
    :cond_0
    const-string v0, "IMAGE"

    goto :goto_0
.end method

.method protected static a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_SNAP_GEOFILTER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "filter_id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 591
    :cond_0
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 557
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 558
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->M()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "friendCount"

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->t()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v1

    if-nez v1, :cond_1

    .line 561
    const-string v1, "type"

    const-string v2, "IMAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 571
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v2, "sender"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    instance-of v2, p0, Lcom/snapchat/android/model/BroadcastSnap;

    if-eqz v2, :cond_3

    .line 574
    const-string v2, "url"

    check-cast p0, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-virtual {p0}, Lcom/snapchat/android/model/BroadcastSnap;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "BROADCAST_SNAP_OPENED"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 580
    :cond_0
    :goto_1
    return-void

    .line 563
    :cond_1
    const-string v1, "type"

    const-string v2, "VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 565
    const-string v1, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 567
    :cond_2
    const-string v1, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 576
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_VIEW"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 578
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/ReceivedSnap;)V

    goto :goto_1
.end method

.method public static a(Lcom/snapchat/android/model/ReceivedSnap;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 594
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 595
    const-string v0, "time"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->M()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v0

    if-nez v0, :cond_1

    .line 597
    const-string v0, "type"

    const-string v2, "IMAGE"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 607
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v0, "sender"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    instance-of v0, p0, Lcom/snapchat/android/model/StorySnap;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 610
    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "sponsor"

    check-cast p0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SCREENSHOT_STORY"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 614
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SCREENSHOT_PROMOTED_STORY"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 618
    :goto_1
    return-void

    .line 599
    :cond_1
    const-string v0, "type"

    const-string v2, "VIDEO"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 601
    const-string v0, "videoType"

    const-string v2, "SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 603
    :cond_2
    const-string v0, "videoType"

    const-string v2, "NO_SOUND"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 616
    :cond_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "SNAP_SCREENSHOT"

    invoke-direct {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_1
.end method

.method public static a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 3
    .parameter

    .prologue
    .line 549
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SAVE_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 550
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/StorySnap;ZLcom/snapchat/android/model/User;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 180
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 181
    const-string v2, "type"

    if-eqz p1, :cond_4

    const-string v0, "0"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    const-string v0, "sponsor"

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 187
    const-string v2, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_MY_STORIES"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 200
    :cond_3
    :goto_1
    return-void

    .line 181
    :cond_4
    const-string v0, "1"

    goto :goto_0

    .line 191
    :cond_5
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_STORIES"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 192
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_PROMOTED_STORIES"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 194
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->d()Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents;->sServiceManager:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->e(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 804
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 807
    const-string v1, "filter_id"

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->O()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 809
    const-string v2, "my_story"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "VIEW_STORY_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 812
    :cond_0
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/User;ZLcom/snapchat/android/model/StorySnap;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onEndStoryViewingSession shouldn\'t be called while story snap is being viewed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    invoke-static {p1, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLcom/snapchat/android/model/StorySnap;)Ljava/util/Map;

    move-result-object v0

    .line 647
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Lcom/snapchat/android/model/StorySnap;)Ljava/util/Map;

    move-result-object v1

    .line 649
    invoke-static {p1, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(ZLcom/snapchat/android/model/StorySnap;)Ljava/util/Map;

    move-result-object v2

    .line 650
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(Lcom/snapchat/android/model/StorySnap;)Ljava/util/Map;

    move-result-object v3

    .line 652
    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "VIEW_STORY"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 653
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "VIEW_PROMOTED_STORY"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 657
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v4, "BRANDSTORY_SNAP_VIEW"

    invoke-direct {v1, v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    const-string v4, "sponsor"

    invoke-virtual {v1, v4, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 683
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ReceivedSnap;)V

    .line 684
    :cond_2
    return-void

    .line 663
    :cond_3
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->aJ()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 665
    new-instance v4, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v5, "OURSTORY_SNAP_VIEW"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 666
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->aK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    invoke-static {p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Lcom/snapchat/android/model/StorySnap;)Ljava/lang/String;

    move-result-object v2

    .line 669
    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v3, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0

    .line 673
    :cond_4
    new-instance v4, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    const-string v5, "USERSTORY_SNAP_VIEW"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 674
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 676
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_MY_STORY"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0

    .line 677
    :cond_5
    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v2

    const-string v3, "teamsnapchat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "VIEW_TEAMSNAPCHAT_STORY"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto/16 :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;Ljava/util/List;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1296
    sget-object v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    .line 1298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1300
    instance-of v1, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/Chat;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/Chat;->w()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 1303
    new-instance v4, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v5, "RECEIVED_CHAT_LIFETIME"

    invoke-direct {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0

    .line 1307
    :cond_1
    return-void
.end method

.method public static a(Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 3
    .parameter

    .prologue
    .line 947
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "EMPTY_PUSH_NOTIFICATION_TEXT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "PUSH_NOTIFICATION_TYPE"

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 948
    return-void
.end method

.method public static a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1207
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_SWIPE_TO_SEND_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1208
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 203
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CAPTCHA_REGISTER"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v1, "unsuccessful_attempts"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 205
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 206
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 1224
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1226
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAP_PRIVACY_CHANGED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v1, "old_privacy"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 263
    const-string v1, "new_privacy"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 264
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 265
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 253
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 254
    return-void
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 323
    const-string v0, "filter"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v2, "type"

    if-eqz p2, :cond_0

    const-string v0, "IMAGE"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    if-eqz p1, :cond_1

    .line 326
    const-string v0, "filter_id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :goto_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SWIPE_FILTER_PASSED"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 331
    return-void

    .line 324
    :cond_0
    const-string v0, "VIDEO"

    goto :goto_0

    .line 328
    :cond_1
    const-string v0, "filter_id"

    const-string v2, "None"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 209
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CAPTCHA_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v2, "success"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 211
    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 212
    return-void

    .line 210
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static a(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 881
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 887
    return-void
.end method

.method public static a(ZJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1346
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_CONNECT_ATTEMPT"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "success"

    if-eqz p0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1347
    if-eqz p0, :cond_0

    .line 1348
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECTED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1349
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_CONNECT_LATENCY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1351
    :cond_0
    return-void

    .line 1346
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method

.method public static a(ZLcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    invoke-static {p1, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)Ljava/util/Map;

    move-result-object v0

    .line 864
    if-eqz p0, :cond_0

    .line 865
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_ACCEPT"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_DECLINE"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1316
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1320
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$ChatFeedItemTimestampLargestFirstComparator;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$ChatFeedItemTimestampLargestFirstComparator;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1321
    const/4 v0, 0x0

    move v1, v0

    .line 1323
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1324
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1325
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1331
    :cond_2
    if-lez v1, :cond_0

    .line 1332
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_RELEASED_POTENTIALLY_UNVIEWED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static a(ZZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v2, "success"

    if-eqz p1, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v2, "type"

    if-eqz p0, :cond_3

    const-string v0, "storySnap"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 297
    const-string v0, "what"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    :goto_2
    if-eqz p3, :cond_1

    .line 302
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 313
    const-string v0, "extra"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1
    :goto_3
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "VIDEO_PLAY_ATTEMPT"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 318
    return-void

    .line 285
    :cond_2
    const-string v0, "false"

    goto :goto_0

    .line 286
    :cond_3
    const-string v0, "snap"

    goto :goto_1

    .line 291
    :sswitch_0
    const-string v0, "what"

    const-string v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 294
    :sswitch_1
    const-string v0, "what"

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 304
    :sswitch_2
    const-string v0, "extra"

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 307
    :sswitch_3
    const-string v0, "extra"

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 310
    :sswitch_4
    const-string v0, "extra"

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 302
    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_3
        -0x3ec -> :sswitch_2
        -0x6e -> :sswitch_4
    .end sparse-switch
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 900
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "0-4 s"

    .line 912
    :goto_0
    return-object v0

    .line 901
    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "5-9 s"

    goto :goto_0

    .line 902
    :cond_1
    const-wide/16 v0, 0x3a98

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "10-14 s"

    goto :goto_0

    .line 903
    :cond_2
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "15-19 s"

    goto :goto_0

    .line 904
    :cond_3
    const-wide/16 v0, 0x61a8

    cmp-long v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "20-24 s"

    goto :goto_0

    .line 905
    :cond_4
    const-wide/16 v0, 0x7530

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "25-29 s"

    goto :goto_0

    .line 906
    :cond_5
    const-wide/32 v0, 0x88b8

    cmp-long v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "30-34 s"

    goto :goto_0

    .line 907
    :cond_6
    const-wide/32 v0, 0x9c40

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "35-39 s"

    goto :goto_0

    .line 908
    :cond_7
    const-wide/32 v0, 0xafc8

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    const-string v0, "40-44 s"

    goto :goto_0

    .line 909
    :cond_8
    const-wide/32 v0, 0xc350

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-string v0, "45-49 s"

    goto :goto_0

    .line 910
    :cond_9
    const-wide/32 v0, 0xd6d8

    cmp-long v0, p0, v0

    if-gez v0, :cond_a

    const-string v0, "50-54 s"

    goto :goto_0

    .line 911
    :cond_a
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_b

    const-string v0, "55-59 s"

    goto :goto_0

    .line 912
    :cond_b
    const-string v0, "60+ s"

    goto :goto_0
.end method

.method private static b(Lcom/snapchat/android/model/ReceivedSnap;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->ao()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 731
    const-string v0, "IMAGE"

    :goto_0
    return-object v0

    .line 727
    :pswitch_0
    const-string v0, "VIDEO"

    goto :goto_0

    .line 729
    :pswitch_1
    const-string v0, "VIDEO_NO_SOUND"

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(ZLcom/snapchat/android/model/StorySnap;)Ljava/util/Map;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/snapchat/android/model/StorySnap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/high16 v6, 0x4024

    .line 759
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->E()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    .line 760
    mul-double v4, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    .line 761
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->M()D

    move-result-wide v6

    .line 765
    const-wide v8, 0x3fb99999a0000000L

    sub-double/2addr v6, v8

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_0

    move v2, v1

    .line 768
    :goto_0
    if-eqz p0, :cond_1

    .line 770
    :goto_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    .line 774
    new-instance v6, Ljava/util/HashMap;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 775
    const-string v7, "time_viewed"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v4, "full_view"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v2, "view_location"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v0, "poster_id"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v0, "story_snap_id"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    return-object v6

    :cond_0
    move v2, v0

    .line 765
    goto :goto_0

    :cond_1
    move v0, v1

    .line 768
    goto :goto_1
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_SETTINGS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 226
    return-void
.end method

.method public static b(I)V
    .locals 3
    .parameter

    .prologue
    .line 837
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DRAW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "num_strokes"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 838
    return-void
.end method

.method public static b(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 276
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MediaPlayer onError"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v1, "what"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 278
    const-string v1, "extra"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 279
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 280
    return-void
.end method

.method public static b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 6
    .parameter

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->u()I

    move-result v1

    .line 456
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->v()I

    move-result v2

    .line 457
    add-int v3, v1, v2

    .line 458
    if-lez v3, :cond_0

    .line 459
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 460
    const-string v5, "type"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IMAGE"

    :goto_0
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v0, "filter"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v0, "number_of_filter_changes"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v0, "single_swipe_filter_changes"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v0, "double_swipe_filter_changes"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SWIPE_FILTER_SENT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 467
    :cond_0
    return-void

    .line 460
    :cond_1
    const-string v0, "VIDEO"

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)Ljava/util/Map;

    move-result-object v0

    .line 859
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_PRESS_HOLD"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 860
    return-void
.end method

.method public static b(Lcom/snapchat/android/model/StorySnap;)V
    .locals 3
    .parameter

    .prologue
    .line 625
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 626
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const-string v1, "sponsor"

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_0
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "REPLAY_PROMOTED_STORY_BUTTON_PRESS"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 630
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 334
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 335
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "FILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 337
    return-void
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 1245
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "statusCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1247
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1034
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_REGISTER_EMAIL_SUCCESS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1036
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 1211
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "swipe"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1213
    return-void
.end method

.method public static b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 257
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SEARCHABLE_BY_PHONE_NUMBER_CHANGED"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 258
    return-void

    .line 257
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private static c(Lcom/snapchat/android/model/StorySnap;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 694
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->aK()Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    const-string v1, "AnalyticsEvents"

    const-string v2, "onEndBrandSnapView called on a non-brand snap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    :cond_0
    :goto_0
    return-object v0

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 701
    array-length v2, v1

    if-le v2, v3, :cond_0

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIEW_BRAND_SNAP_STORY_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 873
    const-string v1, "sender_username"

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string v1, "viewer_username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_MY_FRIENDS_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 230
    return-void
.end method

.method public static c(I)V
    .locals 3
    .parameter

    .prologue
    .line 1052
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_USERNAME_TOO_SHORT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "number_of_letters"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1053
    return-void
.end method

.method protected static c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 510
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 511
    const-string v1, "filter_impressions"

    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Geofilter"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_STORY_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->w()I

    move-result v1

    if-lez v1, :cond_0

    .line 518
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SEND_STORY_WITHOUT_GEOFILTER"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 553
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DELETE_STORY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 554
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1123
    const-string v1, "FROM"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string v1, "TO"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v1, "ACTIVITY_TRANSITION"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1126
    return-void
.end method

.method public static c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 268
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "LOGOUT_DIALOG"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 269
    return-void

    .line 268
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected page number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :pswitch_0
    const-string v0, "Chat"

    .line 151
    :goto_0
    return-object v0

    .line 145
    :pswitch_1
    const-string v0, "Feed"

    goto :goto_0

    .line 147
    :pswitch_2
    const-string v0, "Camera"

    goto :goto_0

    .line 149
    :pswitch_3
    const-string v0, "My friends"

    goto :goto_0

    .line 151
    :pswitch_4
    const-string v0, "Discover"

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static d(Lcom/snapchat/android/model/StorySnap;)Ljava/util/Map;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StorySnap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 742
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v1, "viewer_username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v1, "poster_username"

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    return-object v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_MY_FRIENDS_SESSION_END"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 234
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 583
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "USER_OPENED_BROADCAST_SNAP_LINK"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 584
    return-void
.end method

.method public static d(Z)V
    .locals 3
    .parameter

    .prologue
    .line 347
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 348
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "skipped"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "SKIP_NEW_USER_ADD_FRIENDS"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 350
    return-void

    .line 348
    :cond_0
    const-string v0, "redirected"

    goto :goto_0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1161
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    :goto_0
    return-object v0

    .line 1163
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1164
    const-string v0, "5_9"

    goto :goto_0

    .line 1166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static e(Lcom/snapchat/android/model/StorySnap;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StorySnap;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->M()D

    move-result-wide v0

    .line 794
    invoke-static {p0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lcom/snapchat/android/model/ReceivedSnap;)Ljava/lang/String;

    move-result-object v2

    .line 796
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 797
    const-string v4, "snap_time"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v0, "type"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    return-object v3
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "MANAGE_ADDITIONAL_SERVICES"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 238
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 621
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "VIEW_PROMOTED_STORY_CELL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "sponsor"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 622
    return-void
.end method

.method public static e(Z)V
    .locals 3
    .parameter

    .prologue
    .line 364
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "CHAT_STORY_REPLY"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "follow_through"

    if-eqz p0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 365
    return-void

    .line 364
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1171
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1172
    const-string v0, "0_4"

    .line 1178
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 1174
    const-string v0, "5_9"

    goto :goto_0

    .line 1175
    :cond_1
    const/16 v0, 0x32

    if-ge p0, v0, :cond_2

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1178
    :cond_2
    const-string v0, "50_OR_MORE"

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "PAGE_CLEAR_FEED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 242
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 827
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 828
    const-string v1, "message"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "Unsatisfied link error"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 830
    return-void
.end method

.method public static f(Z)V
    .locals 3
    .parameter

    .prologue
    .line 815
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 816
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "BETA_SIGNUP_DIALOG"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 818
    return-void

    .line 816
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "FILTER_SETTING_CHANGED_FROM_CAMERA"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 246
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 920
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_VIEWED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 921
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_VIEWED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 922
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->X()V

    .line 923
    return-void
.end method

.method public static g(Z)V
    .locals 3
    .parameter

    .prologue
    .line 821
    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 822
    const-string v2, "result"

    if-eqz p0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "PLAY_STORE_REVIEW_DIALOG"

    invoke-direct {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 824
    return-void

    .line 822
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 833
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TYPED_CAPTION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 834
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 927
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->X()V

    .line 928
    return-void
.end method

.method public static h(Z)V
    .locals 2
    .parameter

    .prologue
    .line 951
    if-eqz p0, :cond_0

    .line 952
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "OPEN_NOTIFICATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static i()V
    .locals 2

    .prologue
    .line 846
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DRAWING_BUTTON_PRESSED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 847
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 931
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_RECEIVED_UNSPECIFIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTIFICATION_RECEIVED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static i(Z)V
    .locals 3
    .parameter

    .prologue
    .line 959
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "DOUBLE_TAP"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "follow_through"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 960
    return-void
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 890
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SESSION_START"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 891
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 939
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_OPENED_UNSPECIFIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOTIFICATION_OPENED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    goto :goto_0
.end method

.method public static j(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1266
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_SUCCEEDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "relink"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1267
    return-void
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 968
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_BEGIN_REGISTRATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 969
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1081
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ADD_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1082
    return-void
.end method

.method public static k(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1310
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_OR_CASH_OPEN_FROM_NOTIF"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "success"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1311
    return-void
.end method

.method public static l()V
    .locals 2

    .prologue
    .line 973
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_LOGIN_SUCCESSFUL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 974
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1085
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_DELETE_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1086
    return-void
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 978
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 979
    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1089
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_INVITE_FRIEND"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1090
    return-void
.end method

.method public static n()V
    .locals 2

    .prologue
    .line 982
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_AUTO_FILL_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 983
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1107
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CLEAR_CONVERSATION"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "cleared_username"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1108
    return-void
.end method

.method public static o()V
    .locals 2

    .prologue
    .line 986
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 987
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1199
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PHONE_VERIFICATION_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1200
    return-void
.end method

.method public static p()V
    .locals 2

    .prologue
    .line 990
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EMAIL_EXISTS"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 991
    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1216
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SENT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1217
    return-void
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 994
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EMAIL_INVALID"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 995
    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1220
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1221
    return-void
.end method

.method public static r()V
    .locals 2

    .prologue
    .line 998
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_PASSWORD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 999
    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1229
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_SEND_RETRIED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1230
    return-void
.end method

.method public static s()V
    .locals 2

    .prologue
    .line 1002
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_PASSWORD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1003
    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1233
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_INITIATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1234
    return-void
.end method

.method public static t()V
    .locals 2

    .prologue
    .line 1006
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_SHORT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1007
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1237
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1238
    return-void
.end method

.method public static u()V
    .locals 2

    .prologue
    .line 1010
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_COMMON"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1011
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1241
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_RECEIVE_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1242
    return-void
.end method

.method public static v()V
    .locals 2

    .prologue
    .line 1014
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_TOO_EASY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1015
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1250
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_EXPIRED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1251
    return-void
.end method

.method public static w()V
    .locals 2

    .prologue
    .line 1018
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_PASSWORD_SIMILAR_TO_USERNAME"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1019
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1254
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_PAYMENT_REFUNDED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1255
    return-void
.end method

.method public static x()V
    .locals 2

    .prologue
    .line 1022
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_FOCUS_ON_BIRTHDAY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1023
    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1262
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CASH_TAG_CREATED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1263
    return-void
.end method

.method public static y()V
    .locals 2

    .prologue
    .line 1026
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_EDITED_BIRTHDAY"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1027
    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 1270
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "SNAPCASH_CARD_LINKING_FAILED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-virtual {v0, v1, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1271
    return-void
.end method

.method public static z()V
    .locals 2

    .prologue
    .line 1030
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "R01_ATTEMPT_REGISTER_EMAIL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 1031
    return-void
.end method
