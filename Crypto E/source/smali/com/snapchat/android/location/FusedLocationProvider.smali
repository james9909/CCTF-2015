.class public Lcom/snapchat/android/location/FusedLocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final b:Lcom/snapchat/android/location/FusedLocationApiWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/location/FusedLocationApiWrapper;

    invoke-direct {v1}, Lcom/snapchat/android/location/FusedLocationApiWrapper;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/location/FusedLocationProvider;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/snapchat/android/location/FusedLocationApiWrapper;)V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/snapchat/android/location/FusedLocationApiWrapper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/location/FusedLocationProvider;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/location/FusedLocationProvider;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/location/FusedLocationProvider;->b:Lcom/snapchat/android/location/FusedLocationApiWrapper;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/snapchat/android/location/FusedLocationProvider;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/location/FusedLocationProvider;->b:Lcom/snapchat/android/location/FusedLocationApiWrapper;

    iget-object v2, p0, Lcom/snapchat/android/location/FusedLocationProvider;->a:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/location/FusedLocationApiWrapper;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 43
    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
