.class public final Lcrittercism/android/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bl;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bk;->a:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/bm;)Lcrittercism/android/bk;
    .locals 3
    .parameter

    .prologue
    .line 18
    invoke-interface {p1}, Lcrittercism/android/bm;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcrittercism/android/bk;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcrittercism/android/bm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcrittercism/android/bm;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    return-object p0
.end method

.method public final a()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcrittercism/android/bk;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcrittercism/android/bk;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
