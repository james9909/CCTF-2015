.class public final Lcrittercism/android/ce;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcrittercism/android/au;)V
    .locals 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    .line 32
    iget-object v0, p0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {p1}, Lcrittercism/android/au;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    const-string v1, "hashed_device_id"

    invoke-interface {p1}, Lcrittercism/android/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    const-string v1, "library_version"

    const-string v2, "4.5.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcrittercism/android/ce;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)Lcrittercism/android/ce;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/ce;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0
.end method
