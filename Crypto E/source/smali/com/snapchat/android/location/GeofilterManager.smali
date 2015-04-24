.class public Lcom/snapchat/android/location/GeofilterManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;


# static fields
.field private static c:Lcom/snapchat/android/location/GeofilterManager;


# instance fields
.field protected a:Lcom/snapchat/android/location/GeofilterRequest;

.field protected b:Lcom/snapchat/android/location/GeofilterRequest;

.field private final d:Lcom/snapchat/android/location/LocationProvider;

.field private final e:Lcom/snapchat/android/model/StoryLibrary;

.field private final f:Lcom/snapchat/android/location/GeofilterImageManager;

.field private final g:Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;

.field private final h:Lcom/snapchat/android/util/debug/ExceptionReporter;

.field private i:Z

.field private j:Lcom/snapchat/android/model/WeatherData;

.field private k:Lcom/snapchat/android/model/PostToStory;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/location/LocationProvider;->a()Lcom/snapchat/android/location/LocationProvider;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/location/GeofilterImageManager;->a()Lcom/snapchat/android/location/GeofilterImageManager;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;

    invoke-direct {v4}, Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;-><init>()V

    new-instance v5, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v5}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/location/GeofilterManager;-><init>(Lcom/snapchat/android/location/LocationProvider;Lcom/snapchat/android/model/StoryLibrary;Lcom/snapchat/android/location/GeofilterImageManager;Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;Lcom/snapchat/android/util/debug/ExceptionReporter;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/location/LocationProvider;Lcom/snapchat/android/model/StoryLibrary;Lcom/snapchat/android/location/GeofilterImageManager;Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;Lcom/snapchat/android/util/debug/ExceptionReporter;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/location/GeofilterManager;->i:Z

    .line 40
    iput-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->j:Lcom/snapchat/android/model/WeatherData;

    .line 41
    iput-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->k:Lcom/snapchat/android/model/PostToStory;

    .line 57
    iput-object p1, p0, Lcom/snapchat/android/location/GeofilterManager;->d:Lcom/snapchat/android/location/LocationProvider;

    .line 58
    iput-object p2, p0, Lcom/snapchat/android/location/GeofilterManager;->e:Lcom/snapchat/android/model/StoryLibrary;

    .line 59
    iput-object p3, p0, Lcom/snapchat/android/location/GeofilterManager;->f:Lcom/snapchat/android/location/GeofilterImageManager;

    .line 60
    iput-object p4, p0, Lcom/snapchat/android/location/GeofilterManager;->g:Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;

    .line 61
    iput-object p5, p0, Lcom/snapchat/android/location/GeofilterManager;->h:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 62
    sput-object p0, Lcom/snapchat/android/location/GeofilterManager;->c:Lcom/snapchat/android/location/GeofilterManager;

    .line 63
    return-void
.end method

.method public static a()Lcom/snapchat/android/location/GeofilterManager;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/location/GeofilterManager;->c:Lcom/snapchat/android/location/GeofilterManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/snapchat/android/location/GeofilterManager;

    invoke-direct {v0}, Lcom/snapchat/android/location/GeofilterManager;-><init>()V

    .line 72
    :cond_0
    sget-object v0, Lcom/snapchat/android/location/GeofilterManager;->c:Lcom/snapchat/android/location/GeofilterManager;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    iget-object v1, v1, Lcom/snapchat/android/location/GeofilterRequest;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    iget-object v1, v1, Lcom/snapchat/android/location/GeofilterRequest;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    iget-wide v4, v1, Lcom/snapchat/android/location/GeofilterRequest;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/PostToStory;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/snapchat/android/location/GeofilterManager;->k:Lcom/snapchat/android/model/PostToStory;

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->e:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/StoryLibrary;->a(Lcom/snapchat/android/model/PostToStory;)V

    .line 191
    return-void
.end method

.method public a(Lcom/snapchat/android/model/WeatherData;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snapchat/android/location/GeofilterManager;->j:Lcom/snapchat/android/model/WeatherData;

    .line 148
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Geofilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    if-nez v0, :cond_1

    .line 156
    const-string v0, "GeofilterManager"

    const-string v1, "There should not be a respones here"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v0, Lcom/snapchat/android/analytics/handledexceptions/GeofilterRequestException;

    const-string v1, "No pending request but processing a geofilter response"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/handledexceptions/GeofilterRequestException;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->h:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string v0, "GeofilterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have new geofilters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/location/GeofilterRequest;->a(Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    iput-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->f:Lcom/snapchat/android/location/GeofilterImageManager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/location/GeofilterImageManager;->a(Ljava/util/List;)V

    .line 170
    iget-boolean v0, p0, Lcom/snapchat/android/location/GeofilterManager;->i:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/snapchat/android/location/GeofilterManager;->c()V

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Geofilter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const-string v1, "GeofilterManager"

    const-string v2, "Checking for current geofilters"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    if-nez v1, :cond_0

    .line 84
    const-string v1, "GeofilterManager"

    const-string v2, "No current geofilters"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    iget-wide v4, v1, Lcom/snapchat/android/location/GeofilterRequest;->b:J

    sub-long/2addr v2, v4

    .line 89
    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 90
    const-string v1, "GeofilterManager"

    const-string v2, "geofilters are stale. Returning empty set"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    invoke-virtual {v1}, Lcom/snapchat/android/location/GeofilterRequest;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 95
    const-string v1, "GeofilterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "have valid geofilters. Returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    invoke-virtual {v3}, Lcom/snapchat/android/location/GeofilterRequest;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized c()V
    .locals 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->d:Lcom/snapchat/android/location/LocationProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationProvider;->d()Landroid/location/Location;

    move-result-object v0

    .line 104
    const-string v1, "GeofilterManager"

    const-string v2, "App is requestion to update geofilters"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-nez v0, :cond_0

    .line 106
    const-string v0, "GeofilterManager"

    const-string v1, "No location to update with"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/snapchat/android/location/GeofilterManager;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    iget-object v2, v2, Lcom/snapchat/android/location/GeofilterRequest;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/location/GeofilterManager;->i:Z

    .line 113
    const-string v0, "GeofilterManager"

    const-string v1, "Pending request but have better location now"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/snapchat/android/location/GeofilterManager;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const-string v0, "GeofilterManager"

    const-string v1, "Pending request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-direct {p0, v0}, Lcom/snapchat/android/location/GeofilterManager;->a(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    const-string v0, "GeofilterManager"

    const-string v1, "New geofilters would not be better"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_3
    const-string v1, "GeofilterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating request with location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/snapchat/android/location/GeofilterManager;->i:Z

    .line 125
    new-instance v1, Lcom/snapchat/android/location/GeofilterRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/snapchat/android/location/GeofilterRequest;-><init>(Landroid/location/Location;J)V

    iput-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->a:Lcom/snapchat/android/location/GeofilterRequest;

    .line 126
    new-instance v1, Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/api2/GetLocationDataTask;-><init>(Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;Landroid/location/Location;)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->g:Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/framework/HyperRequestTaskExecutor;->a(Lcom/snapchat/android/api2/framework/HyperRequestTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public d()Lcom/snapchat/android/model/WeatherData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->j:Lcom/snapchat/android/model/WeatherData;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/snapchat/android/location/GeofilterManager;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iput-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->j:Lcom/snapchat/android/model/WeatherData;

    .line 209
    iput-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->k:Lcom/snapchat/android/model/PostToStory;

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/location/GeofilterManager;->e:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->a(Lcom/snapchat/android/model/PostToStory;)V

    .line 211
    iput-object v1, p0, Lcom/snapchat/android/location/GeofilterManager;->b:Lcom/snapchat/android/location/GeofilterRequest;

    .line 212
    return-void
.end method
