.class public Lcom/snapchat/android/analytics/framework/EasyMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;
    }
.end annotation


# static fields
.field private static e:I


# instance fields
.field protected a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:J

.field private final j:Lcom/snapchat/android/util/system/Clock;

.field private final k:Lcom/snapchat/android/model/StudySettings;

.field private final l:Lcom/snapchat/android/util/DeviceUtils;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x0

    new-instance v1, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v1}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v1}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/util/DeviceUtils;->a()Lcom/snapchat/android/util/DeviceUtils;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/StudySettings;Lcom/snapchat/android/util/DeviceUtils;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 67
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/DeviceUtils;->a()Lcom/snapchat/android/util/DeviceUtils;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/StudySettings;Lcom/snapchat/android/util/DeviceUtils;)V

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/StudySettings;Lcom/snapchat/android/util/DeviceUtils;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:J

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->m:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 73
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Lcom/snapchat/android/util/system/Clock;

    .line 74
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->k:Lcom/snapchat/android/model/StudySettings;

    .line 76
    iput-object p4, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->l:Lcom/snapchat/android/util/DeviceUtils;

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->c:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->d:Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 82
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 113
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:J

    .line 142
    return-object p0
.end method

.method public a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3
    .parameter

    .prologue
    .line 150
    const-string v0, "timeBucket"

    invoke-static {p1, p2}, Lcom/snapchat/android/util/NumberFormatUtils;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    const-string v1, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-object p0
.end method

.method public a(Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 165
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 95
    if-nez p1, :cond_0

    const-string p1, "NULL - ANALYTICS ERROR"

    .line 97
    :cond_0
    if-nez p2, :cond_1

    const-string p2, "null"

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:Ljava/util/Map;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;"
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0

    .line 109
    :cond_0
    return-object p0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 227
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "EasyMetric"

    const-string v1, "User is logged into SnapKidz. Aborting logging action."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    return-void

    .line 197
    :cond_1
    sget v0, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:I

    .line 199
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 203
    :cond_2
    const-string v0, "study_settings"

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->k:Lcom/snapchat/android/model/StudySettings;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StudySettings;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    const-string v0, "year_class"

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->l:Lcom/snapchat/android/util/DeviceUtils;

    invoke-virtual {v1}, Lcom/snapchat/android/util/DeviceUtils;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No event name has been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_3
    const-string v0, "EasyMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRACE - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    const-string v0, "EasyMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRACE - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/snapchat/android/analytics/framework/EasyMetric;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;

    .line 214
    instance-of v2, v0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->h:Ljava/util/Map;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatform;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
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
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/snapchat/android/analytics/framework/EasyMetric;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->g:Ljava/util/Map;

    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0

    .line 127
    :cond_1
    return-object p0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->j:Lcom/snapchat/android/util/system/Clock;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 189
    return-void
.end method
