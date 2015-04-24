.class public Lcom/snapchat/android/ads/AdManagerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/snapchat/android/model/StudySettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ads/AdManagerConfiguration;-><init>(Lcom/snapchat/android/model/StudySettings;)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StudySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManagerConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManagerConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "AdManager"

    const-string v2, "is_active"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManagerConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "AdManager"

    const-string v2, "network_code"

    const-string v3, "80247475"

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 6

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManagerConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "AdManager"

    const-string v2, "ad_splash_impression_duration"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManagerConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "AdManager"

    const-string v2, "ad_page_impression_duration"

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()I
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManagerConfiguration;->a:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "AdManager"

    const-string v2, "max_outstanding_ad_requests"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
