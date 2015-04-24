.class public Lcom/snapchat/android/ads/AdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ads/AdManager$AdResponseController;
    }
.end annotation


# static fields
.field private static final b:Lcom/snapchat/android/ads/AdManager;

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/ads/AdManager$AdResponseController;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final f:Lcom/snapchat/android/ads/AdManagerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/snapchat/android/ads/AdManager;

    invoke-direct {v0}, Lcom/snapchat/android/ads/AdManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/ads/AdManager;->b:Lcom/snapchat/android/ads/AdManager;

    .line 55
    const-string v0, "(?i)<html><body[^>]*>(.*)</body></html>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ads/AdManager;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/snapchat/android/ads/AdManagerConfiguration;

    invoke-direct {v0}, Lcom/snapchat/android/ads/AdManagerConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/ads/AdManager;-><init>(Lcom/snapchat/android/ads/AdManagerConfiguration;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/ads/AdManagerConfiguration;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/ads/AdManager;->d:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    .line 66
    new-instance v0, Lcom/snapchat/android/ads/AdManager$1;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdManagerConfiguration;->e()I

    move-result v1

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/snapchat/android/ads/AdManager$1;-><init>(Lcom/snapchat/android/ads/AdManager;IFZ)V

    iput-object v0, p0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public static a()Lcom/snapchat/android/ads/AdManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/snapchat/android/ads/AdManager;->b:Lcom/snapchat/android/ads/AdManager;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ads/AdManager;)Lcom/snapchat/android/ads/AdManagerConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    return-object v0
.end method

.method static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/android/ads/AdManager;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager;->c:Landroid/content/Context;

    .line 100
    return-void
.end method

.method public a(Lcom/snapchat/android/ads/AdPlacement;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 135
    const-string v0, "AdManager"

    const-string v1, "BeginAdSplash for adKey: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)V

    .line 142
    return-void
.end method

.method public a(Lcom/snapchat/android/ads/AdPlacement;J)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "AdManager"

    const-string v2, "EndAdSplash for adKey:%s, viewTime:%s ms"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdManagerConfiguration;->c()J

    move-result-wide v2

    .line 153
    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->d:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/ads/AdManager$3;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ads/AdManager$3;-><init>(Lcom/snapchat/android/ads/AdManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v1, "AdManager"

    const-string v4, "endAdSplash(%s,%d) not shown long enough %d for recordImpression"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ads/AdPlacement;JZ)V
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "AdManager"

    const-string v2, "endAdView for adKey:%s, viewTime:%s ms"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    invoke-virtual {v1}, Lcom/snapchat/android/ads/AdManagerConfiguration;->d()J

    move-result-wide v2

    .line 192
    if-nez p4, :cond_0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_1

    .line 193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ads/AdManager;->a(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v1, "AdManager"

    const-string v4, "endAdView(%s,%d) not shown long enough %d for recordImpression"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 111
    const-string v0, "AdManager"

    const-string v1, "Begin transform ad placeholder %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager;->d:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/ads/AdManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/ads/AdManager$2;-><init>(Lcom/snapchat/android/ads/AdManager;Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/AdManager$AdResponseController;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, "AdManager"

    const-string v1, "No controller for recordImpression on %s, probably duplicate call"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/AdManager$AdResponseController;

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p2}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method protected b()Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    .line 220
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)Lcom/snapchat/android/ads/AdManager$AdResponseController;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "Controller already exists in prepareAdResponseController for adPlaceholder: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ads/AdManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ads/AdManager;->b()Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    .line 233
    const-string v1, "snapchat"

    iget-object v2, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    invoke-virtual {v2}, Lcom/snapchat/android/ads/AdManagerConfiguration;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/snapchat/android/ads/AdPlacement;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 234
    new-array v1, v4, [Lcom/google/android/gms/ads/AdSize;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 236
    new-instance v1, Lcom/snapchat/android/ads/AdManager$AdResponseController;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;-><init>(Lcom/snapchat/android/ads/AdManager;Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-object v1
.end method

.method public b(Lcom/snapchat/android/ads/AdPlacement;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->a()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "AdManager"

    const-string v2, "beginAdView for adKey:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const-string v1, "AdManager"

    const-string v2, "WARNING: beginAdView called without a controller for adKey:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void
.end method

.method protected c(Lcom/snapchat/android/ads/AdPlacement;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 248
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 250
    invoke-virtual {p1}, Lcom/snapchat/android/ads/AdPlacement;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 252
    new-instance v2, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    .line 255
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)Lcom/snapchat/android/ads/AdManager$AdResponseController;
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
    .line 261
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager;->f:Lcom/snapchat/android/ads/AdManagerConfiguration;

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdManagerConfiguration;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AdManager is not currently active!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ads/AdManager;->b(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)Lcom/snapchat/android/ads/AdManager$AdResponseController;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ads/AdManager;->c(Lcom/snapchat/android/ads/AdPlacement;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v1

    .line 271
    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->a()Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 273
    :cond_1
    return-object v0
.end method
