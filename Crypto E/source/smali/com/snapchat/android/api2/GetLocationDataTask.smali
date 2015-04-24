.class public Lcom/snapchat/android/api2/GetLocationDataTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;,
        Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;,
        Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;,
        Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MAX_GEO_FILTERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GetLocationDataTask"


# instance fields
.field private final mCallback:Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;

.field private final mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;Landroid/location/Location;)V
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
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mCallback:Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;

    .line 53
    iput-object p2, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mLocation:Landroid/location/Location;

    .line 55
    const-class v0, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/GetLocationDataTask;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 124
    const-string v0, "GetLocationDataTask"

    const-string v1, "LocationResponsePayload was null"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;->weather:Lcom/snapchat/android/model/server/WeatherResponse;

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "GetLocationDataTask"

    const-string v1, "Updating Weather"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mCallback:Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;

    new-instance v1, Lcom/snapchat/android/model/WeatherData;

    iget-object v2, p1, Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;->weather:Lcom/snapchat/android/model/server/WeatherResponse;

    invoke-direct {v1, v2}, Lcom/snapchat/android/model/WeatherData;-><init>(Lcom/snapchat/android/model/server/WeatherResponse;)V

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;->a(Lcom/snapchat/android/model/WeatherData;)V

    .line 133
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;->filters:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v0, p1, Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/GeofilterResponse;

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_5

    .line 141
    :cond_3
    const-string v0, "GetLocationDataTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating geofilters with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " geofilters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mCallback:Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;->a(Ljava/util/List;)V

    .line 145
    :cond_4
    iget-object v0, p1, Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;->local_story:Lcom/snapchat/android/model/PostToStory;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "GetLocationDataTask"

    const-string v1, "Updating Shared stories"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mCallback:Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;

    iget-object v1, p1, Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;->local_story:Lcom/snapchat/android/model/PostToStory;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/GetLocationDataTask$GetLocationDataTaskCallback;->a(Lcom/snapchat/android/model/PostToStory;)V

    goto :goto_0

    .line 139
    :cond_5
    new-instance v3, Lcom/snapchat/android/model/Geofilter;

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/Geofilter;-><init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/api2/GetLocationDataTask;Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/GetLocationDataTask;)Lcom/snapchat/android/model/User;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mUser:Lcom/snapchat/android/model/User;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/api2/GetLocationDataTask;)Lcom/snapchat/android/model/User;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask;->mUser:Lcom/snapchat/android/model/User;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    new-instance v1, Lcom/snapchat/android/api2/GetLocationDataTask$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/api2/GetLocationDataTask$1;-><init>(Lcom/snapchat/android/api2/GetLocationDataTask;Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/api2/GetLocationDataTask;->e()Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/loq/local_story"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/GetLocationDataTask;)V

    return-object v0
.end method
