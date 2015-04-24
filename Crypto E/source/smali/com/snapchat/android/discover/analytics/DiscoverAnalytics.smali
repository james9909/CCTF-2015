.class public Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$1;,
        Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

.field private final c:Lcom/snapchat/android/ads/AdManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/ads/AdManager;->a()Lcom/snapchat/android/ads/AdManager;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;Lcom/snapchat/android/ads/AdManager;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;Lcom/snapchat/android/ads/AdManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 71
    iput-object p2, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    .line 72
    iput-object p3, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->c:Lcom/snapchat/android/ads/AdManager;

    .line 73
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 421
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JLcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 228
    const-string v1, "time_viewed"

    invoke-static {p1, p2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "full_view"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "splash_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "edition_id"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "publisher_id"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "content_index_count"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "content_index_pos"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "DISCOVER_SPLASH_VIEW"

    .line 237
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_SPLASH_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 238
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    const-string v2, "DISCOVER_SPLASH_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 240
    new-instance v0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;-><init>()V

    invoke-virtual {v0, p6}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a()Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b()Lcom/snapchat/android/ads/DiscoverAdPlacement;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->c:Lcom/snapchat/android/ads/AdManager;

    invoke-virtual {v1, v0, p1, p2}, Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;J)V

    .line 247
    return-void
.end method

.method public a(JLcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    const-string v1, "time_viewed"

    invoke-static {p1, p2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "full_view"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "dsnap_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "edition_id"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "publisher_id"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "content_index_count"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "content_index_pos"

    add-int/lit8 v2, p7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "DISCOVER_SNAP_VIEW"

    .line 98
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_SNAP_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 99
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    const-string v2, "DISCOVER_SNAP_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 100
    return-void
.end method

.method public a(JLcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 3
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
    .line 181
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 182
    const-string v1, "time_viewed"

    invoke-static {p1, p2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "full_view"

    invoke-virtual {p3}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "adsnap_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "edition_id"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "publisher_id"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "content_index_pos"

    add-int/lit8 v2, p7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "content_index_count"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "ad_index_pos"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "ad_index_count"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "DISCOVER_AD_VIEW"

    .line 193
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_AD_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    const-string v2, "DISCOVER_AD_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 196
    new-instance v0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;-><init>()V

    invoke-virtual {v0, p6}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p9}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(I)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b()Lcom/snapchat/android/ads/DiscoverAdPlacement;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->c:Lcom/snapchat/android/ads/AdManager;

    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;JZ)V

    .line 203
    return-void

    .line 202
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;IILcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 145
    const-string v1, "time_viewed"

    invoke-static {p1, p2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "edition_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "publisher_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "num_snaps_viewed"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "num_longform_viewed"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "exit_event"

    invoke-virtual {p7}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "content_index_count"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v1, "DISCOVER_EDITION_VIEW"

    .line 154
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_EDITION_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 155
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    const-string v2, "DISCOVER_EDITION_VIEW"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 156
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const-string v0, ""

    .line 111
    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$1;->a:[I

    invoke-virtual {p6}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 123
    const-string v2, "time_viewed"

    invoke-static {p1, p2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "dsnap_id"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "edition_id"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "publisher_id"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "longform_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "content_index_pos"

    add-int/lit8 v2, p7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "content_index_count"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "DISCOVER_SNAP_LONGFORM_VIEW"

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_SNAP_LONGFORM_VIEW"

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    const-string v2, "DISCOVER_SNAP_LONGFORM_VIEW"

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 134
    return-void

    .line 113
    :pswitch_0
    const-string v0, "text"

    goto :goto_0

    .line 116
    :pswitch_1
    const-string v0, "video"

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_BAD_PUBLISHER_DATA"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "field"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 376
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a()Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b()Lcom/snapchat/android/ads/DiscoverAdPlacement;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->c:Lcom/snapchat/android/ads/AdManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;)V

    .line 216
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a(I)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b()Lcom/snapchat/android/ads/DiscoverAdPlacement;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->c:Lcom/snapchat/android/ads/AdManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ads/AdManager;->b(Lcom/snapchat/android/ads/AdPlacement;)V

    .line 169
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 5
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
    .line 283
    new-instance v1, Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 284
    const-string v0, "publisher_id"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "edition_id"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "dsnap_id"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    if-eqz p5, :cond_0

    .line 288
    const-string v0, "adsnap_id"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "ad_index_pos"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "ad_index_count"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    const-string v0, "content_index_count"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "content_index_pos"

    add-int/lit8 v2, p6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v2, "DISCOVER_%s_SCREENSHOT"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    const-string v0, "AD"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 297
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 298
    return-void

    .line 295
    :cond_1
    const-string v0, "SNAP"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/snapchat/android/discover/model/DSnapPanel$MediaType;IIII)V
    .locals 5
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
    .line 316
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-ne p6, v0, :cond_1

    const-string v0, "text"

    .line 319
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 320
    const-string v2, "publisher_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "edition_id"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "dsnap_id"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v2, "longform_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    if-eqz p5, :cond_0

    .line 325
    const-string v0, "adsnap_id"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, "ad_index_pos"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "ad_index_count"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    const-string v0, "content_index_count"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "content_index_pos"

    add-int/lit8 v2, p7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v2, "DISCOVER_%s_LONGFORM_SCREENSHOT"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p5, :cond_2

    const-string v0, "AD"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 334
    iget-object v2, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 335
    return-void

    .line 316
    :cond_1
    const-string v0, "video"

    goto :goto_0

    .line 332
    :cond_2
    const-string v0, "SNAP"

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_BRIGHTCOVE_ERROR"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "error_type"

    invoke-virtual {v0, v1, p6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    .line 397
    if-eqz p4, :cond_0

    .line 398
    const-string v1, "video_id"

    invoke-virtual {v0, v1, p4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 401
    :cond_0
    if-eqz p5, :cond_1

    .line 402
    const-string v1, "source"

    invoke-virtual {v0, v1, p5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 405
    :cond_1
    if-eqz p7, :cond_2

    .line 406
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 409
    :cond_2
    if-eqz p8, :cond_3

    .line 410
    const-string v1, "error_message"

    invoke-virtual {v0, v1, p8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 413
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 414
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_BAD_CHUNK_METADATA"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "publisher_name"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 350
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 258
    const-string v1, "publisher_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "edition_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "splash_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "content_index_count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "content_index_pos"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "DISCOVER_SPLASH_SCREENSHOT"

    .line 265
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v2, "DISCOVER_SPLASH_SCREENSHOT"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 266
    iget-object v1, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->b:Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;

    const-string v2, "DISCOVER_SPLASH_SCREENSHOT"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;->b()V

    .line 267
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;->a:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    const-string v1, "DISCOVER_BAD_CHUNK_DATA"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "dsnap_id"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "field"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 364
    return-void
.end method
