.class public final Lcrittercism/android/dc$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcrittercism/android/aw;Ljava/lang/String;Ljava/lang/String;)Lcrittercism/android/dc;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-interface {p0, p1, p2}, Lcrittercism/android/aw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 61
    :goto_1
    if-eqz v1, :cond_1

    new-instance v0, Lcrittercism/android/dc;

    invoke-direct {v0, v1}, Lcrittercism/android/dc;-><init>(Lorg/json/JSONObject;)V

    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-static {}, Lcrittercism/android/dg;->b()V

    goto :goto_1

    .line 61
    :cond_1
    new-instance v0, Lcrittercism/android/dc;

    invoke-direct {v0}, Lcrittercism/android/dc;-><init>()V

    goto :goto_2
.end method
