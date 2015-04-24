.class public Lcom/snapchat/android/model/WeatherData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCATION_CACHE_DISTANCE_MILES:I = 0x5

.field public static final LOCATION_CACHE_LIFETIME_MILLIS:I = 0x124f80

.field public static final METERS_PER_MILE:F = 1609.34f


# instance fields
.field private final mLastLocation:Landroid/location/Location;

.field private final mTempC:Ljava/lang/String;

.field private final mTempF:Ljava/lang/String;

.field private final mTimeLastRequested:J


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/WeatherResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/WeatherResponse;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/WeatherData;->mTimeLastRequested:J

    .line 22
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/WeatherResponse;->getFahrenheit()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mTempF:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/WeatherResponse;->getCelsius()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mTempC:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mLastLocation:Landroid/location/Location;

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/WeatherResponse;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/WeatherResponse;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mTempC:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/location/Location;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/model/WeatherData;->mTimeLastRequested:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v9

    .line 52
    :goto_0
    return v0

    .line 45
    :cond_1
    new-array v8, v9, [F

    .line 46
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/snapchat/android/model/WeatherData;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/snapchat/android/model/WeatherData;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 48
    aget v0, v8, v10

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x45fb7599

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    move v0, v9

    .line 49
    goto :goto_0

    :cond_2
    move v0, v10

    .line 52
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/model/WeatherData;->mTempF:Ljava/lang/String;

    return-object v0
.end method
