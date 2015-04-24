.class public Lcom/snapchat/android/util/Geofence;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/snapchat/android/util/PointD;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/ServerGeofence;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/ServerGeofence;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/Geofence;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/ServerGeofence;->getCoordinates()[Lcom/snapchat/android/model/server/ServerGeofence$Coordinate;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/snapchat/android/util/PointD;

    iput-object v0, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    .line 17
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/ServerGeofence;->getCoordinates()[Lcom/snapchat/android/model/server/ServerGeofence$Coordinate;

    move-result-object v1

    aget-object v1, v1, v0

    .line 19
    iget-object v2, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    new-instance v3, Lcom/snapchat/android/util/PointD;

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/ServerGeofence$Coordinate;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/ServerGeofence$Coordinate;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/snapchat/android/util/PointD;-><init>(DD)V

    aput-object v3, v2, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/util/PointD;Lcom/snapchat/android/util/PointD;)D
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const-wide v6, 0x401921fb54442d18L

    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/util/PointD;->b()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/PointD;->a()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 54
    invoke-virtual {p2}, Lcom/snapchat/android/util/PointD;->b()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/snapchat/android/util/PointD;->a()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 55
    sub-double v0, v2, v0

    .line 58
    rem-double/2addr v0, v6

    .line 59
    const-wide v2, 0x400921fb54442d18L

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 60
    sub-double/2addr v0, v6

    .line 65
    :cond_0
    :goto_0
    return-wide v0

    .line 61
    :cond_1
    const-wide v2, -0x3ff6de04abbbd2e8L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 62
    add-double/2addr v0, v6

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/location/Location;)Z
    .locals 12
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    const-wide/16 v2, 0x0

    move v0, v1

    .line 34
    :goto_0
    iget-object v4, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    aget-object v4, v4, v0

    .line 36
    iget-object v5, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/snapchat/android/util/Geofence;->b:[Lcom/snapchat/android/util/PointD;

    array-length v7, v7

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    .line 38
    invoke-virtual {v4}, Lcom/snapchat/android/util/PointD;->a()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 39
    invoke-virtual {v4}, Lcom/snapchat/android/util/PointD;->b()D

    move-result-wide v8

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 40
    new-instance v4, Lcom/snapchat/android/util/PointD;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/snapchat/android/util/PointD;-><init>(DD)V

    .line 42
    invoke-virtual {v5}, Lcom/snapchat/android/util/PointD;->a()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    .line 43
    invoke-virtual {v5}, Lcom/snapchat/android/util/PointD;->b()D

    move-result-wide v8

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 44
    new-instance v5, Lcom/snapchat/android/util/PointD;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/snapchat/android/util/PointD;-><init>(DD)V

    .line 46
    invoke-direct {p0, v4, v5}, Lcom/snapchat/android/util/Geofence;->a(Lcom/snapchat/android/util/PointD;Lcom/snapchat/android/util/PointD;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
