.class public Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/model/StudySettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;-><init>(Lcom/snapchat/android/model/StudySettings;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StudySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    .line 39
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WIFI_RECENT_USER_THRESHOLD_HOURS"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WIFI_RECENT_USER_NUM_DSNAPS_TO_LOAD"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WIFI_RECENT_CHANNEL_THRESHOLD_HOURS"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WIFI_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WAN_RECENT_CHANNEL_THRESHOLD_HOURS"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WAN_RECENT_CHANNEL_NUM_DSNAPS_TO_LOAD"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WAN_NUM_DSNAPS_TO_LOAD_BEFORE_CURRENT"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/DiscoverLoadingConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "DISCOVER"

    const-string v2, "WAN_NUM_DSNAPS_TO_LOAD_AFTER_CURRENT"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
