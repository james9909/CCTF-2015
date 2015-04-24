.class public Lcom/snapchat/android/location/LocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/location/LocationProvider;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Landroid/location/LocationManager;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/snapchat/android/location/FusedLocationProvider;


# direct methods
.method protected constructor <init>(Landroid/location/LocationManager;Lcom/snapchat/android/location/FusedLocationProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p1}, Lcom/snapchat/android/location/LocationProvider;->a(Landroid/location/LocationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/location/LocationProvider;-><init>(Landroid/location/LocationManager;Lcom/snapchat/android/location/FusedLocationProvider;Ljava/util/List;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/location/LocationManager;Lcom/snapchat/android/location/FusedLocationProvider;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Lcom/snapchat/android/location/FusedLocationProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/location/LocationListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/location/LocationProvider;->c:Landroid/location/LocationManager;

    .line 30
    iput-object p3, p0, Lcom/snapchat/android/location/LocationProvider;->d:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/location/LocationProvider;->e:Lcom/snapchat/android/location/FusedLocationProvider;

    .line 32
    return-void
.end method

.method public static a()Lcom/snapchat/android/location/LocationProvider;
    .locals 4

    .prologue
    .line 47
    sget-object v0, Lcom/snapchat/android/location/LocationProvider;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Location manager has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sget-object v0, Lcom/snapchat/android/location/LocationProvider;->a:Lcom/snapchat/android/location/LocationProvider;

    if-nez v0, :cond_1

    .line 51
    new-instance v1, Lcom/snapchat/android/location/LocationProvider;

    sget-object v0, Lcom/snapchat/android/location/LocationProvider;->b:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Lcom/snapchat/android/location/FusedLocationProvider;

    sget-object v3, Lcom/snapchat/android/location/LocationProvider;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/snapchat/android/location/FusedLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/snapchat/android/location/LocationProvider;-><init>(Landroid/location/LocationManager;Lcom/snapchat/android/location/FusedLocationProvider;)V

    sput-object v1, Lcom/snapchat/android/location/LocationProvider;->a:Lcom/snapchat/android/location/LocationProvider;

    .line 54
    :cond_1
    sget-object v0, Lcom/snapchat/android/location/LocationProvider;->a:Lcom/snapchat/android/location/LocationProvider;

    return-object v0
.end method

.method protected static a(Landroid/location/LocationManager;)Ljava/util/ArrayList;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "network"

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v1, "gps"

    aput-object v1, v4, v0

    .line 102
    :try_start_0
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_0

    .line 106
    new-instance v6, Lcom/snapchat/android/location/LocationListener;

    invoke-direct {v6, v0, p0}, Lcom/snapchat/android/location/LocationListener;-><init>(Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    const-string v6, "LocationManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    const-string v1, "LocationManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_2
    return-object v3

    .line 110
    :catch_2
    move-exception v0

    .line 111
    :try_start_3
    const-string v6, "LocationManager"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 116
    :cond_1
    new-instance v0, Lcom/snapchat/android/location/LocationListener;

    const-string v1, "passive"

    invoke-direct {v0, v1, p0}, Lcom/snapchat/android/location/LocationListener;-><init>(Ljava/lang/String;Landroid/location/LocationManager;)V

    .line 118
    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationListener;->c()V

    .line 119
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    sput-object p0, Lcom/snapchat/android/location/LocationProvider;->b:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "LocationManager"

    const-string v1, "Start tracking!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/location/LocationProvider;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/location/LocationListener;

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationListener;->c()V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 71
    const-string v0, "LocationManager"

    const-string v1, "Stop tracking!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/location/LocationProvider;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/location/LocationListener;

    .line 73
    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationListener;->b()V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public d()Landroid/location/Location;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/location/LocationProvider;->e:Lcom/snapchat/android/location/FusedLocationProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/FusedLocationProvider;->a()Landroid/location/Location;

    move-result-object v1

    .line 83
    const-string v2, "LocationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location from device is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v0, "Null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/location/LocationProvider;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/location/LocationListener;

    .line 85
    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationListener;->a()Landroid/location/Location;

    move-result-object v2

    .line 86
    if-eqz v1, :cond_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 89
    :cond_0
    const-string v1, "LocationManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location has been updated to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_2

    const-string v0, "Null"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    :goto_3
    move-object v1, v0

    .line 91
    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 92
    :cond_3
    return-object v1

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method
