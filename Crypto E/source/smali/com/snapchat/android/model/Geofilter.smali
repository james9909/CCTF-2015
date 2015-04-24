.class public Lcom/snapchat/android/model/Geofilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mExpirationTime:J

.field private final mFilterId:Ljava/lang/String;

.field private final mGeofence:Lcom/snapchat/android/util/Geofence;

.field private final mImageUrl:Ljava/lang/String;

.field private final mLayoutGravity:I

.field private final mLayoutScaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->getFilterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mFilterId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mImageUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->getExpirationTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Geofilter;->mExpirationTime:J

    .line 36
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->getGeofence()Lcom/snapchat/android/model/server/ServerGeofence;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mGeofence:Lcom/snapchat/android/util/Geofence;

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->getLayoutScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mLayoutScaleType:Landroid/widget/ImageView$ScaleType;

    .line 43
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->getLayoutGravity()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/Geofilter;->mLayoutGravity:I

    .line 44
    return-void

    .line 40
    :cond_0
    new-instance v1, Lcom/snapchat/android/util/Geofence;

    invoke-direct {v1, v0}, Lcom/snapchat/android/util/Geofence;-><init>(Lcom/snapchat/android/model/server/ServerGeofence;)V

    iput-object v1, p0, Lcom/snapchat/android/model/Geofilter;->mGeofence:Lcom/snapchat/android/util/Geofence;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/model/Geofilter;->mBitmap:Landroid/graphics/Bitmap;

    .line 82
    return-void
.end method

.method public a(Landroid/location/Location;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mGeofence:Lcom/snapchat/android/util/Geofence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mGeofence:Lcom/snapchat/android/util/Geofence;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/Geofence;->a(Landroid/location/Location;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/location/Location;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 65
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/model/Geofilter;->mExpirationTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 73
    :cond_1
    :goto_0
    return v0

    .line 71
    :cond_2
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/Geofilter;->a(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView$ScaleType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/model/Geofilter;->mLayoutScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/snapchat/android/model/Geofilter;->mLayoutGravity:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 96
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 98
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Geofilter;

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/Geofilter;

    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/model/Geofilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Geofilter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/snapchat/android/model/Geofilter;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
